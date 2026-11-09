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

    static void sleep(long ms) {
        try { Thread.sleep(ms); } catch (InterruptedException ignored) { }
    }
}
