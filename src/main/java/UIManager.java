import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 * UI manager - based on ADB for UI element acquisition and interaction
 * Use uiautomator dump and adb shell commands instead of Appium
 */
public class UIManager {
    private ConfigLoader configLoader;
    private String appPackage;

    // Login detection flags
    private boolean googleLoginDetected = false;
    private boolean facebookLoginDetected = false;
    private boolean usernameFieldDetected = false;
    private boolean passwordFieldDetected = false;

    // Timestamp records
    private long loginButtonClickTime = 0;
    private String loginClickActivity = "";

    public long getLoginButtonClickTime() { return loginButtonClickTime; }

    /**
     * FIX(v1): wait until the login page is gone (no password field from the app under test while the
     * app stays in foreground). Returns the completion timestamp, or -1 if the page is still shown
     * after timeoutMs.
     */
    private String lastLoginErrorText = null;
    public String getLastLoginErrorText() { return lastLoginErrorText; }

    /** Text of a modal error/alert dialog on screen, or null. */
    private String findDialogMessage(List<UIElement> els) {
        boolean dialog = false; String msg = null;
        for (UIElement e : els) {
            String id = e.resourceId == null ? "" : e.resourceId;
            if (id.endsWith(":id/message") || id.endsWith(":id/alertTitle") || id.endsWith(":id/snackbar_text")
                    || id.endsWith(":id/button1") || id.endsWith(":id/parentPanel")) dialog = true;
            if ((id.endsWith(":id/message") || id.endsWith(":id/alertTitle") || id.endsWith(":id/snackbar_text"))
                    && e.text != null && !e.text.trim().isEmpty()) msg = e.text.trim();
        }
        if (!dialog) return null;
        // FIX(v1): a progress dialog ("Authenticating...", "Please wait") is a login in progress, not an answer
        boolean spinner = false;
        for (UIElement e : els) if (e.className != null && e.className.contains("ProgressBar") && boundsOf(e) != null) spinner = true;
        if (spinner || (msg != null && msg.toLowerCase().matches(
                "(.*(\\.\\.\\.|\u2026)|(please wait|loading|authenticating|signing in|logging in|connecting|verifying|processing).*)"))) return null;
        return msg != null ? msg : "";
    }

    /**
     * FIX(v1): returns completion time (>0) when the login page is gone, -2 when the app answered with an
     * error dialog/snackbar (login rejected; the dialog hides the form from uiautomator), -1 on timeout.
     */
    private boolean lastWaitEndedInProgress = false;
    public boolean lastWaitEndedInProgress() { return lastWaitEndedInProgress; }

    /** Tap the first visible element whose text matches the regex; returns its text or null. */
    public String tapText(String regex) {
        try {
            List<UIElement> all = getAllUIElements();
            for (UIElement e : all) {
                if (e.text == null || !e.visible || boundsOf(e) == null) continue;
                if (!e.text.trim().toLowerCase().matches(regex)) continue;
                int[] r = boundsOf(e);
                // FIX(v1): labels are often not the click target (Compose chips: icon above, label below); use the
                // clickable element that contains the label, else the nearest clickable one directly above/below it
                if (e.className == null || !e.className.contains("[clickable]")) {
                    int cx = (r[0] + r[2]) / 2, cy = (r[1] + r[3]) / 2;
                    int[] best = null; int bestD = Integer.MAX_VALUE;
                    for (UIElement c : all) {
                        int[] b = boundsOf(c);
                        if (b == null || c.className == null || !c.className.contains("[clickable]")) continue;
                        if ((b[2] - b[0]) > 900 && (b[3] - b[1]) > 900) continue;   // full-screen containers
                        if (cx < b[0] || cx > b[2]) continue;
                        int d = (cy >= b[1] && cy <= b[3]) ? 0 : Math.min(Math.abs(cy - b[1]), Math.abs(cy - b[3]));
                        if (d < bestD && d < 250) { bestD = d; best = b; }
                    }
                    if (best != null) r = best;
                }
                new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf((r[0] + r[2]) / 2), String.valueOf((r[1] + r[3]) / 2))
                    .redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
                return e.text.trim();
            }
        } catch (Exception ignored) { }
        return null;
    }

    private static final String TWO_FA_ENTRY = "(two[- ]?factor authentication|two-factor auth.*|2fa|2fa settings|manage 2fa settings|two[- ]step verification|2-step verification)";
    private static final String ACCOUNT_ENTRY = "(account settings|account|account & security|account and security|security|privacy (&|and) security|manage account)";

    /** Tap an unlabeled clickable icon in the top-left corner (navigation drawer); true if one was tapped. */
    private boolean tapTopLeftIcon() {
        try {
            for (UIElement e : getAllUIElements()) {
                int[] b = boundsOf(e);
                if (b == null || e.className == null || !e.className.contains("[clickable]")) continue;
                if (b[0] > 200 || b[1] > 300 || b[2] - b[0] > 250 || b[3] - b[1] > 250) continue;
                if (e.text != null && e.text.matches(".*[A-Za-z]{2,}.*")) continue;
                new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf((b[0] + b[2]) / 2), String.valueOf((b[1] + b[3]) / 2))
                    .redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
                return true;
            }
        } catch (Exception ignored) { }
        return false;
    }

    private java.util.Set<String> screenTexts(List<UIElement> els) {
        java.util.Set<String> t = new java.util.HashSet<>();
        for (UIElement e : els) if (e.text != null && e.text.trim().length() > 3 && boundsOf(e) != null) t.add(e.text.trim());
        return t;
    }

    /**
     * FIX(v1): account-security oracle (#6640-style). On a logged-in session, open the 2FA settings, start an
     * email/SMS code setup, and request the code with no network. A correct app reports that the code could not be
     * sent; a faulty one stays silent and keeps asking for a code that was never delivered. Nothing is changed on
     * the account: no code is ever entered. Returns the evidence, or null when not observed / not reachable.
     */
    public String checkMfaCodeRequestOffline(List<String[]> validPairs, Runnable goOffline, Runnable goOnline) {
        boolean offline = false;
        java.util.Set<String> seen = new java.util.HashSet<>();
        try {
            // 1) reach the 2FA settings page
            boolean reached = false, accountTried = false, settingsTried = false, drawerTried = false;
            for (int step = 0; step < 8 && !reached; step++) {
                // wait for a readable, populated screen (loading skeletons and sync sheets keep the UI busy)
                List<UIElement> now = getAllUIElements();
                for (int w = 0; w < 6 && (lastDumpFailed || screenTexts(now).size() < 3); w++) { Thread.sleep(4000); now = getAllUIElements(); }
                seen.addAll(screenTexts(now));
                String hit;
                if ((hit = tapText(TWO_FA_ENTRY)) != null) { reached = true; System.out.println("[MFA_SETUP] step " + step + ": '" + hit + "'"); break; }
                if (!accountTried && (hit = tapText(ACCOUNT_ENTRY)) != null) accountTried = true;
                else if (!settingsTried && (hit = tapText("(settings|preferences)")) != null) settingsTried = true;
                else if (!drawerTried && tapTopLeftIcon()) { drawerTried = true; hit = "(top-left icon)"; }
                else { System.out.println("[MFA_SETUP] step " + step + ": nothing to open (" + screenTexts(now).size() + " texts, dumpFailed=" + lastDumpFailed + ")"); break; }
                System.out.println("[MFA_SETUP] step " + step + ": '" + hit + "'");
                Thread.sleep(3000);
            }
            if (!reached) { System.out.println("[MFA_SETUP] 2FA settings not found"); return null; }
            Thread.sleep(3000);
            System.out.println("[MFA_SETUP] 2FA settings opened");
            // 2) start a (re)configuration; verify the account password if asked
            tapText("(change primary.*|enable 2fa|enable two[- ]?factor.*|set ?up (2fa|two[- ]?factor.*)|turn on.*|add 2fa.*|configure.*)");
            Thread.sleep(3000);
            List<UIElement> els = getAllUIElements();
            UIElement pw = findPasswordAnchor(els);
            if (pw == null) for (UIElement e : els) if (isInputClass(e.className) && textOf(e).toLowerCase().contains("password")) pw = e;
            String password = null;   // the account shown in the app (settings list the signed-in email)
            for (String[] vp : validPairs) {
                if (vp.length < 2) continue;
                if (password == null) password = vp[1];
                for (String t : seen) if (t.contains(vp[0])) { password = vp[1]; break; }
            }
            if (pw != null && password != null) {
                int[] r = boundsOf(pw);
                clickAndInputText((r[0] + r[2]) / 2, (r[1] + r[3]) / 2, password);
                new ProcessBuilder("adb", "shell", "input", "keyevent", "KEYCODE_BACK").redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
                Thread.sleep(800);
                tapText("(verify|confirm|continue|ok|next|submit)");
                Thread.sleep(6000);
            }
            // 3) choose a code-by-message method
            if (tapText("(set up using email|set ?up (via|with) email|use email|email|send code via email|e-mail)") == null
                    && tapText("(set up using sms|set ?up (via|with) sms|use sms|sms|text message)") == null) {
                System.out.println("[MFA_SETUP] no email/SMS method offered");
                return null;
            }
            Thread.sleep(3000);
            els = getAllUIElements();
            boolean hasSend = false;
            for (UIElement e : els) if (textOf(e).trim().toLowerCase().matches("(send code|send|get code|send email|send sms|send otp)")) hasSend = true;
            if (!hasSend) { System.out.println("[MFA_SETUP] no 'send code' control"); return null; }
            java.util.Set<String> before = screenTexts(els);
            // 4) request the code without a network
            goOffline.run(); offline = true;
            Thread.sleep(1500);
            tapText("(send code|send|get code|send email|send sms|send otp)");
            System.out.println("[MFA_SETUP] code requested with no network");
            Thread.sleep(7000);
            els = getAllUIElements();
            if (lastDumpFailed) return null;
            String reaction = null;
            for (String t : screenTexts(els)) {
                if (before.contains(t)) continue;
                if (ERR_LINE.matcher(t).find() || NETWORK_ERR.matcher(t).find() || t.toLowerCase().matches(".*(resend|sent|retry).*")) { reaction = t; break; }
            }
            boolean asksForCode = false; String ask = null;
            for (String t : screenTexts(els)) if (t.toLowerCase().matches(".*(enter|type|input).*code.*|.*receive.*code.*|.*code.*(sent|email).*")) { asksForCode = true; ask = t; break; }
            if (reaction != null) { System.out.println("[MFA_SETUP] app reacted: '" + reaction + "'"); return null; }
            if (!asksForCode || !AppLauncher.isInForeground(appPackage)) return null;
            return "Code requested with no network: no error or confirmation shown; the screen still asks for the code ('" + ask + "')";
        } catch (Exception e) {
            return null;
        } finally {
            if (offline) goOnline.run();
        }
    }

    /** Visible error or network feedback on the current screen (inline text or dialog), or null. */
    public String currentFeedbackText() {
        try {
            List<UIElement> els = getAllUIElements();
            if (lastDumpFailed) return "(screen unreadable)";
            String d = findDialogMessage(els);
            if (d != null) return d;
            for (UIElement e : els) {
                String t = textOf(e).trim();
                if (t.length() > 6 && t.length() < 200 && boundsOf(e) != null && (ERR_LINE.matcher(t).find() || NETWORK_ERR.matcher(t).find())) return t;
            }
        } catch (Exception ignored) { }
        return null;
    }
    public boolean isGoogleButtonMode() { return googleButtonMode; }

    /** True when the current screen has no text inputs at all (only buttons, e.g. "Sign in with Google"). */
    public boolean noCredentialFieldsVisible() {
        try {
            for (UIElement e : getAllUIElements()) if (isInputClass(e.className) && boundsOf(e) != null) return false;
            return !lastDumpFailed;
        } catch (Exception e) { return false; }
    }

    private static final String GOOGLE_BUTTON = "(sign in with google|continue with google|log ?in with google|sign in with google account|google sign[- ]in|google|google tasks)";
    private boolean googleButtonMode = false;
    private long googleBackSince = -1;
    private long googleGoneSince = -1;
    private boolean gmsOnTop() {
        String top = AppLauncher.topActivityLine();
        return top.contains("com.google.android.gms") || top.contains("ChooseTypeAndAccountActivity") || top.contains("android/.accounts.");
    }

    /**
     * FIX(v1): native "Sign in with Google" (Google Play services): tap the button, choose the device's Google account
     * in the account picker, confirm consent screens. The round's network condition stays applied; the caller then waits
     * for the login result as for any other submit. Returns false when no Google button could be tapped.
     */
    public boolean googleButtonLogin(String account) {
        try {
            // no wrong credentials can be given to a device-account sign-in: nothing to test in an invalid round
            if (!roundValid) { System.out.println("[GOOGLE] Invalid-credential round: device-account sign-in skipped"); return false; }
            String hit = tapText(GOOGLE_BUTTON);
            if (hit == null) return false;
            googleButtonMode = true;
            System.out.println("[GOOGLE] Tapped '" + hit + "'");
            loginButtonClickTime = System.currentTimeMillis();
            loginClickActivity = AppLauncher.topActivityLine().replaceAll(".*\\{[^ ]+ u0 ([^ ]+).*", "$1");
            boolean picked = false; int awayFromGms = 0;
            for (int i = 0; i < 12; i++) {
                Thread.sleep(2500);
                if (!gmsOnTop()) {
                    // the app's own sign-in disclosure (e.g. "Sign in to Tasks.org ... Agree") comes before the picker
                    String d = picked ? null : tapText("(agree|i agree|accept|continue|ok|allow)");
                    if (d != null) { System.out.println("[GOOGLE] App sign-in disclosure: '" + d + "'"); awayFromGms = 0; continue; }
                    if (++awayFromGms >= 2) break;
                    continue;
                }
                awayFromGms = 0;
                List<UIElement> els = getAllUIElements();
                if (!picked && account != null) {
                    for (UIElement e : els) {
                        int[] b = boundsOf(e);
                        if (b == null || !textOf(e).contains(account)) continue;
                        new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf((b[0] + b[2]) / 2), String.valueOf((b[1] + b[3]) / 2))
                            .redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
                        picked = true;
                        serviceAccountAdopted = true;   // the real (device) Google account is used: a valid-credential login
                        googleLoginDetected = true;
                        System.out.println("[GOOGLE] Chose the device account in the Google account picker");
                        break;
                    }
                    if (picked) continue;
                }
                if (!picked) continue;   // never confirm anything for an account the round did not choose
                String c = tapText("(allow|continue|agree|i agree|confirm|accept|ok)");
                if (c != null) System.out.println("[GOOGLE] Google consent: '" + c + "'");
            }
            return true;
        } catch (Exception e) { return false; }
    }

    /** Number of visible text/description nodes of the app below the toolbar (content of the current page). */
    public int contentNodeCount() {
        int n = 0;
        try {
            for (UIElement e : getAllUIElements()) {
                int[] r = boundsOf(e);
                if (r == null || !e.visible || r[1] < 260) continue;
                if (e.text != null && !e.text.trim().isEmpty() && !isWebViewClass(e.className)) n++;
            }
        } catch (Exception ignored) { }
        return n;
    }

    /** Text for logs: values of input fields (possibly typed credentials) are reduced to their length. */
    private String logSafe(String text, String className) {
        if (text == null) return "";
        if (className != null && (className.contains("[password]") || isInputClass(className))) return "[input, " + text.length() + " chars]";
        return text;
    }

    /**
     * FIX(v1): ANR oracle support. Android reports "Application Not Responding" only for input that stays
     * unhandled; DevTools clicks and UI dumps are not input events. A harmless key event (Shift) right after an
     * action makes a blocked UI thread observable as an ANR, which the crash detector picks up.
     */
    public void probeResponsiveness() {
        try {
            Thread.sleep(1000);
            for (int i = 0; i < 3; i++) {
                new ProcessBuilder("adb", "shell", "input", "keyevent", "KEYCODE_SHIFT_LEFT")
                    .redirectErrorStream(true).start().waitFor(15, java.util.concurrent.TimeUnit.SECONDS);
                Thread.sleep(1000);
            }
            System.out.println("[ANR_PROBE] Key events sent; waiting for the input dispatch timeout");
            Thread.sleep(6000);   // input dispatch timeout is 5 s
        } catch (Exception ignored) { }
    }

    /**
     * FIX(v1): confirmation for "invalid credentials accepted": after a short wait the app must still be past the
     * login (no password field, no login/recovery/checkpoint URL, no error text). Returns null when not confirmed,
     * otherwise evidence (URL and page text) for manual review.
     */
    public String confirmLeftLogin() {
        try { Thread.sleep(6000); } catch (InterruptedException ignored) { }
        try {
            if (webMode) {
                Map<String, String> m = web().inspect();
                if (!m.isEmpty()) {
                    String url = m.getOrDefault("url", "");
                    if (!"0".equals(m.getOrDefault("pw", "0"))) return null;
                    if (url.matches("(?i).*(/login|/signin|/recover|/checkpoint|/challenge|two_step|captcha|identify).*")) return null;
                    String text = web().eval("(document.body&&document.body.innerText||'').replace(/\\s+/g,' ').slice(0,150)");
                    if (text != null && (ERR_LINE.matcher(text).find() || CHALLENGE_TEXT.matcher(text).find())) return null;
                    return "url=" + url + " page='" + text + "'";
                }
            }
            if (findPasswordAnchor(getAllUIElements()) != null) return null;
            return "screen=" + AppLauncher.topActivityLine().trim();
        } catch (Exception e) { return null; }
    }

    private boolean recoveryTried = false;
    private boolean reopenTried = false;
    private String webErrorSeen = null;
    private static final java.util.regex.Pattern ERR_LINE = java.util.regex.Pattern.compile(
        "(?i)(incorrect|isn.t connected|not connected to an account|wrong|invalid|couldn.t|could not|not recogni[sz]ed|doesn.t match|did not match|no account|failed|unable|went wrong|try again later|denied|too many)");
    // verification/challenge pages (captcha, "confirm it's you", checkpoints): neither a login nor a rejection
    private static final java.util.regex.Pattern CHALLENGE_TEXT = java.util.regex.Pattern.compile(
        "(?i)(enter the characters|captcha|real human|security check|verify (it.s|that it.s) you|confirm (it.s|that it.s) you|confirm your identity|suspicious|unusual activity|checkpoint)");
    private static final java.util.regex.Pattern NETWORK_ERR = java.util.regex.Pattern.compile(
        "(?i)(network|connection|internet|offline|went wrong|timed? ?out|unable to (reach|connect|load)|couldn.t (load|connect|reach)|try again later|no response|failed to fetch|err_)");

    /** First line of the page text that is new since the submit and reads like an error message. */
    private String newErrorLine(String domText) {
        if (domText == null || webLoginDomText == null) return null;
        for (String line : domText.split("\\n")) {
            String l = line.trim();
            if (l.length() < 8 || l.length() > 220 || webLoginDomText.contains(l)) continue;
            if (ERR_LINE.matcher(l).find()) return l;
        }
        return null;
    }
    /** Click a visible Restart / Try again / Retry control on a web error page; true if one was used. */
    private boolean tryWebRecovery() {
        String page = web().eval("(document.body&&document.body.innerText||'').replace(/\\s+/g,' ').slice(0,200)");
        String hit = web().clickText("^(restart|try again|retry|reload)$");
        if (hit == null) return false;
        System.out.println("[WEBVIEW] Error page offered '" + hit + "'; using it like a user would. Page: " + page);
        probeResponsiveness();
        return true;
    }

    private long waitForWebLogin(long timeoutMs) {
        recoveryTried = false;
        reopenTried = false;
        webErrorSeen = null;
        long deadline = System.currentTimeMillis() + timeoutMs;
        int goneStreak = 0;
        while (System.currentTimeMillis() < deadline) {
            long t = System.currentTimeMillis();
            if (!AppLauncher.isInForeground(appPackage)) { try { Thread.sleep(1000); } catch (InterruptedException ignored) { } continue; }
            // FIX(v1): a native MFA screen can open on top of the WebView (e.g. React Native modals), while the
            // DOM still holds the old form; check the native UI for an MFA prompt on every poll
            try {
                for (UIElement e : getAllUIElements()) {
                    if (e.text != null && MFA_HINT.matcher(e.text).find() && boundsOf(e) != null) {
                        mfaAfterSubmit = true;
                        lastMfaOutcome = "pending";
                        System.out.println("[LOGIN_RESULT] MFA prompt after web login: '" + e.text.trim() + "'");
                        return -3;
                    }
                }
            } catch (Exception ignored) { }
            // ... or inside the page itself (an MFA code form replacing the credential form)
            String domText = web().eval("(document.body&&document.body.innerText||'').slice(0,5000)");
            if (domText != null) {
                java.util.regex.Matcher mm = MFA_HINT.matcher(domText);
                if (mm.find() && (webLoginDomText == null || !MFA_HINT.matcher(webLoginDomText).find())) {
                    int a = Math.max(0, domText.lastIndexOf('\n', mm.start()) + 1), b = domText.indexOf('\n', mm.end());
                    mfaAfterSubmit = true;
                    lastMfaOutcome = "pending";
                    System.out.println("[LOGIN_RESULT] MFA prompt in page after web login: '" + domText.substring(a, b < 0 ? domText.length() : b).trim() + "'");
                    return -3;
                }
            }
            if (domText != null && CHALLENGE_TEXT.matcher(domText).find()
                    && (webLoginDomText == null || !CHALLENGE_TEXT.matcher(webLoginDomText).find())) {
                // not an MFA step of the app: provider anti-abuse checks are expected after repeated attempts
                lastMfaOutcome = "challenge";
                System.out.println("[LOGIN_RESULT] Verification challenge after web login (captcha/identity check)");
                return -3;
            }
            Map<String, String> m = web().inspect();
            if (m.isEmpty()) {
                // DevTools page unreachable: only a login that left the WebView altogether counts as done
                boolean webViewShown = false;
                try { for (UIElement e : getAllUIElements()) if (isWebViewClass(e.className)) { webViewShown = true; break; } }
                catch (Exception ignored) { }
                if (!webViewShown) { goneStreak++; if (goneStreak >= 2) return t; } else goneStreak = 0;
            }
            else {
                String err = m.getOrDefault("err", "");
                // FIX(v1): error text that appeared after the submit, wherever it is rendered (dialogs, plain divs)
                String curUrl = m.getOrDefault("url", "").replaceAll("#.*$", "");
                boolean samePage = !"0".equals(m.getOrDefault("pw", "0"))
                    || (webLoginUrl != null && curUrl.equals(webLoginUrl.replaceAll("#.*$", "")));
                String newErr = samePage ? newErrorLine(domText) : null;
                if (err.isEmpty() && newErr != null) err = newErr;
                boolean networkErr = !err.isEmpty() && NETWORK_ERR.matcher(err).find();
                if (!err.isEmpty() && !networkErr) {
                    // a credential/account error: record it as the rejection, never dismiss it
                    lastLoginErrorText = err;
                    System.out.println("[LOGIN_RESULT] Web error after login: '" + err + "'");
                    return -2;
                }
                if (networkErr && webErrorSeen == null) {
                    webErrorSeen = err;
                    System.out.println("[LOGIN_RESULT] Web network error after login: '" + err + "'");
                    probeResponsiveness();
                }
                // FIX(v1): a user facing a network error page with a recovery control (Restart / Try again) uses it once
                if (!recoveryTried && (networkErr || m.getOrDefault("url", "").startsWith("chrome-error:"))) { recoveryTried = true; if (tryWebRecovery()) continue; }
                // FIX(v1): a user who still sees a network error on a degraded network reopens the page once; this is a
                // main-frame load under the degraded network, where apps run their load-error handling (onReceivedError).
                // Probe responsiveness while that handling runs.
                if ((networkErr || m.getOrDefault("url", "").startsWith("chrome-error:")) && recoveryTried && !reopenTried
                        && !"normal".equals(roundCondition)) {
                    reopenTried = true;
                    System.out.println("[WEBVIEW] Network error persists under '" + roundCondition + "'; reopening the page once");
                    new Thread(() -> { try { Thread.sleep(800); probeResponsiveness(); } catch (Exception ignored) { } }).start();
                    web().call("Page.reload", "{\"ignoreCache\":true}");
                    try { Thread.sleep(12000); } catch (InterruptedException ie) { Thread.currentThread().interrupt(); }
                    continue;
                }
                if (!err.isEmpty() && !"0".equals(m.getOrDefault("pw", "0"))) {
                    lastLoginErrorText = err;
                    System.out.println("[LOGIN_RESULT] Web error after login: '" + err + "'");
                    return -2;
                }
                lastWaitEndedInProgress = "true".equals(m.get("busy"));
                // the password field disappearing means the form was consumed (single-page apps keep other inputs)
                boolean formGone = "0".equals(m.getOrDefault("pw", "0")) && !"true".equals(m.get("busy"));
                boolean urlChanged = webLoginUrl != null && !webLoginUrl.equals(m.get("url")) && "0".equals(m.getOrDefault("pw", "0"));
                // FIX(v1): identity-provider verification steps (Google "Verify it's you", Facebook checkpoints,
                // two-step pages) are an MFA prompt, not a slow login
                String curl = m.getOrDefault("url", "");
                if (curl.matches("(?i).*(/signin/challenge/|/checkpoint/|two_step_verification|/two_factor|/2fa).*")
                        && !curl.contains("/challenge/pwd") && !curl.equals(webLoginUrl == null ? "" : webLoginUrl)) {
                    mfaAfterSubmit = true;
                    lastMfaOutcome = "pending";
                    System.out.println("[LOGIN_RESULT] Identity provider verification step after web login: " + curl.replaceAll("\\?.*", ""));
                    return -3;
                }
                // FIX(v1): a page that is still a login/challenge/error page is not a completed login (e.g. a web
                // service redirecting a rejected login to its own error page, or a failed load on a degraded network)
                String url = m.getOrDefault("url", "");
                boolean notDone = url.isEmpty() || url.matches("(?i).*(/login|/signin|sign_in|/checkpoint|/recover|captcha|two_step|two_factor|/challenge|chrome-error:|about:blank|/accounts/login).*")
                        && !url.equals(webLoginUrl == null ? "" : webLoginUrl);
                if (url.matches("(?i)^(chrome-error:|about:blank).*")) notDone = true;
                if ((formGone || urlChanged) && !notDone) { goneStreak++; if (goneStreak >= 2) return t; } else goneStreak = 0;
            }
            try { Thread.sleep(1500); } catch (InterruptedException ignored) { }
        }
        if (webErrorSeen != null) { lastLoginErrorText = webErrorSeen; return -2; }
        return -1;
    }

    public long waitForLoginPageGone(long timeoutMs) {
        lastWaitEndedInProgress = false;
        if (webMode) { lastLoginErrorText = null; return waitForWebLogin(timeoutMs); }
        lastLoginErrorText = null;
        lastMfaOutcome = null;
        String loginActivity = loginClickActivity != null && !loginClickActivity.isEmpty()
            ? loginClickActivity : AppLauncher.topActivityLine().replaceAll(".*\\{[^ ]+ u0 ([^ ]+).*", "$1");
        long deadline = System.currentTimeMillis() + timeoutMs;
        long goneSince = -1;
        long formAbsentSince = -1;
        while (System.currentTimeMillis() < deadline) {
            long pollStart = System.currentTimeMillis();
            try {
                if (AppLauncher.isInForeground(appPackage)) {
                    List<UIElement> els = getAllUIElements();
                    // FIX(v1): a credential-free login has no form to disappear: it is done only when the guest
                    // option is gone; an error text next to a still-visible option is a rejection
                    if (guestMode) {
                        boolean guestVisible = false; String errText = null;
                        for (UIElement e : els) {
                            String lt = e.text == null ? "" : e.text.trim();
                            if (lt.toLowerCase().matches("(anonymous|guest|continue as guest|login as guest|use without (an )?account|try as guest)")) guestVisible = true;
                            else if (lt.length() > 8 && lt.matches("(?i).*(unable|error|failed|couldn.t|could not|no internet|network|timed? ?out|try again).*")) errText = lt;
                        }
                        if (guestVisible) {
                            if (errText != null) {
                                lastLoginErrorText = errText;
                                System.out.println("[LOGIN_RESULT] Error after credential-free login: '" + errText + "'");
                                return -2;
                            }
                            goneSince = -1;
                            Thread.sleep(1500);
                            continue;
                        }
                    }
                    String dialogMsg = findDialogMessage(els);
                    if (dialogMsg != null) {
                        lastLoginErrorText = dialogMsg;
                        System.out.println("[LOGIN_RESULT] Error dialog after login: '" + dialogMsg + "'");
                        return -2;
                    }
                    UIElement mfaInput = findMfaInput(els);
                    if (mfaInput != null) {
                        String secret = pendingUsername == null ? null : totpSecrets.get(pendingUsername);
                        mfaAfterSubmit = true;   // FIX(v1): an MFA prompt appeared after the credentials were submitted
                        if (secret != null && !mfaHandled) {
                            mfaHandled = true;
                            int[] r = boundsOf(mfaInput);
                            String code = Totp.freshCode(secret);
                            System.out.println("[MFA] Authenticator prompt; entering TOTP code");
                            clickAndInputText((r[0] + r[2]) / 2, (r[1] + r[3]) / 2, code);
                            submitMfa(els);
                            lastMfaOutcome = "totp-entered";
                            goneSince = -1;
                            continue;
                        } else if (secret == null) {
                            System.out.println("[MFA] MFA prompt reached without an authenticator secret (MFACodePending)");
                            lastMfaOutcome = "pending";
                            return -3;
                        }
                    }
                    boolean progressShown = lastDumpFailed, actionable = false;   // an un-dumpable (never idle) screen is busy
                    if (lastDumpFailed && System.currentTimeMillis() - lastDumpFailLog > 15000) {
                        lastDumpFailLog = System.currentTimeMillis();
                        System.out.println("[UI_DUMP] UI hierarchy unavailable (screen never idle, e.g. an animation); treating it as a busy screen");
                    }
                    for (UIElement e : els) {
                        if (e.className != null && e.className.contains("ProgressBar") && boundsOf(e) != null) progressShown = true;
                        else if (e.className != null && e.className.contains("[clickable]") && !e.className.contains("[disabled]")
                                && e.text != null && !e.text.trim().isEmpty() && boundsOf(e) != null) actionable = true;
                    }
                    // a loading screen has a progress indicator and nothing actionable; a determinate progress
                    // bar next to buttons (e.g. a "Download" screen after login) is not a pending login
                    progressShown = progressShown && !actionable;
                    // FIX(v1): leaving the login activity means completion, unless the new screen is a pure
                    // loading screen (e.g. NewsBlur's LoginProgress), which is still part of the login
                    // FIX(v1): a Google-button sign-in has no form; it is done only when neither the Google button nor
                    // a Play-services screen is shown any more
                    if (googleButtonMode) {
                        boolean buttonShown = false;
                        for (UIElement e : els) if (textOf(e).trim().toLowerCase().matches(GOOGLE_BUTTON)) buttonShown = true;
                        if (gmsOnTop() || lastDumpFailed || progressVisible(els)) {   // picker, consent or "Authenticating..."
                            goneSince = -1; googleBackSince = -1; googleGoneSince = -1; lastWaitEndedInProgress = true; Thread.sleep(1500); continue;
                        }
                        if (buttonShown) {   // back on the sign-in screen and idle
                            lastWaitEndedInProgress = false; goneSince = -1; googleGoneSince = -1;
                            if (googleBackSince < 0) googleBackSince = pollStart;
                            else if (pollStart - googleBackSince >= 20000) {
                                System.out.println("[GOOGLE] Back on the sign-in screen, idle, with no result");
                                googleBackSince = -1;
                                return -1;
                            }
                            Thread.sleep(1500); continue;
                        }
                        googleBackSince = -1;
                        // the sign-in screen must stay away (transitions briefly show neither the button nor a spinner)
                        lastWaitEndedInProgress = false;
                        if (googleGoneSince < 0) googleGoneSince = pollStart;
                        if (pollStart - googleGoneSince >= 10000) { long t = googleGoneSince; googleGoneSince = -1; return t; }
                        Thread.sleep(1500); continue;
                    }
                    String topNow = AppLauncher.topActivityLine().replaceAll(".*\\{[^ ]+ u0 ([^ ]+).*", "$1");
                    boolean activityChanged = !loginActivity.isEmpty() && !topNow.equals(loginActivity);
                    if (activityChanged && !progressShown && findPasswordAnchor(els) == null) return pollStart;
                    lastWaitEndedInProgress = progressShown;
                    boolean formAbsent = findPasswordAnchor(els) == null;
                    if (formAbsent && formAbsentSince < 0) formAbsentSince = pollStart;
                    if (!formAbsent) formAbsentSince = -1;
                    // single-activity apps: a form that stays gone for 15 s means the login finished, even if
                    // a (sync/download) progress indicator is still on screen
                    if (progressShown && formAbsentSince > 0 && pollStart - formAbsentSince >= 15000) return formAbsentSince;
                    if (progressShown) { goneSince = -1; Thread.sleep(500); continue; } // login still in progress
                    if (findPasswordAnchor(els) != null && !progressShown) {
                        String inline = visibleErrorText(els);              // inline error next to the form
                        if (inline != null) {
                            lastLoginErrorText = inline;
                            System.out.println("[LOGIN_RESULT] Inline error after login: '" + inline + "'");
                            return -2;
                        }
                    }
                    if (findPasswordAnchor(els) == null) {
                        if (goneSince < 0) goneSince = pollStart;            // first poll without the form
                        else return goneSince;                                // confirmed by a second poll
                    } else {
                        goneSince = -1;                                       // form is back (e.g. after a progress screen)
                    }
                }
                Thread.sleep(1000);
            } catch (Exception e) {
                return -1;
            }
        }
        return -1;
    }
    private long loginButtonDisappearTime = 0;

    public UIManager(ConfigLoader configLoader) {
        this.configLoader = configLoader;
        this.appPackage = configLoader.getAppPackage();
    }

    // Public enum for focused element classification
    public enum FocusType {
        USERNAME,
        PASSWORD,
        LOGIN_BUTTON,
        OTHER,
        NONE
    }

    /**
     * Get current UI dump as a string for comparison and analysis
     */
    public String getCurrentUIDump() {
        try {
            // Dump UI to a temporary file on device
            if (!dumpUi("/data/local/tmp/ui_dump_temp.xml")) return "";
            
            // Read the dump file
            Process catProcess = Runtime.getRuntime().exec(
                "adb shell cat /data/local/tmp/ui_dump_temp.xml");
            
            BufferedReader reader = new BufferedReader(
                new InputStreamReader(catProcess.getInputStream()));
            StringBuilder result = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                result.append(line).append("\n");
            }
            reader.close();
            
            // Clean up temp file
            Runtime.getRuntime().exec("adb shell rm /data/local/tmp/ui_dump_temp.xml");
            
            return result.toString();
        } catch (Exception e) {
            System.err.println("Failed to get UI dump: " + e.getMessage());
            return "";
        }
    }
    
    // ---------------------- WebView Heuristics (UIAutomator-only) ----------------------
    private boolean isWebViewClass(String className) {
        if (className == null) return false;
        String c = className.toLowerCase();
        return c.contains("android.webkit.webview")
                || c.contains("com.tencent.smtt.sdk.webview")
                || c.contains("org.chromium.android_webview")
                || c.contains("com.uc.webview.export.webview")
                || c.endsWith("webview");
    }

    private int[] parseBoundsRect(String bounds) {
        if (bounds == null || bounds.isEmpty()) return null;
        Matcher matcher = Pattern.compile("\\[(\\d+),(\\d+)\\]\\[(\\d+),(\\d+)\\]").matcher(bounds);
        if (matcher.find()) {
            return new int[]{
                    Integer.parseInt(matcher.group(1)),
                    Integer.parseInt(matcher.group(2)),
                    Integer.parseInt(matcher.group(3)),
                    Integer.parseInt(matcher.group(4))
            };
        }
        return null;
    }

    /**
     * Parse ALL UI elements from a full XML string. UIAutomator frequently emits a single-line
     * hierarchy; reading line-by-line only returns the first match, causing massive misses.
     */
    private List<UIElement> parseAllUIElements(String xml) {
        List<UIElement> out = new ArrayList<>();
        if (xml == null) return out;

        // Match three forms: self-closing, paired-with-inner-text, and open-tag without inner text
        Pattern elementPattern = Pattern.compile(
                "<([^/>\\s]+)\\s+([^>]*?)\\s*/>" +
                "|<([^/>\\s]+)\\s+([^>]*?)\\s*>([^<]*)</\\3>" +
                "|<([^/>\\s]+)\\s+([^>]*?)\\s*>"
        );
        Matcher matcher = elementPattern.matcher(xml);
        while (matcher.find()) {
            String tagName = matcher.group(1) != null ? matcher.group(1)
                    : (matcher.group(3) != null ? matcher.group(3) : matcher.group(6));
            String attributes = matcher.group(2) != null ? matcher.group(2)
                    : (matcher.group(4) != null ? matcher.group(4) : matcher.group(7));
            String text = matcher.group(5); // only present for paired nodes
            if (text == null) text = "";

            // FIX(v1): ignore UI elements that belong to other apps (launcher, dialer, system UI);
            // Google Play services is kept for Google Sign-In account pickers.
            String pkgAttr = extractAttribute(attributes, "package");
            if (pkgAttr != null && !pkgAttr.isEmpty() && appPackage != null && !appPackage.isEmpty()
                    && !pkgAttr.equals(appPackage) && !pkgAttr.startsWith("com.google.android.gms") && !pkgAttr.equals("android")) {
                continue;
            }
            String resourceId = extractAttribute(attributes, "resource-id");
            String className = extractAttribute(attributes, "class");
            // FIX(v1): uiautomator exposes password inputs (inputType 0x81) as password="true"
            if ("true".equalsIgnoreCase(extractAttribute(attributes, "password"))) className = className + " [password]";
            if ("false".equalsIgnoreCase(extractAttribute(attributes, "enabled"))) className = className + " [disabled]";
            if ("true".equalsIgnoreCase(extractAttribute(attributes, "clickable"))) className = className + " [clickable]";
            String bounds = extractAttribute(attributes, "bounds");
            String textAttr = extractAttribute(attributes, "text");
            String contentDesc = extractAttribute(attributes, "content-desc");
            String visibleAttr = extractAttribute(attributes, "visible");
            String visibleToUser = extractAttribute(attributes, "visible-to-user");
            String enabledAttr = extractAttribute(attributes, "enabled");
            boolean hasBounds = bounds != null && !bounds.isEmpty();

            boolean visible;
            if (!visibleToUser.isEmpty()) {
                visible = "true".equalsIgnoreCase(visibleToUser);
            } else if (!visibleAttr.isEmpty()) {
                visible = "true".equalsIgnoreCase(visibleAttr);
            } else if (!enabledAttr.isEmpty()) {
                visible = "true".equalsIgnoreCase(enabledAttr) && hasBounds;
            } else {
                visible = hasBounds;
            }

            String finalText = (textAttr != null && !textAttr.isEmpty()) ? textAttr : text;
            if (contentDesc != null && !contentDesc.isEmpty()) {
                finalText = (finalText == null || finalText.isEmpty()) ? contentDesc : (finalText + " " + contentDesc);
            }
            out.add(new UIElement(tagName, finalText, resourceId, className, bounds, visible));
        }
        return out;
    }

    private boolean isWebViewPresent(List<UIElement> elements) {
        for (UIElement e : elements) {
            if (isWebViewClass(e.className)) {
                return true;
            }
        }
        return false;
    }

    private boolean isAnyWebViewLarge(List<UIElement> elements, double thresholdRatio) {
        int maxX = 0, maxY = 0;
        for (UIElement e : elements) {
            int[] r = parseBoundsRect(e.bounds);
            if (r != null) {
                maxX = Math.max(maxX, r[2]);
                maxY = Math.max(maxY, r[3]);
            }
        }
        long screenArea = (long) maxX * (long) maxY;
        if (screenArea <= 0) return false;
        for (UIElement e : elements) {
            if (isWebViewClass(e.className)) {
                int[] r = parseBoundsRect(e.bounds);
                if (r != null) {
                    long area = (long) (r[2] - r[0]) * (long) (r[3] - r[1]);
                    double ratio = area / (double) screenArea;
                    if (ratio >= thresholdRatio) return true;
                }
            }
        }
        return false;
    }

    private boolean hasLoginHintsInIdOrClass(List<UIElement> elements) {
        String[] hints = new String[]{"user", "email", "pass", "pwd", "login", "signin"};
        for (UIElement e : elements) {
            String id = e.resourceId == null ? "" : e.resourceId.toLowerCase();
            String cls = e.className == null ? "" : e.className.toLowerCase();
            for (String h : hints) {
                if (id.contains(h) || cls.contains(h)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isFocusedInWebView() {
        try {
            Process dumpProcess = Runtime.getRuntime().exec("adb shell uiautomator dump /dev/tty");
            BufferedReader dumpReader = new BufferedReader(new InputStreamReader(dumpProcess.getInputStream()));
            String line;
            while ((line = dumpReader.readLine()) != null) {
                if (line.contains("focused=\"true\"")) {
                    UIElement focused = parseUIElement(line);
                    dumpReader.close();
                    dumpProcess.waitFor();
                    return focused != null && isWebViewClass(focused.className);
                }
            }
            dumpReader.close();
            dumpProcess.waitFor();
        } catch (Exception ignore) {
        }
        return false;
    }

    /**
     * Get current foreground Activity name via dumpsys (best-effort)
     */
    private String getCurrentActivityName() {
        try {
            // Try dumpsys activity (newer Androids)
            Process p1 = Runtime.getRuntime().exec(new String[]{"bash", "-lc",
                    "adb shell dumpsys activity activities | grep -i mResumedActivity | tail -n 1"});
            BufferedReader r1 = new BufferedReader(new InputStreamReader(p1.getInputStream()));
            String l1 = r1.readLine();
            r1.close();
            p1.waitFor();
            if (l1 != null && !l1.trim().isEmpty()) {
                // Extract component like com.pkg/.ui.LoginActivity
                Matcher m = Pattern.compile("(\\S+)/(\\S+)").matcher(l1);
                if (m.find()) {
                    String component = m.group(1) + "/" + m.group(2);
                    return component;
                }
            }

            // Fallback to dumpsys window
            Process p2 = Runtime.getRuntime().exec(new String[]{"bash", "-lc",
                    "adb shell dumpsys window | grep -iE 'mCurrentFocus|mFocusedApp' | tail -n 1"});
            BufferedReader r2 = new BufferedReader(new InputStreamReader(p2.getInputStream()));
            String l2 = r2.readLine();
            r2.close();
            p2.waitFor();
            if (l2 != null && !l2.trim().isEmpty()) {
                Matcher m2 = Pattern.compile("(\\S+)/(\\S+)").matcher(l2);
                if (m2.find()) {
                    String component = m2.group(1) + "/" + m2.group(2);
                    return component;
                }
            }
        } catch (Exception ignore) {
        }
        return null;
    }

    /**
     * Start UI manager (ADB is already connected, no additional startup needed)
     */
    public boolean startUI() {
        try {
            // Robust wait for ADB device to be ready
            final int maxAttempts = 30; // ~60s with 2s interval
            final long sleepMs = 2000;

            for (int attempt = 1; attempt <= maxAttempts; attempt++) {
                Process process = Runtime.getRuntime().exec("adb devices");
                BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                String line;
                String readySerial = null;

                while ((line = reader.readLine()) != null) {
                    if (line.contains("List of devices")) {
                        continue;
                    }
                    String trimmed = line.trim();
                    // Only lines that end with 'device' (not 'offline', 'unauthorized')
                    if (trimmed.endsWith("device")) {
                        // serial is the first token before whitespace
                        String[] parts = trimmed.split("\\s+");
                        if (parts.length > 0) {
                            readySerial = parts[0];
                            break;
                        }
                    }
                }
                reader.close();
                process.waitFor();

                if (readySerial != null) {
                    // Verify boot completed
                    Process bootProc = Runtime.getRuntime().exec(new String[] {"bash", "-lc",
                            "adb -s " + readySerial + " shell getprop sys.boot_completed"});
                    BufferedReader bootReader = new BufferedReader(new InputStreamReader(bootProc.getInputStream()));
                    String bootVal = bootReader.readLine();
                    bootReader.close();
                    bootProc.waitFor();

                    boolean bootCompleted = bootVal != null && bootVal.trim().equals("1");

                    boolean provisionedOk = true; // optional check
                    try {
                        Process provProc = Runtime.getRuntime().exec(new String[] {"bash", "-lc",
                                "adb -s " + readySerial + " shell settings get global device_provisioned"});
                        BufferedReader provReader = new BufferedReader(
                                new InputStreamReader(provProc.getInputStream()));
                        String provVal = provReader.readLine();
                        provReader.close();
                        provProc.waitFor();
                        if (provVal != null) {
                            provisionedOk = provVal.trim().equals("1");
                        }
                    } catch (Exception ignore) {
                        // If settings service not available yet, ignore and rely on boot_completed
                    }

                    if (bootCompleted) {
                        System.out.println("ADB device ready: " + readySerial +
                                (provisionedOk ? " (provisioned)" : " (provisioning)"));
                        System.out.println("UI manager started successfully");
                        return true;
                    }
                }

                // Not ready yet; wait and retry
                try { Thread.sleep(sleepMs); } catch (InterruptedException ie) { /* ignore */ }
            }

            System.err.println("No ADB device ready within timeout");
            return false;
        } catch (Exception e) {
            System.err.println("UI manager startup failed: " + e.getMessage());
            return false;
        }
    }

    /**
     * Detect login page
     */
    // FIX(v1): only accept a login page that belongs to the app under test. Without this check the
    // detector matched launcher/dialer widgets (e.g. a "Phone" icon) as login fields after the app died.
    private boolean isAppInForeground() {
        AppLauncher.dismissPermissionDialogs();
        return AppLauncher.isInForeground(appPackage);
    }

    public boolean ensureAppInForeground() {
        if (isAppInForeground()) return true;
        System.out.println("[FOREGROUND] App under test is not in foreground; relaunching " + appPackage);
        tappedEntries.clear();   // the app restarted: earlier entries did not necessarily lead nowhere
        return AppLauncher.launch(appPackage);
    }

    // FIX(v1): if the screen has a login entry ("Sign in", "Log in") but no credential form, tap the
    // entry (up to 2 hops) before falling back to random Monkey exploration.
    private String lastLoginEntryBounds = null;
    // FIX(v1): WebView (DevTools) mode for login forms hidden from the accessibility tree
    private WebViewBridge web = null;
    private boolean webMode = false;
    private String webLoginUrl = null;
    private String webLoginDomText = null;   // page text before submitting, to tell new MFA prompts from static text
    public boolean isWebMode() { return webMode; }
    private String lastGuestBounds = null;
    private boolean preferGuestLogin = false;
    private boolean guestMode = false;
    public void setPreferGuestLogin(boolean b) { preferGuestLogin = b; guestMode = false; }
    // FIX(v1): SSO pages opened inside a WebView (Google/Facebook) take the service's own account in valid rounds
    private String googleAccount = null, facebookAccount = null;
    private boolean roundValid = false;
    public void setServiceAccounts(String google, String facebook) { googleAccount = google; facebookAccount = facebook; }
    public void setRoundValid(boolean v) { roundValid = v; mfaDismissChecked = false; mfaNotDismissable = null; }   // called once per round
    public boolean isRoundValid() { return roundValid; }
    private boolean serviceAccountAdopted = false;
    public boolean isServiceAccountAdopted() { return serviceAccountAdopted; }
    private void adoptServiceAccount(String url) {
        if (url == null) return;
        if (url.contains("accounts.google.com")) {
            googleLoginDetected = true;
            if (roundValid && googleAccount != null) serviceAccountAdopted = true;
            if (roundValid && googleAccount != null && !googleAccount.equals(pendingUsername)) {
                pendingUsername = googleAccount;
                serviceAccountAdopted = true;
                System.out.println("[WEBVIEW] Google sign-in page: using the Google test account");
            }
        } else if (url.matches("https?://([a-z]+\\.)?facebook\\.com/.*")) {
            facebookLoginDetected = true;
            if (roundValid && facebookAccount != null) serviceAccountAdopted = true;
            if (roundValid && facebookAccount != null && !facebookAccount.equals(pendingUsername)) {
                pendingUsername = facebookAccount;
                serviceAccountAdopted = true;
                System.out.println("[WEBVIEW] Facebook sign-in page: using the Facebook test account");
            }
        }
    }
    private boolean stopAtIdentifier = false;
    public void setStopAtIdentifier(boolean b) { stopAtIdentifier = b; }
    public boolean isGuestMode() { return guestMode; }

    /** Tap the anonymous/guest login option; the login is then judged like any other submitted login. */
    public boolean guestLogin() {
        int[] r = parseBoundsRect(lastGuestBounds);
        if (r == null) return false;
        loginClickActivity = AppLauncher.topActivityLine().replaceAll(".*\\{[^ ]+ u0 ([^ ]+).*", "$1");
        loginButtonClickTime = System.currentTimeMillis();
        try {
            new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf((r[0] + r[2]) / 2), String.valueOf((r[1] + r[3]) / 2))
                .redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
        } catch (Exception e) { return false; }
        System.out.println("[LOGIN] Tapped credential-free login option");
        return true;
    }
    private WebViewBridge web() { if (web == null) web = new WebViewBridge(appPackage); return web; }

    /** Fill and submit a web login form with trusted input events (identifier-only screens: identifier + Next). */
    public boolean webLogin(String username, String password) {
        try { Thread.sleep(1500); } catch (InterruptedException ignored) { }   // let sheet/slide-in animations settle
        Map<String, String> m = web().inspect();
        if (m.isEmpty()) return false;
        webLoginUrl = m.get("url");
        webLoginDomText = web().eval("(document.body&&document.body.innerText||'').slice(0,5000)");
        boolean pwShown = !"0".equals(m.get("pw"));
        boolean filled = usernameEnteredInStep1 ? web().fillTrusted(null, password)
            : web().fillTrusted(username, pwShown ? password : null);
        System.out.println("[WEBVIEW] filled form (password field " + (pwShown ? "present" : "absent") + "): " + filled);
        loginClickActivity = AppLauncher.topActivityLine().replaceAll(".*\\{[^ ]+ u0 ([^ ]+).*", "$1");
        loginButtonClickTime = System.currentTimeMillis();
        return filled && web().submit();
    }
    // FIX(v1): two-step login support (identifier screen -> password screen)
    private String pendingUsername = null;
    private boolean usernameEnteredInStep1 = false;
    private boolean twoStepJustFilled = false;
    private List<UIElement> lastScanElements = null;

    public void setPendingUsername(String u) { googleButtonMode = false; serviceAccountAdopted = false; loginButtonClickTime = 0; lastWaitEndedInProgress = false; pendingUsername = u; usernameEnteredInStep1 = false; mfaHandled = false; lastMfaOutcome = null; loginClickActivity = ""; webMode = false; webLoginUrl = null; mfaAfterSubmit = false; }
    private boolean mfaAfterSubmit = false;
    public boolean mfaPromptAfterSubmit() { return mfaAfterSubmit; }

    // FIX(v1): MFA support. Authenticator-app accounts get a TOTP code; other accounts stop at the
    // MFA prompt (MFACodePending), which is a legitimate login state, not a completed login.
    private java.util.Map<String, String> totpSecrets = new java.util.HashMap<>();
    private boolean mfaHandled = false;
    public void setTotpSecrets(java.util.Map<String, String> m) { if (m != null) totpSecrets = m; }

    private static final java.util.regex.Pattern MFA_HINT = java.util.regex.Pattern.compile(
        "(?i)(two[- ]?factor|2fa|authenticator|verification code|one[- ]?time|\\botp\\b|security code|enter (the )?code|6[- ]digit|recovery code|security key|authenticate with your)");

    /** Returns the MFA code input on screen, or null if this is not an MFA prompt. */
    private UIElement findMfaInput(List<UIElement> els) {
        if (findPasswordAnchor(els) != null) return null;
        boolean hint = false; UIElement input = null; int inputs = 0;
        for (UIElement e : els) {
            if (e.text != null && MFA_HINT.matcher(e.text).find()) hint = true;
            if (e.resourceId != null && MFA_HINT.matcher(e.resourceId.replace('_', ' ')).find()) hint = true;
            if (isInputClass(e.className) && boundsOf(e) != null) { inputs++; if (input == null) input = e; }
        }
        return (hint && inputs >= 1) ? input : null;
    }

    private void submitMfa(List<UIElement> els) {
        try {
            new ProcessBuilder("adb", "shell", "input", "keyevent", "KEYCODE_ENTER").redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
            Thread.sleep(3000);
            List<UIElement> now = getAllUIElements();
            if (findMfaInput(now) == null) return;
            for (UIElement e : now) {
                if (e.text == null || boundsOf(e) == null) continue;
                if (e.text.trim().toLowerCase().matches("(verify|continue|next|submit|confirm|done|log ?in|sign ?in)")) {
                    int[] r = boundsOf(e);
                    new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf((r[0] + r[2]) / 2), String.valueOf((r[1] + r[3]) / 2))
                        .redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
                    return;
                }
            }
        } catch (Exception ignored) { }
    }

    private boolean onMfaScreen() {
        if (lastScanElements == null) return false;
        if (findMfaInput(lastScanElements) != null) return true;
        for (UIElement e : lastScanElements) if (e.text != null && MFA_HINT.matcher(e.text).find()) return true;
        return false;
    }

    /** "progressed" if an MFA step was completed, "pending" if MFA cannot be completed, null otherwise. */
    private String handleMfaDuringNavigation() {
        if (lastScanElements == null || !onMfaScreen()) return null;
        String secret = pendingUsername == null ? null : totpSecrets.get(pendingUsername);
        try {
            UIElement input = findMfaInput(lastScanElements);
            if (input != null) {
                if (secret == null) {
                    System.out.println("[MFA] Code prompt during navigation without an authenticator secret (MFACodePending)");
                    lastMfaOutcome = "pending";
                    return "pending";
                }
                if (mfaHandled) return null;
                // FIX(v1): a user must be able to back out of an MFA prompt (#6647-style), whether or not they have
                // the code: test it once per round before answering. A prompt that closes lets navigation continue.
                // only on a working network: on a degraded one the app may close the prompt by itself (failed request)
                if (!mfaDismissChecked && "normal".equals(scheduledCondition) && "normal".equals(roundCondition)) {
                    mfaDismissChecked = true;
                    String prompt = currentMfaPromptText();
                    Boolean dismissed = tryDismissMfaPrompt();
                    if (Boolean.TRUE.equals(dismissed)) {
                        System.out.println("[MFA] Prompt can be dismissed; continuing the login");
                        if (!AppLauncher.isInForeground(appPackage)) AppLauncher.launch(appPackage);
                        return "progressed";
                    }
                    if (dismissed == null) System.out.println("[MFA] Prompt dismissal could not be judged (screen unreadable)");
                    else {
                        System.out.println("[MFA] Prompt cannot be dismissed (Cancel/Back keep it open)");
                        mfaNotDismissable = prompt == null ? "MFA code prompt" : prompt;
                    }
                    lastScanElements = getAllUIElements();
                    input = findMfaInput(lastScanElements);
                    if (input == null) return null;
                }
                mfaHandled = true;
                int[] r = boundsOf(input);
                System.out.println("[MFA] Code prompt during navigation; entering TOTP code");
                clickAndInputText((r[0] + r[2]) / 2, (r[1] + r[3]) / 2, Totp.freshCode(secret));
                submitMfa(lastScanElements);
                lastMfaOutcome = "totp-entered";
                Thread.sleep(5000);
                return "progressed";
            }
            // method selection screen
            UIElement choice = null;
            for (UIElement e : lastScanElements) {
                String t = (e.text == null ? "" : e.text).toLowerCase();
                if (boundsOf(e) == null) continue;
                if (secret != null && t.contains("authenticator")) { choice = e; break; }
            }
            if (choice == null) {
                System.out.println("[MFA] MFA method selection without a usable authenticator (MFACodePending)");
                lastMfaOutcome = "pending";
                return "pending";
            }
            int[] r = boundsOf(choice);
            System.out.println("[MFA] Selecting authenticator-app MFA method");
            new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf((r[0] + r[2]) / 2), String.valueOf((r[1] + r[3]) / 2))
                .redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
            Thread.sleep(3000);
            return "progressed";
        } catch (Exception e) {
            return null;
        }
    }

    /** Text of the current MFA prompt (instructions), or null. */
    public String currentMfaPromptText() {
        try {
            List<UIElement> els = getAllUIElements();
            lastScanElements = els;
            for (UIElement e : els) if (e.text != null && MFA_HINT.matcher(e.text).find()) return e.text.trim();
            for (UIElement e : els) if (e.text != null && e.text.toLowerCase().contains("code")) return e.text.trim();
        } catch (Exception ignored) { }
        return null;
    }

    /** TRUE if no MFA prompt is shown, FALSE if one is, null if the screen cannot be read (dump keeps failing). */
    private Boolean mfaPromptGone() throws InterruptedException {
        if (!AppLauncher.isInForeground(appPackage)) return Boolean.TRUE;
        for (int i = 0; i < 3; i++) {
            String t = currentMfaPromptText();
            if (!lastDumpFailed) return t == null;
            Thread.sleep(2000);
        }
        return null;
    }

    /**
     * Try to leave the MFA prompt (Cancel button, then BACK). TRUE if the prompt went away, FALSE if it stayed,
     * null if the screen could not be read (no verdict).
     */
    public Boolean tryDismissMfaPrompt() {
        try {
            for (UIElement e : getAllUIElements()) {
                if (e.text == null || boundsOf(e) == null) continue;
                if (e.text.trim().toLowerCase().matches("(cancel|cancel login|close|back|not now)")) {
                    int[] r = boundsOf(e);
                    new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf((r[0] + r[2]) / 2), String.valueOf((r[1] + r[3]) / 2))
                        .redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
                    break;
                }
            }
            Thread.sleep(3000);
            Boolean gone = mfaPromptGone();
            if (!Boolean.FALSE.equals(gone)) return gone;
            new ProcessBuilder("adb", "shell", "input", "keyevent", "KEYCODE_BACK").redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
            Thread.sleep(3000);
            return mfaPromptGone();
        } catch (Exception e) { return null; }
    }

    private String lastMfaOutcome = null;   // null | "totp-entered" | "pending"
    private boolean mfaDismissChecked = false;
    private String scheduledCondition = "normal";   // the round's planned condition (fallbacks do not change it)
    public void setScheduledCondition(String c) { scheduledCondition = c == null ? "normal" : c; }
    private String mfaNotDismissable = null;
    /** Prompt text of an MFA prompt found not dismissable since the last call (null if none). */
    public String takeMfaNotDismissable() { String t = mfaNotDismissable; mfaNotDismissable = null; return t; }
    public void markMfaDismissChecked() { mfaDismissChecked = true; }
    public String getLastMfaOutcome() { return lastMfaOutcome; }

    /** If the screen shows a single identifier input and no password field, type the username into it. */
    private void maybeFillIdentifierStep() {
        if (pendingUsername == null || usernameEnteredInStep1 || lastScanElements == null) return;
        if (findPasswordAnchor(lastScanElements) != null) return;
        UIElement only = null; int inputs = 0;
        for (UIElement e : lastScanElements) {
            if (isInputClass(e.className) && boundsOf(e) != null) { inputs++; only = e; }
        }
        if (inputs != 1) return;
        // FIX(v1): only an identifier screen: the input or a label must talk about email/username/phone,
        // and it must not be a search box
        boolean idHint = false;
        java.util.regex.Pattern idp = java.util.regex.Pattern.compile("(?i)(e-?mail|user ?name|phone|identifier|account|login|sign ?in)");
        for (UIElement e : lastScanElements) {
            String tx = (e.text == null ? "" : e.text) + " " + (e.resourceId == null ? "" : e.resourceId);
            if (idp.matcher(tx).find()) idHint = true;
        }
        String own = ((only.text == null ? "" : only.text) + " " + (only.resourceId == null ? "" : only.resourceId)).toLowerCase();
        boolean search = own.contains("search");
        for (UIElement e : lastScanElements) if (e.text != null && e.text.trim().equalsIgnoreCase("search") && boundsOf(e) != null
                && java.util.Arrays.equals(boundsOf(e), boundsOf(only))) search = true;
        if (!idHint || search) return;
        int[] r = boundsOf(only);
        int cx = (r[0] + r[2]) / 2, cy = (r[1] + r[3]) / 2;
        System.out.println("[TWO_STEP] Identifier-only screen; entering username before continuing");
        if (clickAndInputText(cx, cy, pendingUsername)) usernameEnteredInStep1 = true;
        twoStepJustFilled = true;
    }
    private int lastLoginEntryPriority = 99;
    private boolean lastSignInHeading = false;

    // entries already tapped during this navigation (an entry that leads nowhere is not tapped again)
    private final java.util.Set<String> tappedEntries = new java.util.HashSet<>();
    private String lastLoginEntryKey = null;

    /**
     * FIX(v1): after the network is restored, reload a WebView page that failed to load (DevTools Page.reload);
     * returns false when no WebView page is available (caller relaunches the app instead).
     */
    public boolean reloadFailedWebPage() {
        try {
            String url = web().visiblePageUrl();
            if (url == null) return false;
            if (web().call("Page.reload", "{\"ignoreCache\":true}") == null) return false;
            System.out.println("[WEBVIEW] Reloaded the page after restoring the network (" + (url.isEmpty() ? "blank" : url.replaceAll("\\?.*", "")) + ")");
            Thread.sleep(6000);
            return true;
        } catch (Exception e) { return false; }
    }

    private boolean loadErrorProbed = false;
    private String roundCondition = "normal";
    public void setRoundCondition(String c) {
        String n = c == null ? "normal" : c;
        if (!n.equals(roundCondition)) loadErrorProbed = false;   // one load-failure probe per network condition
        roundCondition = n;
    }

    public boolean detectLoginPage() {
        tappedEntries.clear();
        for (int hop = 0; hop <= 6; hop++) {
            lastLoginEntryBounds = null; lastLoginEntryPriority = 99; lastGuestBounds = null; lastLoginEntryKey = null;
            if (detectLoginPageOnce()) return true;
            // FIX(v1): credential-free (anonymous/guest) login offered next to SSO: use it when the round asks for it
            if (preferGuestLogin && lastGuestBounds != null && lastLoginEntryPriority >= 4) {
                guestMode = true;
                System.out.println("[LOGIN_ENTRY] Credential-free login offered; using it as this round's login method");
                return true;
            }
            if (hop == 6) return false;
            if (lastLoginEntryBounds == null && !onMfaScreen()) return false;
            // FIX(v1): login entries inside a WebView may be missing from the accessibility tree
            Map<String, String> wnav = web().inspect();
            if (!wnav.isEmpty() && "0".equals(wnav.getOrDefault("pw", "0"))) {
                String hit = web().clickText("^(sign in|log in|login|sign in with email|use email)$");
                if (hit != null) {
                    System.out.println("[WEBVIEW] Tapped web login entry '" + hit + "'");
                    try { Thread.sleep(4000); } catch (InterruptedException ignored) { }
                    continue;
                }
            }
            if (!wnav.isEmpty() && tryWebRecovery()) continue;
            // FIX(v1): MFA screens that appear during navigation (e.g. email -> 2FA -> password)
            String mfaNav = handleMfaDuringNavigation();
            if ("pending".equals(mfaNav)) return false;
            if ("progressed".equals(mfaNav)) { lastLoginEntryBounds = null; continue; }
            maybeFillIdentifierStep();
            int[] r = parseBoundsRect(lastLoginEntryBounds);
            if (r == null) return false;
            int cx = (r[0] + r[2]) / 2, cy = (r[1] + r[3]) / 2;
            System.out.println("[LOGIN_ENTRY] No credential form yet; tapping login entry at (" + cx + "," + cy + ")");
            if (lastLoginEntryKey != null) tappedEntries.add(lastLoginEntryKey);
            // FIX(v1): on a degraded network a page opened by this tap may fail at once and the app's error handling
            // runs right away; probe responsiveness while it runs (an observation afterwards would be too late)
            if (!"normal".equals(roundCondition) && lastLoginEntryPriority >= 1) {
                System.out.println("[ANR_PROBE] Entry tapped on a '" + roundCondition + "' network; probing responsiveness");
                new Thread(() -> { try { Thread.sleep(800); probeResponsiveness(); } catch (Exception ignored) { } }).start();
            }
            try {
                new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf(cx), String.valueOf(cy))
                    .redirectErrorStream(true).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
                Thread.sleep(twoStepJustFilled ? 7000 : 4000);
                twoStepJustFilled = false;
                if (lastLoginEntryPriority >= 4) {
                    // service entries open web pages that can take a while to load: wait for a web form;
                    // a WebView that stays blank (never navigated) is recovered once by relaunching the app
                    int blank = 0; boolean relaunched = false;
                    for (int w = 0; w < 20; w++) {
                        Map<String, String> wm = web().inspect();
                        if (!wm.isEmpty() && (!"0".equals(wm.getOrDefault("pw", "0")) || !"0".equals(wm.getOrDefault("id", "0")))) break;
                        String u = web().visiblePageUrl();
                        blank = (u != null && u.isEmpty()) ? blank + 1 : 0;
                        if (blank >= 5 && !relaunched) {
                            System.out.println("[WEBVIEW] Page stayed blank after opening the service; relaunching the app");
                            new ProcessBuilder("adb", "shell", "am", "force-stop", appPackage).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
                            AppLauncher.launch(appPackage);
                            relaunched = true; blank = 0;
                        }
                        Thread.sleep(3000);
                    }
                }
            } catch (Exception ignored) { }
        }
        return false;
    }

    private boolean detectLoginPageOnce() {
        try {
            System.out.println("Using ADB to detect login page...");
            if (!ensureAppInForeground()) {
                System.out.println("[FOREGROUND] App under test still not in foreground; login page not detected");
                return false;
            }

            // Reset detection flags (accumulate across small retry window)
            resetDetectionFlags();

            int retries = Math.max(1, configLoader.getDetectionLoginRetries());
            int intervalMs = Math.max(100, configLoader.getDetectionLoginRetryIntervalMs());
            int voteThreshold = Math.max(1, configLoader.getLoginVoteThreshold());

            boolean loginButtonDetected = false;
            boolean registrationForm = false;

            for (int i = 0; i < retries; i++) {
                // Get UI element information for the current page
                List<UIElement> elements = getAllUIElements();
                lastScanElements = elements;

                // FIX(v1): a form with two password inputs (password + confirm) or a sign-up heading is a
                // registration form, not a login form (cf. reviewer R2-1); prefer its "Login" entry instead.
                int pwInputs = 0;
                boolean signUpText = false, signInHeading = false;
                for (UIElement e : elements) {
                    if (e.className != null && e.className.contains("[password]") && boundsOf(e) != null) pwInputs++;
                    String lt = e.text == null ? "" : e.text.trim().toLowerCase();
                    if (lt.matches("(create (your |an |a )?(free )?account|sign up|register|create account)")) signUpText = true;
                    if (lt.matches("(sign in|log in|login|sign in to .*|log in to .*|welcome back)")) signInHeading = true;
                }
                // a sign-in page commonly offers a "Create account" link; only a sign-up text without a sign-in heading
                // marks a registration form
                if (pwInputs >= 2 || (signUpText && !signInHeading)) registrationForm = true;
                lastSignInHeading = signInHeading;

                // Iterate through all elements to check if they match the login element pattern
                for (UIElement element : elements) {
                    // Check Google login
                    if (!googleLoginDetected && matchesGoogleLoginPattern(element.text, element.resourceId)) {
                        googleLoginDetected = true;
                        System.out.println("Google login element detected: text='" + element.text + "' id='" + element.resourceId + "' class='" + element.className + "'");
                    }

                    // Check Facebook login
                    if (!facebookLoginDetected && matchesFacebookLoginPattern(element.text, element.resourceId)) {
                        facebookLoginDetected = true;
                        System.out.println("Facebook login element detected: text='" + element.text + "' id='" + element.resourceId + "' class='" + element.className + "'");
                    }

                    // Check username field
                    if (!usernameFieldDetected && matchesUsernamePattern(element.text, element.resourceId, element.className)) {
                        usernameFieldDetected = true;
                        System.out.println("Username field detected: " + logSafe(element.text, element.className) + " (ID: " + element.resourceId + ")");
                    }

                    // Check password field
                    if (!passwordFieldDetected && matchesPasswordPattern(element.text, element.resourceId, element.className)) {
                        passwordFieldDetected = true;
                        System.out.println("Password field detected: " + logSafe(element.text, element.className) + " (ID: " + element.resourceId + ")");
                    }

                    // Check login button
                    // FIX(v1): unlabeled toolbar icons (e.g. a settings gear without content description) are a
                    // last-resort way into account screens
                    if (element.visible && (element.text == null || element.text.trim().isEmpty()) && element.className != null
                            && element.className.contains("[clickable]") && lastLoginEntryPriority > 6) {
                        int[] ib = boundsOf(element);
                        if (ib != null && ib[1] < 260 && ib[3] - ib[1] < 220 && ib[2] - ib[0] < 220 && (ib[0] + ib[2]) / 2 > 700
                                && !tappedEntries.contains("@" + element.bounds)) {
                            lastLoginEntryBounds = element.bounds; lastLoginEntryPriority = 6; lastLoginEntryKey = "@" + element.bounds;
                        }
                    }
                    if (element.visible && element.text != null && element.text.trim().length() <= 40 && boundsOf(element) != null
                            && !tappedEntries.contains(element.text.trim().toLowerCase() + "@" + element.bounds)) {
                        String t = element.text.trim().toLowerCase();
                        int prevPriority = lastLoginEntryPriority;
                        if (t.matches("(anonymous|guest|continue as guest|login as guest|use without (an )?account|try as guest)")) {
                            lastGuestBounds = element.bounds;
                        }
                        if (t.matches("(sign in|log in|login|signin|log on|sign in / register|sign in or register)")
                                || t.matches(".*(account|member)\\?\\s*(log ?in|sign ?in)")) {
                            lastLoginEntryBounds = element.bounds; lastLoginEntryPriority = 1;
                        } else if (lastLoginEntryPriority > 2 && t.matches("(open account menu|account|sign in or register)")) {
                            lastLoginEntryBounds = element.bounds; lastLoginEntryPriority = 2;
                        } else if (lastLoginEntryPriority > 3 && (t.matches("(go to account menu|my account|profile|account and sync|accounts?( settings)?|content|sync|services|integrations)")
                                || (t.equals("settings") && boundsOf(element)[1] > 230))) {
                            lastLoginEntryBounds = element.bounds; lastLoginEntryPriority = 3;
                        } else if (lastLoginEntryPriority > 3 && t.matches("(get started|continue|next|skip|start|got it|let's go|lets go|finish|done|accept|agree|i agree)")) {
                            lastLoginEntryBounds = element.bounds; lastLoginEntryPriority = 3;
                        } else if (lastLoginEntryPriority > 4 && t.matches("(facebook|google)( (tasks|account|sign[- ]?in|login))?")) {
                            lastLoginEntryBounds = element.bounds; lastLoginEntryPriority = 4;   // SSO / service selection
                        } else if (lastLoginEntryPriority > 5 && t.matches("(twitch|reddit|github|microsoft|x|twitter|instagram|bluesky|mastodon)")) {
                            lastLoginEntryBounds = element.bounds; lastLoginEntryPriority = 5;
                        }
                        if (lastLoginEntryPriority != prevPriority) lastLoginEntryKey = t + "@" + element.bounds;
                    }
                    if (!loginButtonDetected && matchesLoginButtonPattern(element.text, element.resourceId)) {
                        loginButtonDetected = true;
                        System.out.println("Login button detected: " + element.text + " (ID: " + element.resourceId + ")");
                    }
                }

                // Activity name based vote (hint)
                boolean activityMatches = false;
                String currentActivity = getCurrentActivityName();
                if (currentActivity != null) {
                    try {
                        activityMatches = matchesLoginActivityPattern(currentActivity);
                        if (activityMatches) {
                            System.out.println("Activity hint matched for login: " + currentActivity);
                        } else {
                            System.out.println("Activity hint not matched: " + currentActivity);
                        }
                    } catch (Exception e) {
                        // pattern may be invalid; ignore
                    }
                } else {
                    System.out.println("Current activity unknown (dumpsys parse failed)");
                }

                // Early stop if already meets vote
                int votes = (usernameFieldDetected ? 1 : 0) + (passwordFieldDetected ? 1 : 0)
                        + (loginButtonDetected ? 1 : 0) + (activityMatches ? 1 : 0);
                if (votes >= voteThreshold) {
                    break;
                }

                // Wait for possible delayed rendering
                if (i < retries - 1) {
                    try { Thread.sleep(intervalMs); } catch (InterruptedException ie) { /* ignore */ }
                }
            }

            // Final recompute with latest activity state
            boolean finalActivityMatches = false;
            String finalActivity = getCurrentActivityName();
            if (finalActivity != null) {
                try {
                    finalActivityMatches = matchesLoginActivityPattern(finalActivity);
                } catch (Exception e) {
                    // ignore
                }
            }
            int votes = (usernameFieldDetected ? 1 : 0) + (passwordFieldDetected ? 1 : 0)
                    + (loginButtonDetected ? 1 : 0) + (finalActivityMatches ? 1 : 0);

            // WebView-only heuristics (weak signals)
            List<UIElement> snapshotElements = getAllUIElements();
            boolean webViewPresent = isWebViewPresent(snapshotElements);
            boolean webViewLarge = false;
            boolean focusedInWebView = false;
            boolean hasIdClassHints = false;

            if (webViewPresent) {
                webViewLarge = isAnyWebViewLarge(snapshotElements, 0.6);
                focusedInWebView = isFocusedInWebView();
                hasIdClassHints = hasLoginHintsInIdOrClass(snapshotElements);
            }

            // FIX(v1): per paper Section V-B a credential login page needs a password field; screens with
            // only a "Sign in" entry (e.g. the app's home screen) are not login pages.
            if (registrationForm) {
                System.out.println("[LOGIN_PAGE] Registration (sign-up) form detected; not treated as a login page");
                passwordFieldDetected = false;
            }
            webMode = false;
            if (!passwordFieldDetected && !registrationForm) {
                Map<String, String> wm = web().inspect();
                if (!wm.isEmpty()) {
                    System.out.println("[WEBVIEW] page: " + wm);
                    adoptServiceAccount(wm.getOrDefault("url", ""));
                    // FIX(v1): a main-frame load failure is where apps run their error handling; make a blocked UI
                    // thread observable (ANR) with one responsiveness probe per navigation
                    if (wm.getOrDefault("url", "").startsWith("chrome-error:") && !loadErrorProbed) {
                        loadErrorProbed = true;
                        System.out.println("[WEBVIEW] Main-frame load failed; probing UI responsiveness");
                        probeResponsiveness();
                    }
                    if (!"0".equals(wm.get("pw"))) {
                        webMode = true;
                        System.out.println("[WEBVIEW] Login form found in WebView DOM");
                        return true;
                    }
                    if (pendingUsername != null && !usernameEnteredInStep1 && "1".equals(wm.getOrDefault("id", "0"))
                            && !wm.getOrDefault("btn", "").isEmpty()) {
                        // an identifier step has exactly one text input (account menus with search boxes do not count)
                        if (stopAtIdentifier && "1".equals(wm.getOrDefault("id", "0"))) {
                            System.out.println("[WEBVIEW] Identifier-only web form reached (rotation checks run on it)");
                            return true;
                        }
                        System.out.println("[WEBVIEW] Identifier-only web form; entering username and continuing");
                        if (web().fillTrusted(pendingUsername, null) && web().submit()) usernameEnteredInStep1 = true;
                        Thread.sleep(7000);
                        Map<String, String> next = web().inspect();
                        if (!"0".equals(next.getOrDefault("pw", "0"))) { webMode = true; return true; }
                    }
                }
            }
            boolean isLoginByVote = passwordFieldDetected && votes >= voteThreshold;
            // FIX(v1): a sign-in screen that only offers account providers (e.g. "Google Tasks") is an SSO login page too
            boolean isLoginBySso = (googleLoginDetected || facebookLoginDetected)
                && (usernameFieldDetected || passwordFieldDetected || loginButtonDetected || lastSignInHeading);
            boolean isLoginByWebViewHeur = webViewPresent && passwordFieldDetected && (
                    votes >= 1 ||
                    (webViewLarge && hasIdClassHints) ||
                    (focusedInWebView && hasIdClassHints)
            );
            boolean isLoginPage = isLoginByVote || isLoginBySso || isLoginByWebViewHeur;
            // FIX(v1): forms hosted in a WebView are driven through the DOM even when partially visible to
            // accessibility: the DOM exposes real values and busy states the accessibility tree misses
            if (isLoginPage && passwordFieldDetected) {
                Map<String, String> dom = web().inspect();
                if (!dom.isEmpty() && !"0".equals(dom.getOrDefault("pw", "0"))) {
                    webMode = true;
                    adoptServiceAccount(dom.getOrDefault("url", ""));
                    System.out.println("[WEBVIEW] Credential form is in a WebView; using DOM mode " + dom);
                }
            }

            System.out.println("Login page detection result: " + isLoginPage);
            System.out.println("  - Votes(username,password,button): " + votes + "/" + voteThreshold);
            System.out.println("  - Google login: " + googleLoginDetected);
            System.out.println("  - Facebook login: " + facebookLoginDetected);
            System.out.println("  - Username field: " + usernameFieldDetected);
            System.out.println("  - Password field: " + passwordFieldDetected);
            System.out.println("  - Login button: " + loginButtonDetected);
            if (finalActivity != null) {
                System.out.println("  - Current activity: " + finalActivity + " (match: " + finalActivityMatches + ")");
            } else {
                System.out.println("  - Current activity: unknown");
            }
            if (webViewPresent) {
                System.out.println("  - WebView present: true");
                System.out.println("  - WebView large(>60%): " + webViewLarge);
                System.out.println("  - Focused in WebView: " + focusedInWebView);
                System.out.println("  - WebView id/class hints: " + hasIdClassHints);
            }

            return isLoginPage;

        } catch (Exception e) {
            System.err.println("Login page detection failed: " + e.getMessage());
            return false;
        }
    }

    /**
     * Monitor UI element changes in real-time (called during Monkey execution)
     */
    public void monitorUIElements() {
        try {
            // Get current visible UI elements
            List<UIElement> visibleElements = getVisibleUIElements();

            for (UIElement element : visibleElements) {
                // Check if it's a new login element detected
                if (!googleLoginDetected && matchesGoogleLoginPattern(element.text, element.resourceId)) {
                    googleLoginDetected = true;
                    System.out.println("Real-time detection of Google login element: " + element.text);
                }

                if (!facebookLoginDetected && matchesFacebookLoginPattern(element.text, element.resourceId)) {
                    facebookLoginDetected = true;
                    System.out.println("Real-time detection of Facebook login element: " + element.text);
                }

                if (!usernameFieldDetected
                        && matchesUsernamePattern(element.text, element.resourceId, element.className)) {
                    usernameFieldDetected = true;
                    System.out.println("Real-time detection of username field: " + logSafe(element.text, element.className));
                }

                if (!passwordFieldDetected
                        && matchesPasswordPattern(element.text, element.resourceId, element.className)) {
                    passwordFieldDetected = true;
                    System.out.println("Real-time detection of password field: " + logSafe(element.text, element.className));
                }
            }

        } catch (Exception e) {
            System.err.println("UI element monitoring failed: " + e.getMessage());
        }
    }

    /**
     * Click at coordinates and input text (KISS principle - keep it simple)
     */
    public boolean clickAndInputText(int x, int y, String text) {
        try {
            System.out.println(String.format("[INPUT] Clicking at (%d, %d) to focus field", x, y));
            
            // Click to focus the field
            Process clickProcess = Runtime.getRuntime().exec(
                String.format("adb shell input tap %d %d", x, y)
            );
            int clickExitCode = clickProcess.waitFor();
            if (clickExitCode != 0) {
                System.err.println("[INPUT] Click command failed with exit code: " + clickExitCode);
                return false;
            }
            
            // Wait for field to focus and keyboard to appear (increased from 800ms)
            Thread.sleep(1200);
            
            // Use char-by-char input for reliability with special characters
            System.out.println(String.format("[INPUT] Inputting text char-by-char (length: %d)", text.length()));
            for (int i = 0; i < text.length(); i++) {
                char c = text.charAt(i);
                String charStr = String.valueOf(c);
                
                // For special characters, use keyevent codes
                if (c == ' ') {
                    // Space keyevent
                    Process spaceProcess = Runtime.getRuntime().exec("adb shell input keyevent 62");
                    spaceProcess.waitFor();
                } else {
                    // FIX(v1): quote for the device shell as a single argument ('...' with ' -> '\''),
                    // verified for all special characters used in the credential pools. The previous
                    // Runtime.exec(String) path did not handle quotes and failed on a bare single quote.
                    String quoted = "'" + charStr.replace("'", "'\\''") + "'";
                    Process charProcess = new ProcessBuilder("adb", "shell", "input text " + quoted)
                        .redirectErrorStream(true).start();
                    charProcess.getInputStream().readAllBytes();
                    int exitCode = charProcess.waitFor();
                    if (exitCode != 0) {
                        System.err.println(String.format("[INPUT] Failed to input char '%s' at position %d (exit code: %d)",
                                                         c, i, exitCode));
                        return false;
                    }
                }

                // Small delay between characters for stability
                if (i % 5 == 0 && i > 0) {
                    Thread.sleep(50);
                }
            }
            
            System.out.println("[INPUT] All characters inputted successfully");
            
            // Wait a bit for input to be processed
            Thread.sleep(300);
            
            // Update cache with last click coordinates
            UIElementCache.getInstance().setLastClickCoordinates(x, y);
            
            System.out.println("[INPUT] Text input completed successfully");
            return true;
        } catch (Exception e) {
            System.err.println("Failed to click and input text at (" + x + "," + y + "): " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Input credentials
     */
    public boolean inputCredentials(String username, String password) {
        return inputCredentials(username, password, true);
    }
    
    /**
     * Input credentials WITHOUT clicking login button (for screenshot purposes)
     */
    public boolean inputCredentialsOnly(String username, String password) {
        try {
            System.out.println("Using ADB to input credentials (without clicking button)...");

            // Find username input field
            UIElement usernameField = usernameEnteredInStep1 ? null : findUsernameField();
            if (usernameField == null && !usernameEnteredInStep1) {
                System.err.println("[CREDENTIAL_INPUT] Username field not found!");
                return false;
            }
            int[] coords = null;
            if (usernameEnteredInStep1) {
                System.out.println("[CREDENTIAL_INPUT] Username already entered on the identifier screen (two-step login)");
            } else {
            
            // Extract coordinates from bounds and click
            coords = extractCoordinates(usernameField.bounds);
            System.out.println("[CREDENTIAL_INPUT] Found username field at (" + coords[0] + "," + coords[1] + ")");
            System.out.println("[CREDENTIAL_INPUT] Input username: " + username);
            boolean usernameInputted = clickAndInputText(coords[0], coords[1], username);
            if (!usernameInputted) {
                System.err.println("[CREDENTIAL_INPUT] Failed to input username!");
                return false;
            }
            Thread.sleep(500);
            }

            // Find password input field
            UIElement passwordField = findPasswordField();
            if (passwordField == null) {
                System.err.println("[CREDENTIAL_INPUT] Password field not found!");
                return false;
            }
            
            // Extract coordinates and input password
            coords = extractCoordinates(passwordField.bounds);
            System.out.println("[CREDENTIAL_INPUT] Found password field at (" + coords[0] + "," + coords[1] + ")");
            System.out.println("[CREDENTIAL_INPUT] Input password: [" + password.length() + " chars]");
            boolean passwordInputted = clickAndInputText(coords[0], coords[1], password);
            if (!passwordInputted) {
                System.err.println("[CREDENTIAL_INPUT] Failed to input password!");
                return false;
            }
            Thread.sleep(500);
            
            System.out.println("[CREDENTIAL_INPUT] Credentials inputted successfully (button NOT clicked)");
            return true;

        } catch (Exception e) {
            System.err.println("[CREDENTIAL_INPUT] Input credentials failed: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
    
    /**
     * Click login button (separate from input for screenshot purposes)
     */
    /** FIX(v1): hide the soft keyboard only if it is shown (BACK would otherwise leave the screen). */
    public void hideKeyboardIfShown() {
        try {
            String ime = AppLauncher.run("adb", "shell", "dumpsys", "input_method");
            if (ime.contains("mInputShown=true") || ime.contains("isInputViewShown=true")) {
                new ProcessBuilder("adb", "shell", "input", "keyevent", "KEYCODE_BACK").start().waitFor(5, java.util.concurrent.TimeUnit.SECONDS);
                Thread.sleep(800);
            }
        } catch (Exception ignored) { }
    }

    public boolean clickLoginButton() {
        try {
            hideKeyboardIfShown();   // FIX(v1): the keyboard shifts or hides the submit button
            // Find and click login button
            UIElement loginButton = findLoginButton();
            if (loginButton == null) {
                System.err.println("[CREDENTIAL_INPUT] Login button not found!");
                return false;
            }
            
            loginButtonClickTime = System.currentTimeMillis();
            loginClickActivity = AppLauncher.topActivityLine().replaceAll(".*\\{[^ ]+ u0 ([^ ]+).*", "$1");
            clickElement(loginButton);
            System.out.println("[CREDENTIAL_INPUT] Clicked login button, timestamp: " + loginButtonClickTime);

            // Wait for login button to disappear
            waitForLoginButtonDisappear();
            
            return true;
        } catch (Exception e) {
            System.err.println("[CREDENTIAL_INPUT] Click login button failed: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
    
    /**
     * Input credentials with option to wait for login button
     */
    public boolean inputCredentials(String username, String password, boolean waitForButtonDisappear) {
        try {
            System.out.println("Using ADB to input credentials...");

            // Find username input field
            UIElement usernameField = usernameEnteredInStep1 ? null : findUsernameField();
            if (usernameField == null && !usernameEnteredInStep1) {
                System.err.println("[CREDENTIAL_INPUT] Username field not found!");
                return false;
            }
            int[] coords = null;
            if (usernameEnteredInStep1) {
                System.out.println("[CREDENTIAL_INPUT] Username already entered on the identifier screen (two-step login)");
            } else {
            
            // Extract coordinates from bounds and click
            coords = extractCoordinates(usernameField.bounds);
            System.out.println("[CREDENTIAL_INPUT] Found username field at (" + coords[0] + "," + coords[1] + ")");
            System.out.println("[CREDENTIAL_INPUT] Input username: " + username);
            boolean usernameInputted = clickAndInputText(coords[0], coords[1], username);
            if (!usernameInputted) {
                System.err.println("[CREDENTIAL_INPUT] Failed to input username!");
                return false;
            }
            Thread.sleep(500);
            }

            // Find password input field
            UIElement passwordField = findPasswordField();
            if (passwordField == null) {
                System.err.println("[CREDENTIAL_INPUT] Password field not found!");
                return false;
            }
            
            // Extract coordinates and input password
            coords = extractCoordinates(passwordField.bounds);
            System.out.println("[CREDENTIAL_INPUT] Found password field at (" + coords[0] + "," + coords[1] + ")");
            System.out.println("[CREDENTIAL_INPUT] Input password: [" + password.length() + " chars]");
            boolean passwordInputted = clickAndInputText(coords[0], coords[1], password);
            if (!passwordInputted) {
                System.err.println("[CREDENTIAL_INPUT] Failed to input password!");
                return false;
            }
            Thread.sleep(500);
            
            // Wait a moment for input to settle before clicking button
            Thread.sleep(1000);  // Give time for screenshot before button click

            // Find and click login button
            UIElement loginButton = findLoginButton();
            if (loginButton == null) {
                System.err.println("[CREDENTIAL_INPUT] Login button not found!");
                return false;
            }
            
            System.out.println("[CREDENTIAL_INPUT] About to click login button - input fields should be visible now");
            loginButtonClickTime = System.currentTimeMillis();
            loginClickActivity = AppLauncher.topActivityLine().replaceAll(".*\\{[^ ]+ u0 ([^ ]+).*", "$1");
            clickElement(loginButton);
            System.out.println("[CREDENTIAL_INPUT] Clicked login button, timestamp: " + loginButtonClickTime);

            // Optionally wait for login button to disappear
            if (waitForButtonDisappear) {
                waitForLoginButtonDisappear();
            }
            
            System.out.println("[CREDENTIAL_INPUT] Credential input completed successfully");
            return true;

        } catch (Exception e) {
            System.err.println("[CREDENTIAL_INPUT] Input credentials failed: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Wait for login button to disappear
     */
    private void waitForLoginButtonDisappear() {
        try {
            UIElement loginButton = findLoginButton();
            if (loginButton != null) {
                // Wait for login button to disappear (up to 10 seconds)
                long startTime = System.currentTimeMillis();
                while (System.currentTimeMillis() - startTime < 10000) {
                    try {
                        UIElement currentButton = findLoginButton();
                        if (currentButton == null) {
                            loginButtonDisappearTime = System.currentTimeMillis();
                            System.out.println("Login button disappeared, timestamp: " + loginButtonDisappearTime);
                            System.out.println(
                                    "Login duration: " + (loginButtonDisappearTime - loginButtonClickTime) + "ms");
                            break;
                        }
                        Thread.sleep(100);
                    } catch (Exception e) {
                        // Element may have been removed
                        loginButtonDisappearTime = System.currentTimeMillis();
                        System.out.println("Login button disappeared, timestamp: " + loginButtonDisappearTime);
                        System.out
                                .println("Login duration: " + (loginButtonDisappearTime - loginButtonClickTime) + "ms");
                        break;
                    }
                }
            }
        } catch (Exception e) {
            System.err.println("Waiting for login button to disappear failed: " + e.getMessage());
        }
    }

    /**
     * Get login duration
     */
    public long getLoginDuration() {
        if (loginButtonClickTime > 0 && loginButtonDisappearTime > 0) {
            return loginButtonDisappearTime - loginButtonClickTime;
        }
        return -1;
    }

    /**
     * Get all UI elements
     */
    /** True when the last UI dump failed (the UI never became idle); the screen content is then unknown. */
    private boolean lastDumpFailed = false;
    private int dumpFailCount = 0;
    private long lastDumpFailLog = 0;
    /**
     * FIX(v1): dump the UI hierarchy to {@code path}, removing any previous dump first. uiautomator cannot dump a UI
     * that never becomes idle (continuous animations) and then leaves the old file behind; returns false in that case.
     */
    static boolean dumpUi(String path) {
        String out = bugdetectors.BoundedExec.run(30, "adb", "shell", "rm -f " + path + "; uiautomator dump " + path);
        boolean ok = out != null && out.contains("dumped to") && !out.contains("ERROR");
        return ok;
    }

    private List<UIElement> getAllUIElements() throws Exception {
        // Use uiautomator dump to get UI hierarchy
        // FIX(v1): a failed dump (UI never idle, e.g. a sync animation) must not leave the previous dump in place
        lastDumpFailed = !dumpUi("/data/local/tmp/window_dump.xml");   // a failing dump already waits ~10 s for idle
        if (lastDumpFailed) { dumpFailCount++; return new ArrayList<>(); }

        // Read the entire dump file content
        Process catProcess = Runtime.getRuntime().exec("adb shell cat /data/local/tmp/window_dump.xml");
        BufferedReader reader = new BufferedReader(new InputStreamReader(catProcess.getInputStream()));
        StringBuilder xml = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            xml.append(line);
        }
        reader.close();
        catProcess.waitFor();

        // Parse all UI elements
        List<UIElement> elements = parseAllUIElements(xml.toString());
        if (elements == null) {
            elements = new ArrayList<>();
        }
        
        // Cache and log only relevant elements
        UIElementCache cache = UIElementCache.getInstance();
        int matchedCount = 0;
        
        for (UIElement e : elements) {
            boolean matched = false;
            
            // Check for Google login first (more specific)
            if (matchesGoogleLoginPattern(e.text, e.resourceId)) {
                cache.setGoogleLoginButton(convertToCache(e));
                System.out.println("[Match] Google login button: " + e.text + " (id: " + e.resourceId + ")");
                matched = true;
            }
            // Check for Facebook login
            else if (matchesFacebookLoginPattern(e.text, e.resourceId)) {
                cache.setFacebookLoginButton(convertToCache(e));
                System.out.println("[Match] Facebook login button: " + e.text + " (id: " + e.resourceId + ")");
                matched = true;
            }
            // Check for normal login button
            else if (matchesLoginButtonPattern(e.text, e.resourceId)) {
                cache.setNormalLoginButton(convertToCache(e));
                System.out.println("[Match] Normal login button: " + e.text + " (id: " + e.resourceId + ")");
                matched = true;
            }
            
            // Check and cache username field
            if (matchesUsernamePattern(e.text, e.resourceId, e.className)) {
                cache.setUsernameField(convertToCache(e));
                System.out.println("[Match] Username field: " + logSafe(e.text, e.className) + " (id: " + e.resourceId + ")");
                matched = true;
            }
            
            // Check and cache password field
            if (matchesPasswordPattern(e.text, e.resourceId, e.className)) {
                cache.setPasswordField(convertToCache(e));
                System.out.println("[Match] Password field: " + logSafe(e.text, e.className) + " (id: " + e.resourceId + ")");
                matched = true;
            }
            
            if (matched) {
                matchedCount++;
            }
        }
        
        if (matchedCount > 0) {
            System.out.println(cache.getCacheStatus());
        }
        
        return elements;
    }
    
    /**
     * Convert internal UIElement to cache UIElement
     */
    private UIElementCache.UIElement convertToCache(UIElement element) {
        int[] coords = extractCoordinates(element.bounds);
        return new UIElementCache.UIElement(
            element.text,
            element.resourceId,
            element.className,
            element.bounds,
            coords[0],
            coords[1]
        );
    }
    
    /**
     * Extract center coordinates from bounds string
     */
    private int[] extractCoordinates(String bounds) {
        if (bounds == null || bounds.isEmpty()) {
            return new int[]{0, 0};
        }
        
        Pattern boundsPattern = Pattern.compile("\\[(\\d+),(\\d+)\\]\\[(\\d+),(\\d+)\\]");
        Matcher matcher = boundsPattern.matcher(bounds);
        
        if (matcher.find()) {
            int x1 = Integer.parseInt(matcher.group(1));
            int y1 = Integer.parseInt(matcher.group(2));
            int x2 = Integer.parseInt(matcher.group(3));
            int y2 = Integer.parseInt(matcher.group(4));
            return new int[]{(x1 + x2) / 2, (y1 + y2) / 2};
        }
        
        return new int[]{0, 0};
    }

    /**
     * Parse UI element
     */
    private UIElement parseUIElement(String xmlLine) {
        // Match UI element XML tag
        Pattern elementPattern = Pattern.compile(
                "<([^/>\\s]+)\\s+([^>]*?)\\s*/>" +
                "|<([^/>\\s]+)\\s+([^>]*?)\\s*>([^<]*)</\\3>" +
                "|<([^/>\\s]+)\\s+([^>]*?)\\s*>"
        );
        Matcher matcher = elementPattern.matcher(xmlLine);

        if (matcher.find()) {
            String tagName = matcher.group(1) != null ? matcher.group(1)
                    : (matcher.group(3) != null ? matcher.group(3) : matcher.group(6));
            String attributes = matcher.group(2) != null ? matcher.group(2)
                    : (matcher.group(4) != null ? matcher.group(4) : matcher.group(7));
            String text = matcher.group(5);
            if (text == null) text = "";

            // Parse attributes
            String resourceId = extractAttribute(attributes, "resource-id");
            String className = extractAttribute(attributes, "class");
            // FIX(v1): uiautomator exposes password inputs (inputType 0x81) as password="true"
            if ("true".equalsIgnoreCase(extractAttribute(attributes, "password"))) className = className + " [password]";
            if ("false".equalsIgnoreCase(extractAttribute(attributes, "enabled"))) className = className + " [disabled]";
            if ("true".equalsIgnoreCase(extractAttribute(attributes, "clickable"))) className = className + " [clickable]";
            String bounds = extractAttribute(attributes, "bounds");
            // UIAutomator keeps visible labels in a 'text' ATTRIBUTE, not innerText
            String textAttr = extractAttribute(attributes, "text");
            String contentDesc = extractAttribute(attributes, "content-desc");
            // UIAutomator dump often lacks a direct "visible" attribute. Prefer
            // "visible-to-user" if present; otherwise infer from enabled/bounds.
            String visibleAttr = extractAttribute(attributes, "visible");
            String visibleToUser = extractAttribute(attributes, "visible-to-user");
            String enabledAttr = extractAttribute(attributes, "enabled");
            boolean hasBounds = bounds != null && !bounds.isEmpty();

            boolean visible;
            if (!visibleToUser.isEmpty()) {
                visible = "true".equalsIgnoreCase(visibleToUser);
            } else if (!visibleAttr.isEmpty()) {
                visible = "true".equalsIgnoreCase(visibleAttr);
            } else if (!enabledAttr.isEmpty()) {
                visible = "true".equalsIgnoreCase(enabledAttr) && hasBounds;
            } else {
                // Last-resort fallback: if it has bounds, treat as visible
                visible = hasBounds;
            }

            // Prefer attribute text if present, then merge content-desc
            String finalText = (textAttr != null && !textAttr.isEmpty()) ? textAttr : text;
            if (contentDesc != null && !contentDesc.isEmpty()) {
                finalText = (finalText == null || finalText.isEmpty()) ? contentDesc : (finalText + " " + contentDesc);
            }

            return new UIElement(tagName, finalText, resourceId, className, bounds, visible);
        }

        return null;
    }

    /**
     * Extract XML attribute value
     */
    private String extractAttribute(String attributes, String attrName) {
        Pattern pattern = Pattern.compile(attrName + "=\"([^\"]*)\"");
        Matcher matcher = pattern.matcher(attributes);
        return matcher.find() ? matcher.group(1) : "";
    }

    /**
     * Click element
     */
    private void clickElement(UIElement element) throws Exception {
        if (element.bounds != null && !element.bounds.isEmpty()) {
            // Parse bounds "[x1,y1][x2,y2]"
            Pattern boundsPattern = Pattern.compile("\\[(\\d+),(\\d+)\\]\\[(\\d+),(\\d+)\\]");
            Matcher matcher = boundsPattern.matcher(element.bounds);

            if (matcher.find()) {
                int x1 = Integer.parseInt(matcher.group(1));
                int y1 = Integer.parseInt(matcher.group(2));
                int x2 = Integer.parseInt(matcher.group(3));
                int y2 = Integer.parseInt(matcher.group(4));

                // Calculate center point
                int centerX = (x1 + x2) / 2;
                int centerY = (y1 + y2) / 2;

                // Click center point - MUST wait for completion
                Process clickProc = Runtime.getRuntime().exec("adb shell input tap " + centerX + " " + centerY);
                clickProc.waitFor();
                System.out.println("Click element: " + element.text + " position: (" + centerX + ", " + centerY + ")");
            }
        }
    }

    /**
     * Find username field
     */
    // FIX(v1): form-aware field lookup. Prefer real input widgets and use the password field as an
    // anchor: the username is the nearest input above it, the submit button the nearest match below it.
    private static boolean isInputClass(String cls) {
        if (cls == null) return false;
        String c = cls.toLowerCase();
        return c.contains("edittext") || c.contains("autocompletetextview") || c.contains("textinput");
    }

    private UIElement findPasswordAnchor(List<UIElement> elements) {
        for (UIElement e : elements) {
            if (e.className != null && e.className.contains("[password]") && boundsOf(e) != null) return e;
        }
        for (UIElement e : elements) {
            if (isInputClass(e.className) && matchesPasswordPattern(e.text, e.resourceId, e.className) && boundsOf(e) != null) return e;
        }
        return null;
    }

    private int[] boundsOf(UIElement e) {
        int[] r = parseBoundsRect(e.bounds);
        if (r == null || r[2] <= r[0] || r[3] <= r[1]) return null; // skip zero-size (hidden) nodes
        return r;
    }

    private UIElement findUsernameField() throws Exception {
        List<UIElement> elements = getAllUIElements();
        UIElement pw = findPasswordAnchor(elements);
        int pwTop = pw != null ? boundsOf(pw)[1] : Integer.MAX_VALUE;
        UIElement best = null; int bestBottom = -1;
        // Pass 1: input widgets matching username patterns (closest above the password field)
        for (UIElement e : elements) {
            if (e == pw || !isInputClass(e.className) || (e.className != null && e.className.contains("[password]"))) continue;
            int[] r = boundsOf(e); if (r == null) continue;
            if (matchesUsernamePattern(e.text, e.resourceId, e.className) && r[3] <= pwTop && r[3] > bestBottom) { best = e; bestBottom = r[3]; }
        }
        if (best != null) return best;
        // Pass 2: nearest input widget above the password field (unlabeled WebView/Compose forms)
        if (pw != null) {
            for (UIElement e : elements) {
                if (e == pw || !isInputClass(e.className) || e.className.contains("[password]")) continue;
                int[] r = boundsOf(e); if (r == null) continue;
                if (r[3] <= pwTop && r[3] > bestBottom) { best = e; bestBottom = r[3]; }
            }
            if (best != null) return best;
        }
        // Pass 3: original behaviour
        for (UIElement element : elements) {
            if (matchesUsernamePattern(element.text, element.resourceId, element.className)) {
                return element;
            }
        }
        return null;
    }

    /**
     * Find password field
     */
    private UIElement findPasswordField() throws Exception {
        List<UIElement> elements = getAllUIElements();
        UIElement anchor = findPasswordAnchor(elements);
        if (anchor != null) return anchor;
        for (UIElement element : elements) {
            if (matchesPasswordPattern(element.text, element.resourceId, element.className)) {
                return element;
            }
        }
        return null;
    }

    /**
     * Find login button - prioritize buttons with text or exact ID match
     */
    private UIElement findLoginButton() throws Exception {
        List<UIElement> elements = getAllUIElements();
        UIElement fallbackButton = null;
        UIElement pwAnchor = findPasswordAnchor(elements);
        if (pwAnchor != null) {
            int pwBottom = boundsOf(pwAnchor)[3];
            UIElement below = null; int bestTop = Integer.MAX_VALUE;
            for (UIElement e : elements) {
                int[] r = boundsOf(e); if (r == null) continue;
                String cls = e.className == null ? "" : e.className.toLowerCase();
                if (!(cls.contains("button") || cls.contains("view"))) continue;
                if (e.text == null || e.text.trim().isEmpty() || e.text.length() > 30) continue;
                if (r[1] >= pwBottom && r[1] < bestTop && matchesLoginButtonPattern(e.text, e.resourceId)) { below = e; bestTop = r[1]; }
            }
            if (below != null) return below;
        }
        
        // Pass 1: Find button with explicit text or exact "login_button" ID
        for (UIElement element : elements) {
            if (matchesLoginButtonPattern(element.text, element.resourceId)) {
                // Priority 1: Exact resource ID match
                if (element.resourceId != null && element.resourceId.contains("login_button")) {
                    return element;
                }
                // Priority 2: Has meaningful text (not just container)
                if (element.text != null && !element.text.trim().isEmpty()) {
                    return element;
                }
                // Store as fallback (might be container like login_viewswitcher)
                if (fallbackButton == null) {
                    fallbackButton = element;
                }
            }
        }
        
        // Return fallback if no better match found
        return fallbackButton;
    }

    /**
     * Get visible UI elements
     */
    private List<UIElement> getVisibleUIElements() throws Exception {
        List<UIElement> allElements = getAllUIElements();
        List<UIElement> visibleElements = new ArrayList<>();

        for (UIElement element : allElements) {
            if (element.visible) {
                visibleElements.add(element);
            }
        }
        // Fallback: if parser couldn't determine visibility but there are elements,
        // use all elements to avoid missing detections.
        if (visibleElements.isEmpty() && !allElements.isEmpty()) {
            return allElements;
        }

        return visibleElements;
    }

    /**
     * Reset detection flags
     */
    private void resetDetectionFlags() {
        googleLoginDetected = false;
        facebookLoginDetected = false;
        usernameFieldDetected = false;
        passwordFieldDetected = false;
    }

    // Simple helper for SSO exclusion based on resource-id substrings
    private boolean isSsoExcluded(String resourceId) {
        if (resourceId == null) return false;
        String lower = resourceId.toLowerCase();
        for (String ex : configLoader.getSsoExcludeSubstrings()) {
            String e = ex.trim().toLowerCase();
            if (!e.isEmpty() && lower.contains(e)) return true;
        }
        return false;
    }

    private boolean matchesUsernamePattern(String text, String resourceId, String className) {
        if (text == null)
            text = "";
        if (resourceId == null)
            resourceId = "";
        if (className == null)
            className = "";

        // Exclude non-input elements
        if (resourceId.contains("toolbar") ||
            resourceId.contains("button") ||
            resourceId.contains("viewswitcher") ||
            resourceId.contains("container") ||
            text.toLowerCase().contains("press to") ||
            text.toLowerCase().contains("forgot") ||
            text.toLowerCase().contains("register") ||
            text.toLowerCase().contains("server")) {
            return false;
        }
        
        // Must be an input-capable element
        if (!isWhitelistedClass(className) && 
            !className.toLowerCase().contains("edit") &&
            !className.toLowerCase().contains("input") &&
            !className.toLowerCase().contains("text")) {
            return false;
        }

        String combined = (text + " " + resourceId + " " + className).toLowerCase();
        String[] patterns = configLoader.getUsernameFieldPatterns().split(",");

        for (String pattern : patterns) {
            String p = pattern.trim().toLowerCase();
            if (!p.isEmpty() && combined.contains(p)) {
                return true;
            }
        }
        
        return false;
    }

    private boolean matchesPasswordPattern(String text, String resourceId, String className) {
        if (className != null && className.contains("[password]")) return true;
        if (text == null)
            text = "";
        if (resourceId == null)
            resourceId = "";
        if (className == null)
            className = "";

        // Exclude non-password elements
        if (text.toLowerCase().contains("forgot") ||
            text.toLowerCase().contains("reset") ||
            resourceId.contains("forgot") ||
            resourceId.contains("reset")) {
            return false;
        }
        
        // Must be an input-capable element for password (FIX(v1): a TextView mentioning "password"
        // in help text is not a password field; previously any class containing "text" passed)
        String clsLower = className.toLowerCase();
        if (clsLower.contains("textview") && !clsLower.contains("autocomplete")) return false;
        if (!isWhitelistedClass(className) &&
            !clsLower.contains("edit") &&
            !clsLower.contains("input")) {
            return false;
        }

        String combined = (text + " " + resourceId + " " + className).toLowerCase();
        String[] patterns = configLoader.getPasswordFieldPatterns().split(",");

        for (String pattern : patterns) {
            String p = pattern.trim().toLowerCase();
            if (!p.isEmpty() && combined.contains(p)) {
                return true;
            }
        }
        
        // Class whitelist: common input classes sometimes lack text; use id hint
        if (isWhitelistedClass(className) && resourceId.toLowerCase().contains("pass")) {
            return true;
        }
        return false;
    }

    private boolean isWhitelistedClass(String className) {
        if (className == null) return false;
        String lower = className.toLowerCase();
        for (String allowed : configLoader.getUiClassWhitelist()) {
            if (lower.contains(allowed.trim().toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    private boolean matchesLoginButtonPattern(String text, String resourceId) {
        if (text == null)
            text = "";
        if (resourceId == null)
            resourceId = "";

        // CRITICAL: Exclude username and password input fields
        String lowerResourceId = resourceId.toLowerCase();
        if (lowerResourceId.contains("username") || 
            lowerResourceId.contains("user_name") ||
            lowerResourceId.contains("email") ||
            lowerResourceId.contains("password") ||
            lowerResourceId.contains("pass")) {
            return false;
        }

        // Exclude launcher and system UI elements
        if (resourceId.contains("nexuslauncher") || 
            resourceId.contains("launcher") ||
            resourceId.contains("systemui") ||
            resourceId.contains("page_indicator") ||
            resourceId.contains("hotseat") ||
            resourceId.contains("apps_view") ||
            resourceId.contains("all_apps_header") ||
            resourceId.contains("search_container") ||
            resourceId.contains("mic_icon") ||
            resourceId.contains("g_icon")) {
            return false;
        }
        
        // Exclude toolbar and navigation elements
        if (resourceId.contains("toolbar") ||
            resourceId.contains("actionbar") ||
            resourceId.contains("navigation") ||
            text.toLowerCase().contains("logo")) {
            return false;
        }
        
        // Require meaningful text or specific login-related resource IDs
        if (text.trim().isEmpty() && !resourceId.toLowerCase().contains("login") && 
            !resourceId.toLowerCase().contains("signin") && !resourceId.toLowerCase().contains("sign_in")) {
            return false;
        }

        String combined = (text + " " + resourceId).toLowerCase();
        String[] patterns = configLoader.getLoginButtonPatterns().split(",");

        for (String pattern : patterns) {
            String p = pattern.trim().toLowerCase();
            if (!p.isEmpty() && combined.contains(p)) {
                // Additional validation: ensure it's not just a substring match
                if (text.toLowerCase().equals(p) || 
                    text.toLowerCase().contains(p + " ") ||
                    text.toLowerCase().contains(" " + p) ||
                    resourceId.toLowerCase().contains(p)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean matchesFacebookLoginPattern(String text, String resourceId) {
        if (text == null) text = "";
        if (resourceId == null) resourceId = "";

        if (isSsoExcluded(resourceId)) return false;

        String combined = (text + " " + resourceId).toLowerCase();
        String[] patterns = configLoader.getFacebookLoginPatterns().split(",");
        for (String pattern : patterns) {
            String p = pattern.trim().toLowerCase();
            if (!p.isEmpty() && combined.contains(p)) return true;
        }
        return false;
    }

    private boolean matchesGoogleLoginPattern(String text, String resourceId) {
        if (text == null) text = "";
        if (resourceId == null) resourceId = "";

        if (isSsoExcluded(resourceId)) return false;

        String textOnly = text.toLowerCase();
        String idLower = resourceId.toLowerCase();
        String[] patterns = configLoader.getGoogleLoginPatterns().split(",");

        // 1) Strong signal: explicit phrases present in visible text/content-desc
        for (String pattern : patterns) {
            String p = pattern.trim().toLowerCase();
            if (!p.isEmpty() && textOnly.contains(p)) return true;
        }

        // 2) Weak signal: resource-id contains 'google' PLUS any of signin/login/auth keywords,
        //    and exclude common material namespaces to avoid misfires on generic components.
        if (idLower.contains("google") &&
                (idLower.contains("signin") || idLower.contains("sign_in") || idLower.contains("sign-in")
                        || idLower.contains("login") || idLower.contains("auth") || idLower.contains("oauth"))) {
            if (!(idLower.contains("material") || idLower.contains("android.material")
                    || idLower.contains("gms.maps") || idLower.contains("recyclerview"))) {
                return true;
            }
        }

        return false;
    }

    private boolean matchesLoginActivityPattern(String activityName) {
        if (activityName == null || activityName.trim().isEmpty()) return false;
        
        String activityLower = activityName.toLowerCase();
        String[] patterns = configLoader.getLoginActivityPatterns().split(",");
        
        for (String pattern : patterns) {
            String p = pattern.trim().toLowerCase();
            if (!p.isEmpty() && activityLower.contains(p)) {
                return true;
            }
        }
        return false;
    }

    /**
     * Check if the currently focused element is a login field
     */
    public boolean checkFocusedLoginField() {
        try {
            // Get the currently focused element
            if (!dumpUi("/data/local/tmp/window_dump.xml")) return false;
            
            // Get the focused element bounds
            Process focusProcess = Runtime.getRuntime().exec("adb shell dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp'");
            BufferedReader focusReader = new BufferedReader(new InputStreamReader(focusProcess.getInputStream()));
            String focusLine = focusReader.readLine();
            focusReader.close();
            focusProcess.waitFor();
            
            if (focusLine != null && focusLine.contains(appPackage)) {
                // Get the UI dump and find the focused element
                Process dumpProcess = Runtime.getRuntime().exec("adb shell cat /data/local/tmp/window_dump.xml");
                BufferedReader dumpReader = new BufferedReader(new InputStreamReader(dumpProcess.getInputStream()));
                String line;
                boolean foundFocusedElement = false;
                
                while ((line = dumpReader.readLine()) != null) {
                    // Look for elements with focused="true" attribute
                    if (line.contains("focused=\"true\"")) {
                        // Parse the focused element
                        UIElement focusedElement = parseUIElement(line);
                        
                        if (focusedElement != null) {
                            // Check if it's a login field
                            if (matchesUsernamePattern(focusedElement.text, focusedElement.resourceId, focusedElement.className) ||
                                matchesPasswordPattern(focusedElement.text, focusedElement.resourceId, focusedElement.className)) {
                                
                                System.out.println("Monkey focused on login field: " + focusedElement.text + 
                                                 " (ID: " + focusedElement.resourceId + ")");
                                return true;
                            }
                        }
                        foundFocusedElement = true;
                    }
                }
                dumpReader.close();
                dumpProcess.waitFor();
                
                if (!foundFocusedElement) {
                    // If no focused element found, check if any login fields are visible
                    List<UIElement> visibleElements = getVisibleUIElements();
                    for (UIElement element : visibleElements) {
                        if (matchesUsernamePattern(element.text, element.resourceId, element.className) ||
                            matchesPasswordPattern(element.text, element.resourceId, element.className)) {
                            
                            System.out.println("Login field visible but not focused: " + element.text);
                            // Don't return true here, only if it's actually focused
                        }
                    }
                }
            }
            
            return false;
            
        } catch (Exception e) {
            System.err.println("Error checking focused login field: " + e.getMessage());
            return false;
        }
    }

    /**
     * Classify the currently focused element (username/password/login button/other/none)
     */
    public FocusType getFocusedElementType() {
        try {
            Process dumpProc = Runtime.getRuntime().exec("adb shell uiautomator dump /data/local/tmp/window_dump.xml");
            dumpProc.waitFor();

            Process cat = Runtime.getRuntime().exec("adb shell cat /data/local/tmp/window_dump.xml");
            BufferedReader br = new BufferedReader(new InputStreamReader(cat.getInputStream()));
            String line;
            while ((line = br.readLine()) != null) {
                if (!line.contains("focused=\"true\"")) continue;
                UIElement focused = parseUIElement(line);
                if (focused == null) continue;
                String text = focused.text;
                String id = focused.resourceId;
                String cls = focused.className;
                if (matchesUsernamePattern(text, id, cls)) return FocusType.USERNAME;
                if (matchesPasswordPattern(text, id, cls)) return FocusType.PASSWORD;
                if (matchesLoginButtonPattern(text, id)) return FocusType.LOGIN_BUTTON;
                return FocusType.OTHER;
            }
            br.close();
            cat.waitFor();
        } catch (Exception e) {
            System.err.println("Error getting focused element type: " + e.getMessage());
        }
        return FocusType.NONE;
    }

    /**
     * Send text to the currently focused input field. Returns true if sent.
     */
    public boolean inputTextToFocusedField(String text) {
        try {
            // Ensure something is focused
            FocusType t = getFocusedElementType();
            if (t != FocusType.USERNAME && t != FocusType.PASSWORD) {
                return false;
            }
            // Clear existing content then input
            Runtime.getRuntime().exec("adb shell input keyevent 123"); // move to end
            Runtime.getRuntime().exec("adb shell input keyevent --longpress 67"); // long backspace
            Thread.sleep(150);
            Runtime.getRuntime().exec("adb shell input text '" + text + "'");
            return true;
        } catch (Exception e) {
            System.err.println("Failed to input text to focused field: " + e.getMessage());
            return false;
        }
    }

    /**
     * Click the login button if it is visible on screen. Returns true if clicked.
     */
    public boolean clickLoginButtonIfVisible() {
        try {
            UIElement btn = findLoginButton();
            if (btn == null) return false;
            // inline click by bounds
            if (btn.bounds != null && !btn.bounds.isEmpty()) {
                java.util.regex.Matcher m = java.util.regex.Pattern
                        .compile("\\[(\\d+),(\\d+)\\]\\[(\\d+),(\\d+)\\]")
                        .matcher(btn.bounds);
                if (m.find()) {
                    int x1 = Integer.parseInt(m.group(1));
                    int y1 = Integer.parseInt(m.group(2));
                    int x2 = Integer.parseInt(m.group(3));
                    int y2 = Integer.parseInt(m.group(4));
                    int cx = (x1 + x2) / 2;
                    int cy = (y1 + y2) / 2;
                    Process tapProcess = Runtime.getRuntime().exec("adb shell input tap " + cx + " " + cy);
                    tapProcess.waitFor();
                    Thread.sleep(300);
                    System.out.println("Clicked login button at (" + cx + ", " + cy + ")");
                    return true;
                }
            }
        } catch (Exception e) {
            System.err.println("Failed to click login button: " + e.getMessage());
        }
        return false;
    }

    // Getter methods
    public boolean isGoogleLoginDetected() {
        return googleLoginDetected;
    }

    public boolean isFacebookLoginDetected() {
        return facebookLoginDetected;
    }

    public boolean isUsernameFieldDetected() {
        return usernameFieldDetected;
    }

    public boolean isPasswordFieldDetected() {
        return passwordFieldDetected;
    }

    /**
     * Get current foreground activity name
     * Returns format: "package/activity" or null if unable to detect
     */
    public String getCurrentActivity() {
        try {
            ProcessBuilder pb = new ProcessBuilder(
                "adb", "shell", "dumpsys", "window"
            );
            Process process = pb.start();
            BufferedReader reader = new BufferedReader(
                new InputStreamReader(process.getInputStream())
            );
            
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.contains("mCurrentFocus") || line.contains("mFocusedApp")) {
                    // Extract activity name from lines like:
                    // mCurrentFocus=Window{abc123 u0 com.newsblur/.MainActivity}
                    // mFocusedApp=AppWindowToken{xyz u0 com.newsblur/.LoginActivity}
                    int startIdx = line.indexOf("u0 ");
                    if (startIdx > 0) {
                        startIdx += 3; // Skip "u0 "
                        int endIdx = line.indexOf("}", startIdx);
                        if (endIdx < 0) {
                            endIdx = line.length();
                        }
                        String activity = line.substring(startIdx, endIdx).trim();
                        if (!activity.isEmpty() && activity.contains("/")) {
                            reader.close();
                            process.destroy();
                            return activity;
                        }
                    }
                }
            }
            reader.close();
            process.waitFor();
        } catch (Exception e) {
            System.err.println("[UIManager] Failed to get current activity: " + e.getMessage());
        }
        return null;
    }
    
    /**
     * Close UI manager
     */
    public void close() {
        System.out.println("UI manager closed");
    }

    /**
     * UI element inner class
     */
    private static class UIElement {
        String tagName;
        String text;
        String resourceId;
        String className;
        String bounds;
        boolean visible;

        public UIElement(String tagName, String text, String resourceId, String className, String bounds,
                boolean visible) {
            this.tagName = tagName;
            this.text = text;
            this.resourceId = resourceId;
            this.className = className;
            this.bounds = bounds;
            this.visible = visible;
        }

        @Override
        public String toString() {
            return "UIElement{" +
                    "tagName='" + tagName + '\'' +
                    ", text='" + text + '\'' +
                    ", resourceId='" + resourceId + '\'' +
                    ", className='" + className + '\'' +
                    ", bounds='" + bounds + '\'' +
                    ", visible=" + visible +
                    '}';
        }
    }

    // =====================================================================================
    // FIX(v1): Lifecycle (rotation) oracle. The previous DeviceRotationTester used hard-coded
    // credentials and only reported when a "normal" login succeeded, so it could never fire.
    // These checks target the symptoms observed in the empirical study (RQ1, "Interference with
    // other state machines"): lost input, reset in-flight login state, and lost error messages.
    // Each finding is {type, evidence}.
    // =====================================================================================
    private void setRotation(int r) {
        try {
            new ProcessBuilder("adb", "shell", "settings", "put", "system", "accelerometer_rotation", "0").start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
            new ProcessBuilder("adb", "shell", "settings", "put", "system", "user_rotation", String.valueOf(r)).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
        } catch (Exception ignored) { }
    }

    private static final java.util.regex.Pattern ERROR_TEXT = java.util.regex.Pattern.compile(
        "(?i)(error|invalid|incorrect|wrong|failed|failure|unable|could not|couldn't|denied|not found|try again)");

    private String visibleErrorText(List<UIElement> els) {
        String d = findDialogMessage(els);
        if (d != null && !d.isEmpty()) return d;
        for (UIElement e : els) {
            if (e.text == null || boundsOf(e) == null || isInputClass(e.className)) continue;
            String t = e.text.trim();
            if (t.length() >= 4 && t.length() <= 160 && ERROR_TEXT.matcher(t).find()
                    && !t.toLowerCase().contains("forgot")) return t;
        }
        return null;
    }

    private boolean progressVisible(List<UIElement> els) {
        for (UIElement e : els) if (e.className != null && e.className.contains("ProgressBar") && boundsOf(e) != null) return true;
        return false;
    }

    private String textOf(UIElement e) { return e == null || e.text == null ? "" : e.text; }

    /** Submit/login button below the password field is disabled. */
    private boolean submitDisabled(List<UIElement> els) {
        UIElement pw = findPasswordAnchor(els);
        int top = pw == null ? 0 : boundsOf(pw)[3];
        for (UIElement e : els) {
            if (e.text == null || boundsOf(e) == null || boundsOf(e)[1] < top) continue;
            String t = e.text.trim().toLowerCase();
            if (t.length() <= 30 && matchesLoginButtonPattern(e.text, e.resourceId)) {
                return e.className != null && e.className.contains("[disabled]");
            }
        }
        return false;
    }

    private List<String[]> runWebRotationChecks(String username, String password) {
        List<String[]> findings = new ArrayList<>();
        try {
            WebViewBridge w = web();
            // A: input retention
            w.fillTrusted(usernameEnteredInStep1 ? null : username, password);
            Thread.sleep(800);
            Map<String, String> before = w.inspect();
            System.out.println("[ROTATION] A(web): before " + before);
            setRotation(1);
            Thread.sleep(4000);
            if (!AppLauncher.isInForeground(appPackage)) {
                findings.add(new String[]{"ROTATION_APP_EXIT", "App left the foreground after rotating the filled web login form"});
                return findings;
            }
            Map<String, String> after = w.inspect();
            System.out.println("[ROTATION] A(web): after " + after);
            boolean lost = (!"0".equals(before.getOrDefault("idval", "0")) && "0".equals(after.getOrDefault("idval", "0")))
                || (!"0".equals(before.getOrDefault("pwval", "0")) && "0".equals(after.getOrDefault("pwval", "0")));
            if (after.isEmpty() || lost) findings.add(new String[]{"ROTATION_INPUT_LOST",
                "Web login input lost on rotation (WebView reloaded or state not restored): before=" + before.get("idval") + "/" + before.get("pwval")
                + " after=" + after.getOrDefault("idval", "-") + "/" + after.getOrDefault("pwval", "-")});
            setRotation(0);
            Thread.sleep(3000);
            // B: rotate while the request is in flight
            Map<String, String> cur = w.inspect();
            if ("0".equals(cur.getOrDefault("pwval", "0"))) w.fillTrusted(usernameEnteredInStep1 ? null : username, password);
            String url0 = cur.get("url");
            if (!w.submit()) return findings;
            Thread.sleep(600);
            Map<String, String> inflight = w.inspect();
            boolean busyBefore = "true".equals(inflight.get("busy"));
            setRotation(1);
            Thread.sleep(4000);
            Map<String, String> rotated = w.inspect();
            System.out.println("[ROTATION] B(web): in-flight " + inflight + " -> after rotation " + rotated);
            boolean idleAgain = !rotated.isEmpty() && !"true".equals(rotated.get("busy")) && rotated.getOrDefault("err", "").isEmpty()
                && !"0".equals(rotated.getOrDefault("pw", "0")) && (url0 == null || rotated.getOrDefault("url", "").startsWith(url0.split("#")[0]));
            if (busyBefore && idleAgain) findings.add(new String[]{"ROTATION_LOGIN_STATE_RESET",
                "Web login was in progress (submit busy) when the device rotated; afterwards the form is idle with no result"});
            // C: error message survives rotation
            String err = null;
            long deadline = System.currentTimeMillis() + 20000;
            while (System.currentTimeMillis() < deadline && (err == null || err.isEmpty())) { Thread.sleep(1500); err = w.inspect().get("err"); }
            if (err != null && !err.isEmpty()) {
                setRotation(0);
                Thread.sleep(4000);
                String errAfter = w.inspect().getOrDefault("err", "");
                System.out.println("[ROTATION] C(web): '" + err + "' -> '" + errAfter + "'");
                if (errAfter.isEmpty() && AppLauncher.isInForeground(appPackage))
                    findings.add(new String[]{"ROTATION_ERROR_MESSAGE_LOST", "Web error message '" + err + "' disappeared after rotation"});
            }
        } catch (Exception e) {
            System.out.println("[ROTATION] Web check aborted: " + e.getMessage());
        } finally {
            setRotation(0);
        }
        for (String[] f : findings) System.out.println("[ROTATION] Finding: " + f[0] + " - " + f[1]);
        return findings;
    }

    /** FIX(v1): rotation findings that compare UI dumps are only valid when every dump succeeded. */
    public List<String[]> runRotationChecks(String username, String password) {
        int failsBefore = dumpFailCount;
        List<String[]> findings = runRotationChecks0(username, password);
        if (dumpFailCount != failsBefore) {
            int n = findings.size();
            findings.removeIf(f -> !"ROTATION_APP_EXIT".equals(f[0]));
            if (n != findings.size()) System.out.println("[ROTATION] " + (n - findings.size()) + " finding(s) dropped: a UI dump failed during the check (screen never idle)");
        }
        return findings;
    }

    private List<String[]> runRotationChecks0(String username, String password) {
        if (webMode) return runWebRotationChecks(username, password);
        List<String[]> findings = new ArrayList<>();
        try {
            List<UIElement> els = getAllUIElements();
            UIElement pw = findPasswordAnchor(els);
            UIElement user = usernameEnteredInStep1 ? null : findUsernameField();
            if (pw == null) {
                // Identifier-only screens (e.g. Google sign-in WebView): check that the typed identifier survives
                UIElement idField = null; int inputs = 0;
                for (UIElement e : els) if (isInputClass(e.className) && boundsOf(e) != null) { inputs++; idField = e; }
                if (inputs != 1) { System.out.println("[ROTATION] Not on a credential form; skipping"); return findings; }
                int[] ic = extractCoordinates(idField.bounds);
                clickAndInputText(ic[0], ic[1], username);
                hideKeyboardIfShown();
                Thread.sleep(800);
                boolean before = false;
                for (UIElement e : getAllUIElements()) if (isInputClass(e.className) && textOf(e).contains(username)) before = true;
                System.out.println("[ROTATION] A(identifier): before rotation: identifier=" + before);
                setRotation(1);
                Thread.sleep(3500);
                if (!AppLauncher.isInForeground(appPackage)) {
                    findings.add(new String[]{"ROTATION_APP_EXIT", "App left the foreground after rotating the identifier screen"});
                } else {
                    boolean after = false;
                    for (UIElement e : getAllUIElements()) if (isInputClass(e.className) && textOf(e).contains(username)) after = true;
                    System.out.println("[ROTATION] A(identifier): after rotation: identifier=" + after);
                    if (before && !after) findings.add(new String[]{"ROTATION_INPUT_LOST", "Typed identifier lost on rotation (screen reloaded or state not saved)"});
                }
                setRotation(0);
                for (String[] f : findings) System.out.println("[ROTATION] Finding: " + f[0] + " - " + f[1]);
                return findings;
            }
            String pwHint = textOf(pw);

            // ---- A: input retention -------------------------------------------------------
            if (user != null) { int[] c = extractCoordinates(user.bounds); clickAndInputText(c[0], c[1], username); }
            int[] pc = extractCoordinates(pw.bounds);
            clickAndInputText(pc[0], pc[1], password);
            hideKeyboardIfShown();
            Thread.sleep(800);
            els = getAllUIElements();
            boolean userBefore = user != null && textOf(findUsernameField()).contains(username);
            String pwBefore = textOf(findPasswordAnchor(els));
            System.out.println("[ROTATION] A: before rotation: username=" + userBefore + ", passwordFilled=" + (!pwBefore.isEmpty() && !pwBefore.equals(pwHint)));
            setRotation(1);
            Thread.sleep(3500);
            if (!AppLauncher.isInForeground(appPackage)) {
                findings.add(new String[]{"ROTATION_APP_EXIT", "App left the foreground after rotating the filled login form"});
                setRotation(0);
                return findings;
            }
            List<UIElement> after = getAllUIElements();
            UIElement pwAfterEl = findPasswordAnchor(after);
            boolean userAfter = textOf(findUsernameField()).contains(username);
            String pwAfter = textOf(pwAfterEl);
            if (pwAfterEl == null) {
                findings.add(new String[]{"ROTATION_FORM_LOST", "Credential form disappeared after rotation (login page reset or navigated away)"});
            } else {
                boolean pwLost = !pwBefore.isEmpty() && !pwBefore.equals(pwHint) && (pwAfter.isEmpty() || pwAfter.equals(pwHint));
                if ((userBefore && !userAfter) || pwLost) {
                    // WebView-based screens: confirm with the DOM (the accessibility tree can lag after rotation)
                    Map<String, String> dom = web().inspect();
                    if (!dom.isEmpty() && !"0".equals(dom.getOrDefault("pw", "0"))) {
                        System.out.println("[ROTATION] A: DOM after rotation " + dom);
                        if (!"0".equals(dom.getOrDefault("pwval", "0")) && (!userBefore || !"0".equals(dom.getOrDefault("idval", "0")))) {
                            System.out.println("[ROTATION] A: values still present in the DOM; accessibility tree was stale");
                            userAfter = true; pwLost = false;
                        }
                    }
                }
                if ((userBefore && !userAfter) || pwLost) {
                    findings.add(new String[]{"ROTATION_INPUT_LOST",
                        "Input lost on rotation: username " + (userBefore && !userAfter ? "lost" : "kept") + ", password " + (pwLost ? "lost" : "kept")});
                }
            }
            setRotation(0);
            Thread.sleep(2500);

            // ---- B: rotate while the login request is in flight ----------------------------
            els = getAllUIElements();
            UIElement pwNow = findPasswordAnchor(els);
            if (pwNow != null && textOf(pwNow).equals(pwHint)) {        // re-fill if A cleared it
                int[] c2 = extractCoordinates(pwNow.bounds);
                clickAndInputText(c2[0], c2[1], password);
                hideKeyboardIfShown();
                Thread.sleep(600);
            }
            UIElement btn = findLoginButton();
            if (btn == null) { System.out.println("[ROTATION] No login button; skipping in-flight check"); return findings; }
            int[] bc = extractCoordinates(btn.bounds);
            new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf(bc[0]), String.valueOf(bc[1])).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
            Thread.sleep(700);
            List<UIElement> inflight = getAllUIElements();
            boolean btnDisabledBefore = submitDisabled(inflight);
            boolean busyBefore = progressVisible(inflight) || btnDisabledBefore || findPasswordAnchor(inflight) == null;
            System.out.println("[ROTATION] B: in-flight before rotation: progress=" + progressVisible(inflight) + ", submitDisabled=" + btnDisabledBefore + ", formShown=" + (findPasswordAnchor(inflight) != null));
            setRotation(1);
            Thread.sleep(3500);
            if (!AppLauncher.isInForeground(appPackage)) {
                findings.add(new String[]{"ROTATION_APP_EXIT", "App left the foreground when rotated during an in-flight login"});
                setRotation(0);
                return findings;
            }
            List<UIElement> rotated = getAllUIElements();
            UIElement pwR = findPasswordAnchor(rotated);
            boolean noResult = visibleErrorText(rotated) == null && findDialogMessage(rotated) == null;
            boolean formIdle = pwR != null && !progressVisible(rotated) && !submitDisabled(rotated) && noResult;
            System.out.println("[ROTATION] B: after rotation: formShown=" + (pwR != null) + ", progress=" + progressVisible(rotated)
                + ", submitDisabled=" + submitDisabled(rotated) + ", result=" + !noResult);
            if (busyBefore && formIdle) {
                findings.add(new String[]{"ROTATION_LOGIN_STATE_RESET",
                    "Login was in progress when the device rotated; afterwards the form is idle again (no progress, submit enabled) with no result shown"});
            }

            // ---- C: error message survives rotation ----------------------------------------
            long deadline = System.currentTimeMillis() + 20000;
            String err = null;
            while (System.currentTimeMillis() < deadline && err == null) {
                err = visibleErrorText(getAllUIElements());
                if (err == null) Thread.sleep(1500);
            }
            if (err == null) {
                // the in-flight request may have been lost by the rotation (B); submit again without rotating
                setRotation(1);
                Thread.sleep(1500);
                UIElement again = findLoginButton();
                if (again != null && findPasswordAnchor(getAllUIElements()) != null) {
                    int[] ac = extractCoordinates(again.bounds);
                    System.out.println("[ROTATION] C: re-submitting to obtain an error message");
                    new ProcessBuilder("adb", "shell", "input", "tap", String.valueOf(ac[0]), String.valueOf(ac[1])).start().waitFor(10, java.util.concurrent.TimeUnit.SECONDS);
                    deadline = System.currentTimeMillis() + 25000;
                    while (System.currentTimeMillis() < deadline && err == null) {
                        Thread.sleep(1500);
                        err = visibleErrorText(getAllUIElements());
                    }
                }
            }
            System.out.println("[ROTATION] C: error shown before rotating back: " + (err == null ? "none" : "'" + err + "'"));
            if (err != null) {
                setRotation(0);
                Thread.sleep(3500);
                List<UIElement> back = getAllUIElements();
                String errAfter = visibleErrorText(back);
                System.out.println("[ROTATION] C: error after rotation: " + (errAfter == null ? "none" : "'" + errAfter + "'"));
                if (errAfter == null && AppLauncher.isInForeground(appPackage)) {
                    findings.add(new String[]{"ROTATION_ERROR_MESSAGE_LOST", "Error message '" + err + "' disappeared after rotation"});
                }
            }
        } catch (Exception e) {
            System.out.println("[ROTATION] Check aborted: " + e.getMessage());
        } finally {
            setRotation(0);
        }
        for (String[] f : findings) System.out.println("[ROTATION] Finding: " + f[0] + " - " + f[1]);
        return findings;
    }
}