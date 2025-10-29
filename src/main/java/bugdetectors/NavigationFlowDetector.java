package bugdetectors;

import java.util.*;

/**
 * Detects incorrect navigation flow after login
 * Symptom: Incorrect Navigation Flow (51 issues in paper)
 * 
 * Verifies that user is directed to correct screen after successful login
 */
public class NavigationFlowDetector implements BugDetector {
    
    private List<NavigationEvent> navigationEvents = new ArrayList<>();
    private String currentActivity;
    private boolean loginSucceeded = false;
    private long loginSuccessTime = 0;
    private String currentState;
    private String screenshotPath;
    
    private static class NavigationEvent {
        String fromActivity;
        String toActivity;
        long timestamp;
        boolean afterSuccessfulLogin;
        
        NavigationEvent(String from, String to, long timestamp, boolean afterLogin) {
            this.fromActivity = from;
            this.toActivity = to;
            this.timestamp = timestamp;
            this.afterSuccessfulLogin = afterLogin;
        }
    }
    
    @Override
    public String getName() {
        return "NavigationFlowDetector";
    }
    
    @Override
    public BugCategory getCategory() {
        return BugCategory.INCORRECT_NAVIGATION;
    }
    
    /**
     * Record login success
     */
    public void recordLoginSuccess() {
        loginSucceeded = true;
        loginSuccessTime = System.currentTimeMillis();
        System.out.println("[NAV_DETECTOR] Login succeeded at " + loginSuccessTime);
    }
    
    /**
     * Set current activity name
     */
    public void setCurrentActivity(String activity) {
        if (activity != null && !activity.equals(currentActivity)) {
            recordActivityChange(activity);
        }
        this.currentActivity = activity;
    }
    
    /**
     * Set current state machine state
     */
    public void setCurrentState(String state) {
        this.currentState = state;
    }
    
    /**
     * Set latest screenshot path
     */
    public void setLatestScreenshot(String screenshot) {
        this.screenshotPath = screenshot;
    }
    
    /**
     * Record activity change
     */
    public void recordActivityChange(String newActivity) {
        if (newActivity != null && !newActivity.equals(currentActivity)) {
            NavigationEvent event = new NavigationEvent(
                currentActivity,
                newActivity,
                System.currentTimeMillis(),
                loginSucceeded
            );
            navigationEvents.add(event);
            
            System.out.println("[NAV_DETECTOR] Navigation: " + currentActivity + " → " + newActivity);
            
            currentActivity = newActivity;
        }
    }
    
    @Override
    public List<DetectedBug> detectBugs() {
        List<DetectedBug> bugs = new ArrayList<>();
        
        System.out.println("[NAV_DETECTOR] Checking navigation flow...");
        System.out.println("[NAV_DETECTOR] Login succeeded: " + loginSucceeded);
        System.out.println("[NAV_DETECTOR] Current activity: " + currentActivity);
        System.out.println("[NAV_DETECTOR] Current state: " + currentState);
        System.out.println("[NAV_DETECTOR] Navigation events: " + navigationEvents.size());
        
        if (!loginSucceeded) {
            System.out.println("[NAV_DETECTOR] Login not successful, skipping navigation check");
            return bugs; // Only check if login succeeded
        }
        
        // Check if user is stuck on login-related screen after successful login
        // This is the real bug pattern, not just "0 navigation events"
        boolean stuckOnLoginScreen = isStuckOnLoginScreen();
        
        if (stuckOnLoginScreen) {
            System.out.println("[NAV_DETECTOR] ⚠️  User stuck on login screen after successful login!");
            
            DetectedBug bug = new DetectedBug(
                BugCategory.INCORRECT_NAVIGATION,
                "STUCK_ON_LOGIN_SCREEN",
                "User remains on login screen after successful authentication"
            );
            
            bug.setSeverity(DetectedBug.Severity.HIGH);
            
            // Use enhanced location with activity, state, and screenshot
            bug.setDetailedLocation(currentActivity, currentState, screenshotPath);
            
            long timeSinceLogin = loginSuccessTime > 0 ? 
                (System.currentTimeMillis() - loginSuccessTime) / 1000 : 0;
            
            bug.setEvidence(String.format(
                "Login Status: SUCCESS\n" +
                "Current Activity: %s\n" +
                "Current State: %s\n" +
                "Time Since Login: %d seconds\n" +
                "Navigation Events: %d\n" +
                "Screenshot: %s\n\n" +
                "Analysis:\n" +
                "- Login API succeeded\n" +
                "- But user is still on login-related screen\n" +
                "- Expected: Navigate to main/home screen\n" +
                "- Actual: Stuck on %s\n\n" +
                "This may indicate:\n" +
                "1. Missing navigation code after login success\n" +
                "2. Navigation code not executing\n" +
                "3. Exception in navigation handler (check logs)",
                currentActivity != null ? currentActivity : "Unknown",
                currentState != null ? currentState : "Unknown",
                timeSinceLogin,
                navigationEvents.size(),
                screenshotPath != null ? screenshotPath : "Not captured",
                currentActivity != null ? currentActivity : "login screen"
            ));
            
            bug.setRecommendation(
                "Fix navigation after successful login:\n\n" +
                "Based on state machine analysis:\n" +
                "State: " + (currentState != null ? currentState : "Unknown") + "\n" +
                "Expected Transition: LoginSuccess → MainScreen\n\n" +
                "Add navigation code to login success handler:\n\n" +
                "// Example fix:\n" +
                "if (loginResponse.isSuccess()) {\n" +
                "    // Clear token/credentials\n" +
                "    prefs.edit().putString(\"auth_token\", response.token).apply();\n\n" +
                "    // Navigate to main activity\n" +
                "    Intent intent = new Intent(this, MainActivity.class);\n" +
                "    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | \n" +
                "                   Intent.FLAG_ACTIVITY_CLEAR_TASK);\n" +
                "    startActivity(intent);\n" +
                "    finish(); // Close login activity\n" +
                "}\n\n" +
                "Verification:\n" +
                "- Check screenshot: " + (screenshotPath != null ? screenshotPath : "N/A") + "\n" +
                "- Verify that main screen appears after login\n" +
                "- Ensure FLAG_ACTIVITY_CLEAR_TASK prevents back to login"
            );
            
            bugs.add(bug);
        } else {
            System.out.println("[NAV_DETECTOR] ✓ Navigation flow appears correct");
        }
        
        return bugs;
    }
    
    /**
     * Check if user is stuck on login-related screen
     * Uses multiple signals to reduce false positives
     */
    private boolean isStuckOnLoginScreen() {
        // Signal 1: Check if current activity is login-related
        boolean onLoginActivity = isLoginActivity(currentActivity);
        
        // Signal 2: Check if state machine indicates login state
        boolean inLoginState = isLoginRelatedState(currentState);
        
        // Signal 3: Time since login > 3 seconds (gives time for navigation)
        boolean enoughTimePassed = loginSuccessTime > 0 && 
            (System.currentTimeMillis() - loginSuccessTime) > 3000;
        
        // Only report bug if:
        // - On login activity OR in login state
        // - AND enough time has passed for navigation to occur
        boolean stuck = (onLoginActivity || inLoginState) && enoughTimePassed;
        
        System.out.println("[NAV_DETECTOR] Stuck check: onLoginActivity=" + onLoginActivity + 
                          ", inLoginState=" + inLoginState + 
                          ", enoughTimePassed=" + enoughTimePassed +
                          " → stuck=" + stuck);
        
        return stuck;
    }
    
    /**
     * Check if state machine state is login-related
     */
    private boolean isLoginRelatedState(String state) {
        if (state == null) return false;
        
        // These states should have transitioned to main screen
        return state.equals("LoginSuccess") ||
               state.equals("WaitingForNavigation") ||
               state.equals("LoginComplete") ||
               state.contains("Login") && !state.equals("LoggedIn");
    }
    
    /**
     * Check if activity is a login activity
     */
    private boolean isLoginActivity(String activity) {
        if (activity == null) return false;
        String lower = activity.toLowerCase();
        return lower.contains("login") || 
               lower.contains("signin") || 
               lower.contains("auth");
    }
    
    /**
     * Format navigation flow for evidence
     */
    private String formatNavigationFlow() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < navigationEvents.size(); i++) {
            NavigationEvent event = navigationEvents.get(i);
            sb.append(String.format(
                "%d. %s → %s %s\n",
                i + 1,
                event.fromActivity != null ? event.fromActivity : "Start",
                event.toActivity,
                event.afterSuccessfulLogin ? "[After Login]" : ""
            ));
        }
        return sb.toString();
    }
    
    @Override
    public void reset() {
        navigationEvents.clear();
        currentActivity = null;
        loginSucceeded = false;
        System.out.println("[NAV_DETECTOR] Reset");
    }
    
    @Override
    public Map<String, Object> getStatistics() {
        Map<String, Object> stats = new HashMap<>();
        stats.put("navigation_events", navigationEvents.size());
        stats.put("login_succeeded", loginSucceeded);
        stats.put("current_activity", currentActivity != null ? currentActivity : "Unknown");
        return stats;
    }
}
