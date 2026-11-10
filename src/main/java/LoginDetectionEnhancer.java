import java.io.*;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 * Enhanced login detection with smart success detection and comprehensive error tracking
 */
public class LoginDetectionEnhancer {
    
    private ConfigLoader configLoader;
    private PrintWriter logWriter;
    
    // Enhanced login success detection
    public static class LoginSuccessDetector {
        
        // Smart indicators of successful login
        private static final String[] SUCCESS_INDICATORS = {
            "home", "dashboard", "profile", "welcome", "inbox", "feed", 
            "main", "account", "settings", "menu", "navigation"
        };
        
        private static final String[] FAILURE_INDICATORS = {
            "error", "invalid", "incorrect", "failed", "wrong", "retry",
            "forgot", "password", "username", "email", "login", "sign"
        };
        
        /**
         * Smart login success detection using multiple strategies
         */
        public static boolean detectLoginSuccess(String uiDump, String previousUiDump, 
                                                 long startTime, int maxWaitSeconds) {
            try {
                // Strategy 1: Check for page transition
                if (previousUiDump != null && !previousUiDump.equals(uiDump)) {
                    // Page changed, analyze the new content
                    
                    // Check for success indicators
                    int successScore = 0;
                    int failureScore = 0;
                    
                    String lowerDump = uiDump.toLowerCase();
                    for (String indicator : SUCCESS_INDICATORS) {
                        if (lowerDump.contains(indicator)) {
                            successScore++;
                        }
                    }
                    
                    for (String indicator : FAILURE_INDICATORS) {
                        if (lowerDump.contains(indicator)) {
                            failureScore++;
                        }
                    }
                    
                    // If success indicators outweigh failure ones
                    if (successScore > failureScore && successScore >= 2) {
                        return true;
                    }
                }
                
                // Strategy 2: Check for activity change
                Pattern activityPattern = Pattern.compile("mCurrentFocus=[^}]*\\{[^}]*\\s+([^\\s/]+)/([^\\s}]+)");
                String currentActivity = extractCurrentActivity();
                
                if (currentActivity != null && !currentActivity.toLowerCase().contains("login") 
                    && !currentActivity.toLowerCase().contains("sign")
                    && !currentActivity.toLowerCase().contains("auth")) {
                    return true;
                }
                
                // Strategy 3: Check for specific UI elements that indicate logged-in state
                if (checkForLoggedInElements(uiDump)) {
                    return true;
                }
                
                // Strategy 4: Timeout check - must verify activity changed, not just UI
                long elapsedSeconds = (System.currentTimeMillis() - startTime) / 1000;
                if (elapsedSeconds >= maxWaitSeconds) {
                    // CRITICAL: Only return true if we definitively left the login page
                    // Check if current activity is NOT a login page
                    if (currentActivity != null && 
                        !currentActivity.toLowerCase().contains("login") &&
                        !currentActivity.toLowerCase().contains("sign") &&
                        !currentActivity.toLowerCase().contains("auth")) {
                        return true;
                    }
                    // Still on login page = login failed
                    return false;
                }
                
                return false;
                
            } catch (Exception e) {
                System.err.println("Error in login success detection: " + e.getMessage());
                return false;
            }
        }
        
        private static boolean checkForLoggedInElements(String uiDump) {
            // Look for elements typically present after login
            return uiDump.contains("logout") || uiDump.contains("sign out") ||
                   uiDump.contains("Logout") || uiDump.contains("Sign Out") ||
                   uiDump.contains("user-profile") || uiDump.contains("user-avatar");
        }
        
        private static String extractCurrentActivity() {
            try {
                Process p = Runtime.getRuntime().exec("adb shell dumpsys window windows | grep mCurrentFocus");
                BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
                String line = reader.readLine();
                if (line != null && line.contains("/")) {
                    int start = line.lastIndexOf(" ") + 1;
                    int end = line.indexOf("}");
                    if (start > 0 && end > start) {
                        return line.substring(start, end);
                    }
                }
            } catch (Exception e) {
                // Ignore
            }
            return null;
        }
    }
    
    /**
     * Enhanced error tracking for ANR and crashes
     */
    public static class ErrorTracker {
        
        private List<String> anrRecords = new ArrayList<>();
        private List<String> crashRecords = new ArrayList<>();
        private Map<String, Integer> errorCounts = new HashMap<>();
        
        public void checkAndRecordErrors(String appPackage) {
            try {
                // Check for ANRs
                Process anrProcess = Runtime.getRuntime().exec(
                    "adb logcat -d -v time *:E | grep -E \"ANR in.*" + appPackage + "|Not responding.*" + appPackage + "\""
                );
                
                BufferedReader anrReader = new BufferedReader(new InputStreamReader(anrProcess.getInputStream()));
                String line;
                while ((line = anrReader.readLine()) != null) {
                    if (!anrRecords.contains(line)) {
                        anrRecords.add(line);
                        System.err.println("[ANR DETECTED] " + line);
                    }
                }
                
                // Check for crashes
                Process crashProcess = Runtime.getRuntime().exec(
                    "adb logcat -d -v time *:E | grep -E \"FATAL EXCEPTION.*" + appPackage + 
                    "|AndroidRuntime.*" + appPackage + "|Process.*" + appPackage + ".*died\""
                );
                
                BufferedReader crashReader = new BufferedReader(new InputStreamReader(crashProcess.getInputStream()));
                while ((line = crashReader.readLine()) != null) {
                    if (!crashRecords.contains(line)) {
                        crashRecords.add(line);
                        System.err.println("[CRASH DETECTED] " + line);
                        
                        // Extract exception type if possible
                        Pattern exceptionPattern = Pattern.compile("([A-Za-z]+Exception):");
                        Matcher matcher = exceptionPattern.matcher(line);
                        if (matcher.find()) {
                            String exceptionType = matcher.group(1);
                            errorCounts.put(exceptionType, errorCounts.getOrDefault(exceptionType, 0) + 1);
                        }
                    }
                }
                
                // Check for app not responding dialog
                Process dialogProcess = Runtime.getRuntime().exec(
                    "adb shell dumpsys window | grep \"Application Not Responding\""
                );
                BufferedReader dialogReader = new BufferedReader(new InputStreamReader(dialogProcess.getInputStream()));
                if ((line = dialogReader.readLine()) != null) {
                    System.err.println("[ANR DIALOG DETECTED] App showing ANR dialog");
                    // Auto-dismiss ANR dialog
                    Runtime.getRuntime().exec("adb shell input keyevent KEYCODE_BACK");
                }
                
            } catch (Exception e) {
                System.err.println("Error checking for crashes/ANRs: " + e.getMessage());
            }
        }
        
        /**
         * Save error report for a specific round
         * @param outputPath Output file path
         * @param roundNumber Round number (0 for overall report)
         * @param append Whether to append to existing file
         */
        public void saveErrorReport(String outputPath, int roundNumber, boolean append) {
            try (PrintWriter writer = new PrintWriter(new FileWriter(outputPath, append))) {
                if (!append) {
                    // Write header only for new file
                    writer.println("=".repeat(80));
                    writer.println("Error Report - All Test Rounds");
                    writer.println("Started at: " + new Date());
                    writer.println("=".repeat(80));
                    writer.println();
                }
                
                // Write round separator
                writer.println("-".repeat(80));
                writer.println("ROUND " + roundNumber + " - " + new Date());
                writer.println("-".repeat(80));
                
                writer.println("\n=== ANR Records (" + anrRecords.size() + ") ===");
                if (anrRecords.isEmpty()) {
                    writer.println("  No ANR detected");
                } else {
                    for (String anr : anrRecords) {
                        writer.println("  " + anr);
                    }
                }
                writer.println();
                
                writer.println("=== Crash Records (" + crashRecords.size() + ") ===");
                if (crashRecords.isEmpty()) {
                    writer.println("  No crashes detected");
                } else {
                    for (String crash : crashRecords) {
                        writer.println("  " + crash);
                    }
                }
                writer.println();
                
                writer.println("=== Error Summary ===");
                if (errorCounts.isEmpty()) {
                    writer.println("  No errors detected");
                } else {
                    for (Map.Entry<String, Integer> entry : errorCounts.entrySet()) {
                        writer.println("  " + entry.getKey() + ": " + entry.getValue() + " occurrences");
                    }
                }
                writer.println();
                
            } catch (IOException e) {
                System.err.println("Failed to save error report: " + e.getMessage());
            }
        }
        
        /**
         * Save error report (backward compatibility)
         */
        public void saveErrorReport(String outputPath) {
            saveErrorReport(outputPath, 0, false);
        }
        
        public void clearLogs() {
            try {
                // Clear logcat buffer to avoid duplicate detection
                Runtime.getRuntime().exec("adb logcat -c");
            } catch (Exception e) {
                // Ignore
            }
        }
    }
    
    /**
     * Enhanced screenshot capture with round-based organization
     */
    public static class ScreenshotManager {
        
        private String baseDir;
        private int currentRound;
        private int screenshotCount;
        
        public ScreenshotManager(String appName, int round) {
            this.currentRound = round;
            this.screenshotCount = 0;
            
            // Create organized directory structure
            try {
                String timestamp = new java.text.SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
                this.baseDir = new File("reports/screenshots/" + appName + "/" + 
                                       timestamp + "/round_" + round).getCanonicalPath();
                new File(baseDir).mkdirs();
            } catch (IOException e) {
                this.baseDir = "reports/screenshots/" + appName + "/round_" + round;
                new File(baseDir).mkdirs();
            }
        }
        
        public boolean captureScreenshot(String tag) {
            try {
                screenshotCount++;
                String filename = String.format("screenshot_%03d_%s.png", screenshotCount, tag);
                String devicePath = "/data/local/tmp/screenshot_temp.png";
                String localPath = new File(baseDir, filename).getAbsolutePath();
                
                // Capture screenshot
                Process capture = Runtime.getRuntime().exec("adb shell screencap -p " + devicePath);
                capture.waitFor();
                
                // Pull to local
                Process pull = Runtime.getRuntime().exec("adb pull " + devicePath + " " + localPath);
                pull.waitFor();
                
                // Clean up device
                Runtime.getRuntime().exec("adb shell rm " + devicePath);
                
                System.out.println("[SCREENSHOT] Saved: " + localPath);
                return true;
                
            } catch (Exception e) {
                System.err.println("Failed to capture screenshot: " + e.getMessage());
                return false;
            }
        }
        
        public void captureRoundScreenshots() {
            // Capture key moments in each round
            captureScreenshot("round_start");
        }
    }
    
    /**
     * Improved snapshot management with proper naming and restoration
     */
    public static class SnapshotManager {
        
        private String appPackage;
        private Map<String, String> snapshots = new HashMap<>();
        
        public SnapshotManager(String appPackage) {
            this.appPackage = appPackage;
            String mode = System.getenv("LIFT_RESET_MODE");
            this.appResetMode = "app".equalsIgnoreCase(mode);
            if (appResetMode) {
                System.out.println("[SNAPSHOT] LIFT_RESET_MODE=app: using app-level reset instead of emulator snapshots");
            }
        }

        // FIX(v1): environments without emulator snapshots (e.g. redroid containers, physical devices)
        // reset state at the app level: force-stop, clear app data, re-grant runtime permissions, relaunch.
        private final boolean appResetMode;

        private static void runQuiet(String... cmd) {
            try {
                bugdetectors.BoundedExec.run(30, cmd);
            } catch (Exception ignored) { }
        }

        private void grantRequestedPermissions() {
            try {
                String out = bugdetectors.BoundedExec.run(30, "adb", "shell", "dumpsys", "package", appPackage);
                java.util.regex.Matcher m = java.util.regex.Pattern.compile("(android\\.permission\\.[A-Z_]+)").matcher(out);
                java.util.Set<String> perms = new java.util.LinkedHashSet<>();
                while (m.find()) perms.add(m.group(1));
                for (String perm : perms) runQuiet("adb", "shell", "pm", "grant", appPackage, perm);
                // FIX(v1): special access is an app-op, not a runtime permission; onboarding screens can block on it
                String[][] ops = {{"REQUEST_INSTALL_PACKAGES", "REQUEST_INSTALL_PACKAGES"}, {"MANAGE_EXTERNAL_STORAGE", "MANAGE_EXTERNAL_STORAGE"},
                                  {"SYSTEM_ALERT_WINDOW", "SYSTEM_ALERT_WINDOW"}, {"SCHEDULE_EXACT_ALARM", "SCHEDULE_EXACT_ALARM"}};
                for (String[] op : ops) if (perms.contains("android.permission." + op[0])) runQuiet("adb", "shell", "appops", "set", appPackage, op[1], "allow");
                if (out.contains("REQUEST_IGNORE_BATTERY_OPTIMIZATIONS")) runQuiet("adb", "shell", "dumpsys", "deviceidle", "whitelist", "+" + appPackage);
            } catch (Exception ignored) { }
        }

        public boolean appLevelReset() {
            try {
                System.out.println("[SNAPSHOT] App-level reset: " + appPackage);
                runQuiet("adb", "shell", "am", "force-stop", appPackage);
                runQuiet("adb", "shell", "pm", "clear", appPackage);
                grantRequestedPermissions();
                boolean ok = AppLauncher.launch(appPackage);
                Thread.sleep(3000);
                return ok;
            } catch (Exception e) {
                System.err.println("App-level reset failed: " + e.getMessage());
                return false;
            }
        }
        
        public boolean hasSnapshot(String name) {
            if (appResetMode) return snapshots.containsKey(name);
            return snapshots.containsKey(name) || findSnapshot(name) != null;
        }
        
        public boolean createSnapshot(String name, String description) {
            if (appResetMode) {
                snapshots.put(name, "app-reset:" + name);
                System.out.println("[SNAPSHOT] Created (app-level marker): " + name + " (" + description + ")");
                return true;
            }
            try {
                // Check if snapshot already exists - don't recreate
                if (snapshots.containsKey(name)) {
                    System.out.println("[SNAPSHOT] Skipping creation - already exists: " + name);
                    return true;
                }
                
                // Generate unique snapshot name with timestamp
                String timestamp = new java.text.SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
                String snapshotName = String.format("%s_%s_%s", 
                    appPackage.replace(".", "_"), name, timestamp);
                
                // Save snapshot
                Process save = Runtime.getRuntime().exec("adb emu avd snapshot save " + snapshotName);
                save.waitFor(10, TimeUnit.SECONDS);
                
                if (save.exitValue() == 0) {
                    snapshots.put(name, snapshotName);
                    System.out.println("[SNAPSHOT] Created: " + snapshotName + " (" + description + ")");
                    
                    // Wait for snapshot to complete
                    Thread.sleep(2000);
                    return true;
                }
            } catch (Exception e) {
                System.err.println("Failed to create snapshot: " + e.getMessage());
            }
            return false;
        }
        
        public boolean restoreSnapshot(String name) {
            if (appResetMode) {
                // FIX(v1): app-level reset is always available, including round 1, so every round starts
                // from a clean, logged-out state (stale sessions from earlier runs hide the login page).
                return appLevelReset();
            }
            try {
                String snapshotName = snapshots.get(name);
                if (snapshotName == null) {
                    // Try to find existing snapshot
                    snapshotName = findSnapshot(name);
                }
                
                if (snapshotName != null) {
                    System.out.println("[SNAPSHOT] Restoring: " + snapshotName);
                    Process restore = Runtime.getRuntime().exec("adb emu avd snapshot load " + snapshotName);
                    restore.waitFor(15, TimeUnit.SECONDS);
                    
                    // Wait for emulator to stabilize
                    Thread.sleep(5000);
                    
                    // Ensure app is in foreground
                    Runtime.getRuntime().exec("adb shell monkey -p " + appPackage + " 1");
                    Thread.sleep(1000);
                    
                    return restore.exitValue() == 0;
                }
            } catch (Exception e) {
                System.err.println("Failed to restore snapshot: " + e.getMessage());
            }
            return false;
        }
        
        private String findSnapshot(String name) {
            try {
                Process list = Runtime.getRuntime().exec("adb emu avd snapshot list");
                BufferedReader reader = new BufferedReader(new InputStreamReader(list.getInputStream()));
                String line;
                while ((line = reader.readLine()) != null) {
                    if (line.contains(appPackage.replace(".", "_")) && line.contains(name)) {
                        // Extract snapshot name from the line
                        String[] parts = line.trim().split("\\s+");
                        if (parts.length > 0) {
                            return parts[0];
                        }
                    }
                }
            } catch (Exception e) {
                // Ignore
            }
            return null;
        }
    }
}
