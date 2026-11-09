package bugdetectors;

import java.util.*;
import java.util.concurrent.TimeUnit;

/**
 * FIX(v1): credentials/tokens persisted in plaintext after login (paper's Incorrect Login Flow oracle:
 * credentials reaching a storage sink without encoding). Scans the app's private storage with root:
 *  - the round's password appearing verbatim in any file
 *  - readable auth-like keys (token/cookie/session/auth/password/secret) holding long readable values
 * Encrypted stores (e.g. EncryptedSharedPreferences) hide both key names and values and are not flagged.
 */
public class StorageLeakDetector implements BugDetector {
    private final List<DetectedBug> found = new ArrayList<>();
    private final Set<String> reported = new HashSet<>();

    @Override public String getName() { return "StorageLeakDetector"; }
    @Override public BugCategory getCategory() { return BugCategory.INCORRECT_LOGIN_FLOW; }

    private static String sh(String cmd) {
        try {
            Process p = new ProcessBuilder("adb", "shell", cmd).redirectErrorStream(true).start();
            String out = new String(p.getInputStream().readAllBytes());
            p.waitFor(60, TimeUnit.SECONDS);
            return out;
        } catch (Exception e) { return ""; }
    }

    private static String q(String s) { return "'" + s.replace("'", "'\\''") + "'"; }

    public void scan(String pkg, String username, String password) {
        String base = "/data/data/" + pkg;
        String dirs = base + "/shared_prefs " + base + "/files " + base + "/databases " + base + "/app_webview";
        if (password != null && password.length() >= 6) {
            String hits = sh("grep -rlaF -- " + q(password) + " " + dirs + " 2>/dev/null | head -5");
            for (String f : hits.split("\\r?\\n")) {
                f = f.trim();
                if (f.isEmpty() || !reported.add("pw:" + f)) continue;
                DetectedBug b = new DetectedBug(BugCategory.INCORRECT_LOGIN_FLOW, "PLAINTEXT_PASSWORD_STORAGE",
                    "Login password persisted in plaintext");
                b.setSeverity(DetectedBug.Severity.HIGH);
                b.setLocation(f);
                b.setEvidence("The password used in this round appears verbatim in " + f);
                found.add(b);
                System.out.println("[STORAGE] Plaintext password in " + f);
            }
        }
        // readable auth-like keys with long readable values (XML prefs, DataStore protobuf, JSON)
        String files = sh("find " + base + "/shared_prefs " + base + "/files -type f -size -2048k 2>/dev/null | grep -E '\\.(xml|preferences_pb|json|pb)$' | head -60");
        java.util.regex.Pattern key = java.util.regex.Pattern.compile("(?i)[A-Za-z0-9_.-]*(token|cookie|session|auth|password|passwd|secret|credential|sapisid)[A-Za-z0-9_.-]*");
        for (String f : files.split("\\r?\\n")) {
            f = f.trim();
            if (f.isEmpty()) continue;
            String strs = sh("strings -n 4 " + q(f) + " 2>/dev/null | head -400");
            String[] lines = strs.split("\\r?\\n");
            for (int i = 0; i < lines.length; i++) {
                String line = lines[i];
                java.util.regex.Matcher m = key.matcher(line);
                if (!m.find()) continue;
                String k = m.group();
                // value: in XML on the same line between > <, in protobuf usually the next printable string
                String v = "";
                int gt = line.indexOf('>'), lt = line.lastIndexOf('<');
                if (gt >= 0 && lt > gt) v = line.substring(gt + 1, lt);
                else if (i + 1 < lines.length) v = lines[i + 1];
                v = v.trim();
                boolean readable = v.length() >= 20 && v.chars().allMatch(c -> c >= 32 && c < 127);
                boolean looksEncrypted = v.matches("[A-Za-z0-9+/=]{40,}") && f.contains("encrypted");
                if (readable && !looksEncrypted && reported.add("tok:" + f + ":" + k)) {
                    DetectedBug b = new DetectedBug(BugCategory.INCORRECT_LOGIN_FLOW, "PLAINTEXT_TOKEN_STORAGE",
                        "Authentication token/credential stored in plaintext");
                    b.setSeverity(DetectedBug.Severity.MEDIUM);
                    b.setLocation(f);
                    b.setEvidence("Readable key '" + k + "' with a " + v.length() + "-char readable value in " + f);
                    found.add(b);
                    System.out.println("[STORAGE] Plaintext auth value '" + k + "' in " + f);
                }
            }
        }
    }

    @Override public List<DetectedBug> detectBugs() { return new ArrayList<>(found); }
    @Override public void reset() { found.clear(); }
    @Override public Map<String, Object> getStatistics() {
        Map<String, Object> m = new HashMap<>();
        m.put("storage_findings", found.size());
        return m;
    }
}
