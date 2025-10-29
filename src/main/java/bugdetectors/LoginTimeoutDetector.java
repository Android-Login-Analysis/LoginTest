package bugdetectors;

import java.util.*;

/**
 * Detects login delays and timeouts
 * Symptom: Login Delay/Timeout (57 issues in paper)
 * 
 * Monitors login duration and detects abnormal delays
 */
public class LoginTimeoutDetector implements BugDetector {
    
    private List<LoginAttempt> attempts = new ArrayList<>();
    private static final long NORMAL_LOGIN_THRESHOLD = 10000; // 10 seconds
    private static final long TIMEOUT_THRESHOLD = 30000; // 30 seconds
    
    private static class LoginAttempt {
        long startTime;
        long endTime;
        boolean success;
        String reason; // "timeout", "delay", or "normal"
        
        long getDuration() {
            return endTime - startTime;
        }
    }
    
    @Override
    public String getName() {
        return "LoginTimeoutDetector";
    }
    
    @Override
    public BugCategory getCategory() {
        return BugCategory.LOGIN_TIMEOUT;
    }
    
    /**
     * Record the start of a login attempt
     */
    public void recordLoginStart() {
        LoginAttempt attempt = new LoginAttempt();
        attempt.startTime = System.currentTimeMillis();
        attempts.add(attempt);
        
        System.out.println("[TIMEOUT_DETECTOR] Login attempt started");
    }
    
    /**
     * Record the end of a login attempt
     */
    public void recordLoginEnd(boolean success) {
        if (attempts.isEmpty()) {
            return;
        }
        
        LoginAttempt attempt = attempts.get(attempts.size() - 1);
        attempt.endTime = System.currentTimeMillis();
        attempt.success = success;
        
        long duration = attempt.getDuration();
        
        if (duration > TIMEOUT_THRESHOLD) {
            attempt.reason = "timeout";
            System.out.println("[TIMEOUT_DETECTOR] ⚠️  Timeout detected: " + duration + "ms");
        } else if (duration > NORMAL_LOGIN_THRESHOLD) {
            attempt.reason = "delay";
            System.out.println("[TIMEOUT_DETECTOR] ⚠️  Delay detected: " + duration + "ms");
        } else {
            attempt.reason = "normal";
            System.out.println("[TIMEOUT_DETECTOR] Normal duration: " + duration + "ms");
        }
    }
    
    @Override
    public List<DetectedBug> detectBugs() {
        List<DetectedBug> bugs = new ArrayList<>();
        
        System.out.println("[TIMEOUT_DETECTOR] Checking login timeouts...");
        System.out.println("[TIMEOUT_DETECTOR] Total attempts: " + attempts.size());
        
        // Count timeouts and delays
        int timeouts = 0;
        int delays = 0;
        long maxDuration = 0;
        
        for (LoginAttempt attempt : attempts) {
            if ("timeout".equals(attempt.reason)) {
                timeouts++;
            } else if ("delay".equals(attempt.reason)) {
                delays++;
            }
            maxDuration = Math.max(maxDuration, attempt.getDuration());
        }
        
        System.out.println("[TIMEOUT_DETECTOR] Timeouts: " + timeouts + ", Delays: " + delays);
        
        // Report timeout bug
        if (timeouts > 0) {
            DetectedBug bug = new DetectedBug(
                BugCategory.LOGIN_TIMEOUT,
                "LOGIN_TIMEOUT",
                "Login process exceeds acceptable time limits"
            );
            
            bug.setSeverity(DetectedBug.Severity.HIGH);
            bug.setLocation("Login authentication logic or network calls");
            
            bug.setEvidence(String.format(
                "Timeout Events: %d\n" +
                "Delay Events: %d\n" +
                "Total Attempts: %d\n" +
                "Max Duration: %.1f seconds\n" +
                "Threshold: %.1f seconds",
                timeouts,
                delays,
                attempts.size(),
                maxDuration / 1000.0,
                TIMEOUT_THRESHOLD / 1000.0
            ));
            
            bug.setRecommendation(
                "Optimize login process to complete within reasonable time:\n\n" +
                "1. Add timeout configuration:\n" +
                "   val timeout = 10.seconds\n" +
                "   httpClient.timeout = timeout\n\n" +
                "2. Show progress indicators:\n" +
                "   progressBar.visibility = View.VISIBLE\n\n" +
                "3. Handle timeout gracefully:\n" +
                "   try {\n" +
                "       withTimeout(10000) {\n" +
                "           val result = apiCall()\n" +
                "       }\n" +
                "   } catch (e: TimeoutException) {\n" +
                "       showError(\"Login timeout. Please try again.\")\n" +
                "   }\n\n" +
                "4. Consider background processing for slow operations"
            );
            
            bugs.add(bug);
        }
        
        // Report excessive delay
        if (delays > attempts.size() / 2 && delays > 0) {
            DetectedBug bug = new DetectedBug(
                BugCategory.LOGIN_TIMEOUT,
                "EXCESSIVE_LOGIN_DELAY",
                "Login consistently takes longer than expected"
            );
            
            bug.setSeverity(DetectedBug.Severity.MEDIUM);
            bug.setLocation("Login authentication or network layer");
            
            bug.setEvidence(String.format(
                "Delayed Logins: %d out of %d (%.0f%%)\n" +
                "Average Duration: >%.1f seconds\n" +
                "Expected: <%.1f seconds",
                delays,
                attempts.size(),
                (delays * 100.0 / attempts.size()),
                NORMAL_LOGIN_THRESHOLD / 1000.0,
                NORMAL_LOGIN_THRESHOLD / 1000.0
            ));
            
            bug.setRecommendation(
                "Profile and optimize login performance:\n" +
                "- Use network profiling tools\n" +
                "- Reduce number of sequential network calls\n" +
                "- Implement caching for non-sensitive data\n" +
                "- Use connection pooling"
            );
            
            bugs.add(bug);
        }
        
        return bugs;
    }
    
    @Override
    public void reset() {
        attempts.clear();
        System.out.println("[TIMEOUT_DETECTOR] Reset");
    }
    
    @Override
    public Map<String, Object> getStatistics() {
        Map<String, Object> stats = new HashMap<>();
        stats.put("total_attempts", attempts.size());
        
        int timeouts = 0, delays = 0, normal = 0;
        for (LoginAttempt attempt : attempts) {
            if ("timeout".equals(attempt.reason)) timeouts++;
            else if ("delay".equals(attempt.reason)) delays++;
            else normal++;
        }
        
        stats.put("timeouts", timeouts);
        stats.put("delays", delays);
        stats.put("normal", normal);
        
        return stats;
    }
}
