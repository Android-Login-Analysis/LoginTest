import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.net.http.WebSocket;
import java.time.Duration;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * FIX(v1): drives login forms rendered inside WebViews through the Chrome DevTools protocol.
 * Some apps hide WebView content from the accessibility tree (uiautomator sees nothing), and many SSO
 * logins (Google, Facebook, Twitch) are web pages. Debugging is enabled from the Frida agent
 * (WebView.setWebContentsDebuggingEnabled(true)); the socket "webview_devtools_remote_<pid>" is
 * forwarded with adb and pages are inspected/driven with Runtime.evaluate.
 */
public final class WebViewBridge {
    private final String pkg;
    private int port = -1;
    private int forwardedPid = -1;
    private final HttpClient http = HttpClient.newBuilder().connectTimeout(Duration.ofSeconds(5)).build();
    private int msgId = 0;

    public WebViewBridge(String pkg) { this.pkg = pkg; }

    // ------------------------------------------------------------------ plumbing
    private boolean ensureForward() {
        String pid = AppLauncher.run("adb", "shell", "pidof", pkg).trim().split("\\s+")[0];
        if (pid.isEmpty()) return false;
        int p = Integer.parseInt(pid);
        if (p == forwardedPid && port > 0) return true;
        String unix = AppLauncher.run("adb", "shell", "cat", "/proc/net/unix");
        if (!unix.contains("webview_devtools_remote_" + p)) return false;
        String out = AppLauncher.run("adb", "forward", "tcp:0", "localabstract:webview_devtools_remote_" + p).trim();
        try {
            port = Integer.parseInt(out.split("\\s+")[0]);
            forwardedPid = p;
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /** WebSocket URL of the visible, attached page (most recent first). */
    private String pageSocket() {
        try {
            HttpRequest req = HttpRequest.newBuilder(URI.create("http://127.0.0.1:" + port + "/json")).timeout(Duration.ofSeconds(5)).build();
            String body = http.send(req, HttpResponse.BodyHandlers.ofString()).body();
            String best = null;
            Matcher m = Pattern.compile("\\{[^{}]*?\"description\":\\s*\"((?:[^\"\\\\]|\\\\.)*)\"[^{}]*?\"webSocketDebuggerUrl\":\\s*\"([^\"]+)\"[^{}]*?\\}", Pattern.DOTALL).matcher(body);
            while (m.find()) {
                String desc = m.group(1).replace("\\\"", "\"");
                String ws = m.group(2);
                boolean visible = desc.contains("\"visible\":true");
                boolean attached = desc.contains("\"attached\":true");
                if (visible && attached) return ws;
                if (best == null && attached) best = ws;
            }
            if (best == null) {
                Matcher any = Pattern.compile("\"webSocketDebuggerUrl\":\\s*\"([^\"]+)\"").matcher(body);
                if (any.find()) best = any.group(1);
            }
            return best;
        } catch (Exception e) {
            return null;
        }
    }

    /** Evaluate JS in the visible page; returns the string result or null. */
    public synchronized String eval(String js) {
        String resp = call("Runtime.evaluate", "{\"expression\":" + jsonString(js) + ",\"returnByValue\":true,\"awaitPromise\":true}");
        if (resp == null) return null;
        Matcher v = Pattern.compile("\"value\":\\s*\"((?:[^\"\\\\]|\\\\.)*)\"").matcher(resp);
        if (v.find()) return unescape(v.group(1));
        Matcher b = Pattern.compile("\"value\":\\s*(true|false|-?[0-9.]+)").matcher(resp);
        return b.find() ? b.group(1) : null;
    }

    /** Send one DevTools command to the visible page and return the raw JSON response. */
    public synchronized String call(String method, String paramsJson) {
        if (!ensureForward()) return null;
        String ws = pageSocket();
        if (ws == null) return null;
        CompletableFuture<String> result = new CompletableFuture<>();
        StringBuilder buf = new StringBuilder();
        int id = ++msgId;
        try {
            WebSocket socket = http.newWebSocketBuilder().buildAsync(URI.create(ws), new WebSocket.Listener() {
                @Override public CompletionStage<?> onText(WebSocket w, CharSequence data, boolean last) {
                    buf.append(data);
                    if (last) {
                        String msg = buf.toString();
                        buf.setLength(0);
                        if (msg.contains("\"id\":" + id)) result.complete(msg);
                    }
                    w.request(1);
                    return null;
                }
                @Override public void onError(WebSocket w, Throwable t) { result.completeExceptionally(t); }
            }).get(5, TimeUnit.SECONDS);
            String payload = "{\"id\":" + id + ",\"method\":\"" + method + "\",\"params\":" + paramsJson + "}";
            socket.sendText(payload, true);
            String resp = result.get(10, TimeUnit.SECONDS);
            socket.sendClose(WebSocket.NORMAL_CLOSURE, "").exceptionally(t -> null);
            return resp;
        } catch (Exception e) {
            return null;
        }
    }

    private static String jsonString(String s) {
        StringBuilder b = new StringBuilder("\"");
        for (char c : s.toCharArray()) {
            switch (c) {
                case '"': b.append("\\\""); break;
                case '\\': b.append("\\\\"); break;
                case '\n': b.append("\\n"); break;
                case '\r': break;
                case '\t': b.append("\\t"); break;
                default:
                    if (c < 0x20) b.append(String.format("\\u%04x", (int) c)); else b.append(c);
            }
        }
        return b.append('"').toString();
    }

    private static String unescape(String s) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '\\' && i + 1 < s.length()) {
                char n = s.charAt(++i);
                switch (n) {
                    case 'n': b.append('\n'); break;
                    case 't': b.append('\t'); break;
                    case 'u': b.append((char) Integer.parseInt(s.substring(i + 1, i + 5), 16)); i += 4; break;
                    default: b.append(n);
                }
            } else b.append(c);
        }
        return b.toString();
    }

    // ------------------------------------------------------------------ page model
    private static final String VISIBLE_FN =
        "function vis(e){const r=e.getBoundingClientRect();const s=getComputedStyle(e);" +
        "return r.width>2&&r.height>2&&s.visibility!=='hidden'&&s.display!=='none'&&r.bottom>0&&r.top<innerHeight;}";

    /** Summary: "pw=<n>;id=<n>;btn=<label>;err=<text>;url=<url>;busy=<bool>". */
    public Map<String, String> inspect() {
        String js = "(()=>{" + VISIBLE_FN +
            "const ins=[...document.querySelectorAll('input,textarea')].filter(vis);" +
            "const pw=ins.filter(e=>e.type==='password');" +
            "const ids=ins.filter(e=>['text','email','tel','number',''].includes(e.type)&&!e.readOnly);" +
            "const idb=ids.filter(e=>!pw[0]||e.compareDocumentPosition(pw[0])&Node.DOCUMENT_POSITION_FOLLOWING);const idf=idb.length?idb[idb.length-1]:ids[0];" +
            "const btns=[...document.querySelectorAll('button,input[type=submit],[role=button],a')].filter(vis);" +
            "const lbl=b=>(b.innerText||b.value||b.getAttribute('aria-label')||'').trim().slice(0,40);" +
            "const sub=btns.find(b=>/^(log ?in|sign ?in|next|continue|submit|weiter|connexion)$/i.test(lbl(b)));" +
            "const errEl=[...document.querySelectorAll('[role=alert],[aria-live],.error,[class*=error],[id*=error]')].filter(vis).filter(e=>!e.closest('select,[role=listbox],[role=combobox],[role=menu],[aria-haspopup]')&&!e.querySelector('select,[role=listbox],[role=combobox]')).map(e=>e.innerText.trim()).filter(t=>t.length>3&&t.length<200&&!/^(english|deutsch|español|français|italiano|português|日本語|中文|한국어)\\b/i.test(t));" +
            "const busy=!!(sub&&(sub.disabled||sub.getAttribute('aria-busy')==='true'||sub.getAttribute('aria-disabled')==='true'))||[...document.querySelectorAll('[role=progressbar],progress')].some(vis);" +
            "return ['pw='+pw.length,'id='+ids.length,'btn='+(sub?lbl(sub):''),'err='+(errEl[0]||'').replace(/[;\\n]/g,' '),'url='+location.href.slice(0,200),'busy='+busy," +
            "'pwval='+(pw[0]?pw[0].value.length:0),'idval='+(idf?idf.value.length:0)].join(';');})()";
        String r = eval(js);
        Map<String, String> m = new HashMap<>();
        if (r == null) return m;
        for (String part : r.split(";")) {
            int i = part.indexOf('=');
            if (i > 0) m.put(part.substring(0, i), part.substring(i + 1));
        }
        return m;
    }

    public boolean hasPasswordField() {
        Map<String, String> m = inspect();
        return !m.isEmpty() && !"0".equals(m.get("pw"));
    }

    public boolean hasIdentifierOnly() {
        Map<String, String> m = inspect();
        return !m.isEmpty() && "0".equals(m.get("pw")) && !"0".equals(m.getOrDefault("id", "0")) && !m.getOrDefault("btn", "").isEmpty();
    }

    /** Focus an element chosen by JS ('id' or 'pw'), clear it and type text with trusted input events. */
    private boolean typeInto(String which, String text) {
        if (text == null || text.isEmpty()) return false;
        String js = "(()=>{" + VISIBLE_FN +
            "const ins=[...document.querySelectorAll('input,textarea')].filter(vis);" +
            "const pw=ins.find(e=>e.type==='password');" +
            "const cands=ins.filter(e=>['text','email','tel',''].includes(e.type)&&!e.readOnly&&!/search/i.test((e.placeholder||'')+' '+(e.getAttribute('aria-label')||'')+' '+(e.name||'')+' '+(e.id||'')+' '+(typeof e.className==='string'?e.className:'')+' '+(e.getAttribute('role')||''))&&(!pw||e.compareDocumentPosition(pw)&Node.DOCUMENT_POSITION_FOLLOWING));" +
            "const id=cands.length?cands[cands.length-1]:null;" +   // the identifier closest before the password field
            "const e=" + ("pw".equals(which) ? "pw" : "id") + ";if(!e)return '';e.focus();e.select&&e.select();return 'ok';})()";
        if (!"ok".equals(eval(js))) return false;
        call("Input.dispatchKeyEvent", "{\"type\":\"rawKeyDown\",\"key\":\"Backspace\",\"windowsVirtualKeyCode\":8}");
        call("Input.dispatchKeyEvent", "{\"type\":\"keyUp\",\"key\":\"Backspace\",\"windowsVirtualKeyCode\":8}");
        return call("Input.insertText", "{\"text\":" + jsonString(text) + "}") != null;
    }

    /** Trusted click at the centre of the element selected by JS (returns its label). */
    private String clickByJs(String selectorJs) {
        String r = eval("(()=>{" + VISIBLE_FN + "const e=(" + selectorJs + ");if(!e)return '';e.scrollIntoView({block:'center'});" +
            "const r=e.getBoundingClientRect();return Math.round(r.left+r.width/2)+','+Math.round(r.top+r.height/2)+','+(e.innerText||e.value||'').trim().slice(0,30);})()");
        if (r == null || r.isEmpty()) return null;
        String[] p = r.split(",", 3);
        String xy = "\"x\":" + p[0] + ",\"y\":" + p[1];
        call("Input.dispatchMouseEvent", "{\"type\":\"mousePressed\"," + xy + ",\"button\":\"left\",\"clickCount\":1}");
        call("Input.dispatchMouseEvent", "{\"type\":\"mouseReleased\"," + xy + ",\"button\":\"left\",\"clickCount\":1}");
        return p.length > 2 ? p[2] : "";
    }

    /** Trusted click on the first visible element whose text matches the regex (case-insensitive). */
    public String clickText(String regex) {
        return clickByJs("[...document.querySelectorAll('button,[role=button],a,input[type=submit],[role=menuitem]')].filter(vis)" +
            ".find(e=>new RegExp(" + jsonString(regex) + ",'i').test((e.innerText||e.value||e.getAttribute('aria-label')||'').trim()))");
    }

    /** Fill identifier and/or password with trusted input events. */
    public boolean fillTrusted(String username, String password) {
        boolean a = typeInto("id", username);
        boolean b = typeInto("pw", password);
        return a || b;
    }

    /** Fill the first visible identifier field (before the password field if any) and/or the password. */
    public boolean fill(String username, String password) {
        if (fillTrusted(username, password)) return true;
        String js = "(()=>{" + VISIBLE_FN +
            "const set=(e,v)=>{e.focus();const d=Object.getOwnPropertyDescriptor(e.tagName==='TEXTAREA'?HTMLTextAreaElement.prototype:HTMLInputElement.prototype,'value');" +
            "d.set.call(e,v);e.dispatchEvent(new Event('input',{bubbles:true}));e.dispatchEvent(new Event('change',{bubbles:true}));};" +
            "const ins=[...document.querySelectorAll('input,textarea')].filter(vis);" +
            "const pw=ins.find(e=>e.type==='password');" +
            "const cands=ins.filter(e=>['text','email','tel',''].includes(e.type)&&!e.readOnly&&!/search/i.test((e.placeholder||'')+' '+(e.getAttribute('aria-label')||'')+' '+(e.name||'')+' '+(e.id||'')+' '+(typeof e.className==='string'?e.className:'')+' '+(e.getAttribute('role')||''))&&(!pw||e.compareDocumentPosition(pw)&Node.DOCUMENT_POSITION_FOLLOWING));" +
            "const id=cands.length?cands[cands.length-1]:null;" +
            "let n=0; if(id&&" + jsonString(username == null ? "" : username) + "){set(id," + jsonString(username == null ? "" : username) + ");n++;}" +
            "if(pw&&" + jsonString(password == null ? "" : password) + "){set(pw," + jsonString(password == null ? "" : password) + ");n++;}" +
            "return ''+n;})()";
        String r = eval(js);
        return r != null && !"0".equals(r);
    }

    /** Click the submit/next button (or submit the form). */
    public boolean submit() {
        String label = clickByJs("[...document.querySelectorAll('button,input[type=submit],[role=button],a')].filter(vis)" +
            ".find(b=>/^(log ?in|sign ?in|next|continue|submit)$/i.test((b.innerText||b.value||b.getAttribute('aria-label')||'').trim()))");
        if (label != null) { System.out.println("[WEBVIEW] trusted click on '" + label + "'"); return true; }
        String js = "(()=>{" + VISIBLE_FN +
            "const btns=[...document.querySelectorAll('button,input[type=submit],[role=button],a')].filter(vis);" +
            "const lbl=b=>(b.innerText||b.value||b.getAttribute('aria-label')||'').trim();" +
            "const b=btns.find(b=>/^(log ?in|sign ?in|next|continue|submit)$/i.test(lbl(b)));" +
            "if(b){b.click();return 'clicked:'+lbl(b);}" +
            "const pw=document.querySelector('input[type=password]');if(pw&&pw.form){pw.form.requestSubmit?pw.form.requestSubmit():pw.form.submit();return 'form';}" +
            "return '';})()";
        String r = eval(js);
        System.out.println("[WEBVIEW] submit -> " + r);
        return r != null && !r.isEmpty();
    }

    /** URL of the visible page from the DevTools page list ("" for a blank WebView, null if unavailable). */
    public String visiblePageUrl() {
        if (!ensureForward()) return null;
        try {
            HttpRequest req = HttpRequest.newBuilder(URI.create("http://127.0.0.1:" + port + "/json")).timeout(Duration.ofSeconds(5)).build();
            String body = http.send(req, HttpResponse.BodyHandlers.ofString()).body();
            Matcher m = Pattern.compile("\"description\":\\s*\"((?:[^\"\\\\]|\\\\.)*)\"[^{}]*?\"url\":\\s*\"([^\"]*)\"", Pattern.DOTALL).matcher(body);
            while (m.find()) if (m.group(1).contains("visible\\\":true")) return m.group(2);
            Matcher u = Pattern.compile("\"url\":\\s*\"([^\"]*)\"").matcher(body);
            return u.find() ? u.group(1) : null;
        } catch (Exception e) {
            return null;
        }
    }

    public boolean available() {
        return ensureForward() && pageSocket() != null;
    }
}
