package bugdetectors;

import java.util.*;
import java.io.*;

/**
 * Detects application crashes during login
 * Symptom: Crash (85 issues in paper)
 * 
 * Monitors logcat for FATAL EXCEPTION and ANR events
 */
public class CrashDetector implements BugDetector {
    
    private List<CrashEvent> crashes = new ArrayList<>();
    private Process logcatProcess;
    private boolean monitoring = false;
    
    private static class CrashEvent {
        String timestamp;
        String exceptionType;
        String stackTrace;
        String currentState;
        
        CrashEvent(String timestamp, String exceptionType, String stackTrace, String currentState) {
            this.timestamp = timestamp;
            this.exceptionType = exceptionType;
            this.stackTrace = stackTrace;
            this.currentState = currentState;
        }
    }
    
    @Override
    public String getName() {
        return "CrashDetector";
    }
    
    @Override
    public BugCategory getCategory() {
        return BugCategory.CRASH;
    }
    
    /**
     * Start monitoring logcat for crashes
     */
    public void startMonitoring(String packageName) {
        if (monitoring) {
            return;
        }
        
        try {
            // Start logcat monitoring in background
            ProcessBuilder pb = new ProcessBuilder(
                "adb", "logcat", 
                "-v", "time",
                "AndroidRuntime:E", // Only error level
                "*:S" // Silence others
            );
            
            logcatProcess = pb.start();
            monitoring = true;
            
            // Start thread to read logcat output
            new Thread(() -> readLogcat()).start();
            
            System.out.println("[CRASH_DETECTOR] Started monitoring for crashes");
            
        } catch (IOException e) {
            System.err.println("[CRASH_DETECTOR] Failed to start monitoring: " + e.getMessage());
        }
    }
    
    /**
     * Stop monitoring logcat
     */
    public void stopMonitoring() {
        if (logcatProcess != null) {
            logcatProcess.destroy();
            monitoring = false;
            System.out.println("[CRASH_DETECTOR] Stopped monitoring");
        }
    }
    
    /**
     * Read logcat output and detect crashes
     */
    private void readLogcat() {
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(logcatProcess.getInputStream()))) {
            
            String line;
            StringBuilder currentCrash = new StringBuilder();
            boolean inCrash = false;
            String crashTimestamp = null;
            String exceptionType = null;
            
            while ((line = reader.readLine()) != null && monitoring) {
                // Detect FATAL EXCEPTION
                if (line.contains("FATAL EXCEPTION")) {
                    inCrash = true;
                    currentCrash.setLength(0);
                    currentCrash.append(line).append("\n");
                    
                    // Extract timestamp
                    crashTimestamp = extractTimestamp(line);
                    exceptionType = "FATAL_EXCEPTION";
                    
                    System.out.println("[CRASH_DETECTOR] ⚠️  Crash detected!");
                    
                } else if (line.contains("ANR in")) {
                    // Application Not Responding
                    inCrash = true;
                    currentCrash.setLength(0);
                    currentCrash.append(line).append("\n");
                    
                    crashTimestamp = extractTimestamp(line);
                    exceptionType = "ANR";
                    
                    System.out.println("[CRASH_DETECTOR] ⚠️  ANR detected!");
                    
                } else if (inCrash) {
                    currentCrash.append(line).append("\n");
                    
                    // Crash stack trace usually ends with a blank line or new log entry
                    if (line.trim().isEmpty() || !line.startsWith("\t")) {
                        // Save crash
                        CrashEvent crash = new CrashEvent(
                            crashTimestamp,
                            exceptionType,
                            currentCrash.toString(),
                            "Unknown" // Will be updated with actual state
                        );
                        crashes.add(crash);
                        
                        System.out.println("[CRASH_DETECTOR] Crash recorded: " + exceptionType);
                        inCrash = false;
                    }
                }
            }
            
        } catch (IOException e) {
            if (monitoring) {
                System.err.println("[CRASH_DETECTOR] Error reading logcat: " + e.getMessage());
            }
        }
    }
    
    /**
     * Extract timestamp from logcat line
     */
    private String extractTimestamp(String line) {
        // Logcat format: "10-22 17:30:45.123 ..."
        if (line.length() > 18) {
            return line.substring(0, 18).trim();
        }
        return "Unknown";
    }
    
    @Override
    public List<DetectedBug> detectBugs() {
        List<DetectedBug> bugs = new ArrayList<>();
        
        System.out.println("[CRASH_DETECTOR] Checking for crashes...");
        System.out.println("[CRASH_DETECTOR] Total crashes recorded: " + crashes.size());
        
        for (CrashEvent crash : crashes) {
            DetectedBug bug = new DetectedBug(
                BugCategory.CRASH,
                crash.exceptionType,
                "Application crashed during login flow"
            );
            
            bug.setSeverity(DetectedBug.Severity.CRITICAL);
            bug.setLocation("Login activity or authentication logic");
            
            // Extract exception message from stack trace
            String firstLine = crash.stackTrace.split("\n")[0];
            String evidence = String.format(
                "Crash Type: %s\n" +
                "Timestamp: %s\n" +
                "First Line: %s\n" +
                "\nFull Stack Trace:\n%s",
                crash.exceptionType,
                crash.timestamp,
                firstLine,
                crash.stackTrace.substring(0, Math.min(500, crash.stackTrace.length()))
            );
            bug.setEvidence(evidence);
            
            bug.setRecommendation(
                "Review the stack trace and fix the crash:\n" +
                "1. Add null checks for objects that might be null\n" +
                "2. Add try-catch blocks for risky operations\n" +
                "3. Validate input before processing\n" +
                "4. Check lifecycle state before accessing views\n\n" +
                "Example:\n" +
                "if (activity != null && !activity.isFinishing()) {\n" +
                "    // Safe to access activity\n" +
                "}"
            );
            
            bugs.add(bug);
        }
        
        return bugs;
    }
    
    @Override
    public void reset() {
        crashes.clear();
        System.out.println("[CRASH_DETECTOR] Reset");
    }
    
    @Override
    public Map<String, Object> getStatistics() {
        Map<String, Object> stats = new HashMap<>();
        stats.put("total_crashes", crashes.size());
        
        // Count by type
        Map<String, Integer> byType = new HashMap<>();
        for (CrashEvent crash : crashes) {
            byType.put(crash.exceptionType, byType.getOrDefault(crash.exceptionType, 0) + 1);
        }
        stats.put("by_type", byType);
        
        return stats;
    }
}
