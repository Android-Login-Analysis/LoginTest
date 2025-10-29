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
                String devicePath = "/sdcard/screenshot_temp.png";
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
        }
        
        public boolean hasSnapshot(String name) {
            return snapshots.containsKey(name) || findSnapshot(name) != null;
        }
        
        public boolean createSnapshot(String name, String description) {
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
