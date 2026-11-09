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
    // FIX(v1): crash/ANR oracle restricted to the app under test.
    private String targetPackage = null;

    public void startMonitoring(String packageName) {
        if (monitoring) {
            return;
        }
        this.targetPackage = packageName;
        try {
            // AndroidRuntime: Java crashes; ActivityManager: "ANR in <pkg>"; libc: native fatal signals.
            ProcessBuilder pb = new ProcessBuilder(
                "adb", "logcat",
                "-v", "time",
                "AndroidRuntime:E",
                "ActivityManager:E",
                "libc:F",
                "*:S"
            );
            logcatProcess = pb.start();
            monitoring = true;
            new Thread(() -> readLogcat()).start();
            System.out.println("[CRASH_DETECTOR] Started monitoring for crashes of " + packageName);
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
    private boolean belongsToTarget(String block) {
        if (targetPackage == null) return true;
        if (block.contains("Process: " + targetPackage + ",") || block.contains("Process: " + targetPackage + "\n")) return true;
        if (block.contains("ANR in " + targetPackage)) return true;
        // native: libc prints the (truncated, max 15 chars) process name in parentheses
        String tail = targetPackage.length() > 15 ? targetPackage.substring(targetPackage.length() - 15) : targetPackage;
        return block.contains("Fatal signal") && block.contains("(" + tail + ")");
    }

    private void finishBlock(StringBuilder block, String ts, String type) {
        String text = block.toString();
        if (belongsToTarget(text)) {
            crashes.add(new CrashEvent(ts, type, text, "Unknown"));
            System.out.println("[CRASH_DETECTOR] Crash recorded: " + type);
        } else {
            String first = text.split("\n")[0];
            System.out.println("[CRASH_DETECTOR] Ignored crash of another process: " + (first.length() > 160 ? first.substring(0, 160) : first));
        }
    }

    private void readLogcat() {
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(logcatProcess.getInputStream()))) {
            String line;
            StringBuilder block = new StringBuilder();
            String blockTag = null;   // logcat tag of the current block (AndroidRuntime / ActivityManager)
            String ts = null, type = null;
            CrashEvent recorded = null; boolean decided = false;
            while ((line = reader.readLine()) != null && monitoring) {
                boolean startJava = line.contains("FATAL EXCEPTION");
                boolean startAnr = line.contains("ANR in ");
                boolean startNative = line.contains("Fatal signal");
                if (blockTag != null && !startJava && !startAnr && line.contains("/" + blockTag + "(")) {
                    block.append(line).append("\n");   // continuation of the current block
                    if (recorded != null) recorded.stackTrace = block.toString();
                    // decide as soon as the process is known so the crash is visible to this round
                    if (recorded == null && !decided && (line.contains("Process: ") || "ANR".equals(type))) {
                        decided = true;
                        if (belongsToTarget(block.toString())) {
                            recorded = new CrashEvent(ts, type, block.toString(), "Unknown");
                            crashes.add(recorded);
                            System.out.println("[CRASH_DETECTOR] Crash recorded: " + type);
                        } else {
                            System.out.println("[CRASH_DETECTOR] Ignored crash of another process: " + line.trim());
                        }
                    }
                    continue;
                }
                if (blockTag != null) {
                    if (!decided) finishBlock(block, ts, type);
                    blockTag = null;
                }
                recorded = null; decided = false;
                if (startJava || startAnr) {
                    block.setLength(0);
                    block.append(line).append("\n");
                    ts = extractTimestamp(line);
                    type = startJava ? "FATAL_EXCEPTION" : "ANR";
                    blockTag = startJava ? "AndroidRuntime" : "ActivityManager";
                    if (startAnr) {
                        decided = true;
                        if (belongsToTarget(line)) {
                            recorded = new CrashEvent(ts, type, block.toString(), "Unknown");
                            crashes.add(recorded);
                            System.out.println("[CRASH_DETECTOR] ANR recorded");
                        } else {
                            System.out.println("[CRASH_DETECTOR] Ignored ANR of another process: " + line.trim());
                        }
                    }
                } else if (startNative) {
                    StringBuilder one = new StringBuilder(line).append("\n");
                    finishBlock(one, extractTimestamp(line), "NATIVE_CRASH");
                }
            }
            if (blockTag != null && !decided) finishBlock(block, ts, type);
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
    
    // FIX(v1): crashes raised through Frida hook trampolines are artifacts of the instrumentation, not
    // app bugs. Java: frida bridge classes in the trace. Native: frida-agent frames in the crashing
    // thread's backtrace of the latest tombstone (needs root; otherwise the crash is kept).
    // FIX(v1): crashes right after the tool launched an activity directly (without the extras the app
    // normally passes) are caused by the tool, not by the app's login flow.
    private static final java.util.List<long[]> toolWindows = new java.util.concurrent.CopyOnWriteArrayList<>();
    public static void markToolInducedWindow(long startMs, long endMs) { toolWindows.add(new long[]{startMs, endMs}); }

    private static long parseLogcatTime(String ts) {
        try {
            int year = java.time.Year.now().getValue();
            java.time.LocalDateTime t = java.time.LocalDateTime.parse(year + "-" + ts.trim().replace(' ', 'T'));
            return t.atZone(java.time.ZoneId.systemDefault()).toInstant().toEpochMilli();
        } catch (Exception e) { return -1; }
    }

    private boolean inToolWindow(CrashEvent crash) {
        long t = crash.timestamp == null ? -1 : parseLogcatTime(crash.timestamp);
        if (t < 0) return false;
        for (long[] w : toolWindows) if (t >= w[0] - 1000 && t <= w[1]) return true;
        return false;
    }

    private boolean isInstrumentationInduced(CrashEvent crash) {
        if (inToolWindow(crash)) {
            System.out.println("[CRASH_DETECTOR] Crash within a tool-driven direct activity launch window");
            return true;
        }
        if (crash.stackTrace != null && (crash.stackTrace.contains("re.frida") || crash.stackTrace.contains("frida-agent"))) return true;
        if (!"NATIVE_CRASH".equals(crash.exceptionType)) return false;
        try {
            Process p = new ProcessBuilder("adb", "shell",
                "f=$(ls -t /data/tombstones/ 2>/dev/null | grep -v pb | head -1); [ -n \"$f\" ] && cat /data/tombstones/$f")
                .redirectErrorStream(true).start();
            String t = new String(p.getInputStream().readAllBytes());
            p.waitFor();
            if (targetPackage != null && !t.contains("Cmdline: " + targetPackage)) return false;
            int b = t.indexOf("backtrace:");
            if (b < 0) return false;
            int e = t.indexOf("\n\n", b);
            String crashingThread = e > 0 ? t.substring(b, e) : t.substring(b);
            if (crashingThread.contains("frida-agent")) return true;
            // A Java method replaced by a Frida hook runs as a native method; a crash returning through
            // ART's generic JNI trampoline into app bytecode (vdex/odex/oat) is a hook artifact.
            String[] frames = crashingThread.split("\n");
            for (int i = 0; i < Math.min(frames.length, 6); i++) {
                if (frames[i].contains("GenericJniMethodEnd") || frames[i].contains("art_quick_generic_jni_trampoline")) {
                    for (int j = i + 1; j < Math.min(frames.length, i + 4); j++) {
                        String f = frames[j];
                        if (f.contains("/data/app/") && (f.contains(".vdex") || f.contains(".odex") || f.contains(".oat"))) return true;
                        if (f.contains("dalvik-jit-code-cache")) return true;   // JIT-compiled app bytecode
                        if (f.contains(".so")) break;
                    }
                }
            }
            // JNI abort raised from Frida's JS thread: only libc/anonymous (JIT) frames, no app code
            boolean jniAbort = t.contains("JNI DETECTED ERROR") || t.contains("JNI ERROR (app bug)");
            boolean anonymousOnly = crashingThread.contains("<anonymous:") && !crashingThread.contains("/data/app/")
                && !crashingThread.contains(".oat") && !crashingThread.contains(".vdex");
            return jniAbort && anonymousOnly;
        } catch (Exception ex) {
            return false;
        }
    }

    @Override
    public List<DetectedBug> detectBugs() {
        List<DetectedBug> bugs = new ArrayList<>();
        
        System.out.println("[CRASH_DETECTOR] Checking for crashes...");
        System.out.println("[CRASH_DETECTOR] Total crashes recorded: " + crashes.size());
        
        for (CrashEvent crash : crashes) {
            if (isInstrumentationInduced(crash)) {
                System.out.println("[CRASH_DETECTOR] Excluded instrumentation-induced crash (Frida frames in crashing thread): " + crash.timestamp);
                continue;
            }
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
