import java.util.concurrent.TimeUnit;

/**
 * FIX(v1): reliable app (re)launch shared by snapshot reset and foreground checks.
 * - resolves the launcher activity instead of relying on `monkey -p` (which silently fails
 *   when another app owns focus)
 * - dismisses runtime-permission dialogs raised by the system permission controller
 */
public final class AppLauncher {
    private AppLauncher() {}

    static String run(String... cmd) {
        try {
            Process p = new ProcessBuilder(cmd).redirectErrorStream(true).start();
            String out = new String(p.getInputStream().readAllBytes());
            p.waitFor(30, TimeUnit.SECONDS);
            return out;
        } catch (Exception e) {
            return "";
        }
    }

    public static String resolveLauncherActivity(String pkg) {
        String out = run("adb", "shell", "cmd", "package", "resolve-activity", "--brief", pkg);
        String component = null;
        for (String line : out.split("\\r?\\n")) {
            line = line.trim();
            if (line.startsWith(pkg + "/")) component = line;
        }
        return component;
    }

    public static String topActivityLine() {
        String out = run("adb", "shell", "dumpsys", "activity", "activities");
        for (String line : out.split("\\r?\\n")) {
            if (line.contains("topResumedActivity") || line.contains("mResumedActivity")) return line;
        }
        return "";
    }

    public static boolean isInForeground(String pkg) {
        return topActivityLine().contains(pkg + "/");
    }

    /** Tap "Allow" on system permission dialogs; returns true if a dialog was handled. */
    public static boolean dismissPermissionDialogs() {
        boolean handled = false;
        for (int i = 0; i < 4; i++) {
            if (!topActivityLine().contains("permissioncontroller")) break;
            run("adb", "shell", "uiautomator", "dump", "/sdcard/perm_dump.xml");
            String xml = run("adb", "shell", "cat", "/sdcard/perm_dump.xml");
            String[] ids = {
                "com.android.permissioncontroller:id/permission_allow_button",
                "com.android.permissioncontroller:id/permission_allow_foreground_only_button",
                "com.android.permissioncontroller:id/permission_allow_one_time_button"
            };
            boolean tapped = false;
            for (String id : ids) {
                int idx = xml.indexOf("resource-id=\"" + id + "\"");
                if (idx < 0) continue;
                int b = xml.indexOf("bounds=\"", idx);
                if (b < 0) continue;
                java.util.regex.Matcher m = java.util.regex.Pattern
                    .compile("\\[(\\d+),(\\d+)\\]\\[(\\d+),(\\d+)\\]").matcher(xml.substring(b));
                if (m.find()) {
                    int cx = (Integer.parseInt(m.group(1)) + Integer.parseInt(m.group(3))) / 2;
                    int cy = (Integer.parseInt(m.group(2)) + Integer.parseInt(m.group(4))) / 2;
                    run("adb", "shell", "input", "tap", String.valueOf(cx), String.valueOf(cy));
                    System.out.println("[LAUNCH] Allowed runtime permission dialog");
                    tapped = true;
                    handled = true;
                    break;
                }
            }
            if (!tapped) break;
            sleep(1500);
        }
        return handled;
    }

    /** Bring the app to the foreground; returns true on success. */
    public static boolean launch(String pkg) {
        String component = resolveLauncherActivity(pkg);
        for (int attempt = 0; attempt < 3; attempt++) {
            // Leave whatever external app (browser, dialer, ...) currently owns focus.
            run("adb", "shell", "input", "keyevent", "KEYCODE_HOME");
            if (component != null) {
                run("adb", "shell", "am", "start", "-W", "-n", component);
            } else {
                run("adb", "shell", "monkey", "-p", pkg, "-c", "android.intent.category.LAUNCHER", "1");
            }
            sleep(5000);
            dismissPermissionDialogs();
            if (isInForeground(pkg)) return true;
        }
        System.out.println("[LAUNCH] Failed to bring " + pkg + " to foreground; top=" + topActivityLine().trim());
        return false;
    }

    /**
     * FIX(v1): candidate login activities declared in the APK manifest (names containing
     * Login/SignIn/Auth), used to reach login screens hidden behind deep menus. Requires aapt on PATH;
     * returns an empty list otherwise.
     */
    public static java.util.List<String> findLoginActivities(String apkPath, String pkg) {
        java.util.List<String> out = new java.util.ArrayList<>();
        String xml = run("aapt", "dump", "xmltree", apkPath, "AndroidManifest.xml");
        String[] lines = xml.split("\\r?\\n");
        boolean inActivity = false;
        java.util.regex.Pattern name = java.util.regex.Pattern.compile("A: android:name\\(0x01010003\\)=\"([^\"]+)\"");
        java.util.regex.Pattern login = java.util.regex.Pattern.compile("(?i)(login|signin|sign_in|logon|authenticat)");
        java.util.regex.Pattern exclude = java.util.regex.Pattern.compile("(?i)(callback|redirect|receiver|service|provider|biometric|lock|pin)");
        for (String line : lines) {
            String t = line.trim();
            if (t.startsWith("E: ")) inActivity = t.startsWith("E: activity") || t.startsWith("E: activity-alias");
            if (!inActivity) continue;
            java.util.regex.Matcher m = name.matcher(t);
            if (m.find()) {
                String cls = m.group(1);
                String simple = cls.substring(cls.lastIndexOf('.') + 1);
                if (login.matcher(simple).find() && !exclude.matcher(simple).find() && !out.contains(cls)) out.add(cls);
                inActivity = false;
            }
        }
        return out;
    }

    /** Launch a specific activity (works for non-exported activities when adbd runs as root). */
    public static boolean launchActivity(String pkg, String cls) {
        String comp = pkg + "/" + (cls.startsWith(pkg + ".") ? cls.substring(pkg.length()) : cls);
        String out = run("adb", "shell", "am", "start", "-W", "-n", comp);
        sleep(4000);
        dismissPermissionDialogs();
        return !out.contains("Error") && isInForeground(pkg);
    }

    static void sleep(long ms) {
        try { Thread.sleep(ms); } catch (InterruptedException ignored) { }
    }
}
