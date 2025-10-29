package bugdetectors;

import java.util.*;

/**
 * Base interface for bug detectors
 */
public interface BugDetector {
    
    /**
     * Get the name of this bug detector
     */
    String getName();
    
    /**
     * Get the category of bugs this detector finds
     */
    BugCategory getCategory();
    
    /**
     * Analyze and detect bugs
     * @return List of detected bugs
     */
    List<DetectedBug> detectBugs();
    
    /**
     * Reset detector state for new round
     */
    void reset();
    
    /**
     * Get statistics about this detector's findings
     */
    Map<String, Object> getStatistics();
}

/**
 * Bug categories based on research paper symptoms
 */
enum BugCategory {
    // Symptom-based categories (from paper Table III)
    CRASH,                              // Symptom 1: Application crash (85 issues)
    IMPROPER_ERROR_STATE_HANDLING,      // Symptom 7: Inaccurate error message (39 issues)
    LOGIN_TIMEOUT,                      // Symptom 2: Login delay/timeout (57 issues)
    INCORRECT_NAVIGATION,               // Symptom 3: Incorrect navigation flow (51 issues)
    LIFECYCLE_INTERFERENCE,             // Symptom (partial): Data loss on rotation
    ACCOUNT_MANAGEMENT_BREAK,           // Symptom 4: Account management issues (48 issues)
    CREDENTIAL_REJECTION,               // Symptom 5: Valid credentials rejected (41 issues)
    UI_ERROR,                           // Symptom 6: UI freeze/malfunction (40 issues)
    
    // Root cause categories (for reference, not used in detection)
    MISSING_LOGIN_FLOW,                 // Root cause: Missing state updates
    INCORRECT_LOGIN_FLOW                // Root cause: Invalid flow paths
}

/**
 * Represents a detected bug
 */
class DetectedBug {
    private BugCategory category;
    private String bugType;
    private String description;
    private String location;
    private String evidence;
    private String recommendation;
    private Severity severity;
    
    // Enhanced fields for precise localization
    private String activityName;         // Current Activity when bug occurred
    private String stateMachineState;    // State machine state
    private String screenshotPath;       // Screenshot file path
    private String apiCall;              // API endpoint if applicable
    private Integer httpStatus;          // HTTP status code if applicable
    private Long timestamp;              // When bug was detected
    
    // Context information
    private Map<String, Object> context; // Additional context data
    
    public enum Severity {
        CRITICAL, HIGH, MEDIUM, LOW
    }
    
    public DetectedBug(BugCategory category, String bugType, String description) {
        this.category = category;
        this.bugType = bugType;
        this.description = description;
        this.severity = Severity.MEDIUM;
        this.context = new HashMap<>();
        this.timestamp = System.currentTimeMillis();
    }
    
    public BugCategory getCategory() { return category; }
    public String getBugType() { return bugType; }
    public String getDescription() { return description; }
    public String getLocation() { return location; }
    public String getEvidence() { return evidence; }
    public String getRecommendation() { return recommendation; }
    public Severity getSeverity() { return severity; }
    public String getActivityName() { return activityName; }
    public String getStateMachineState() { return stateMachineState; }
    public String getScreenshotPath() { return screenshotPath; }
    public String getApiCall() { return apiCall; }
    public Integer getHttpStatus() { return httpStatus; }
    public Long getTimestamp() { return timestamp; }
    public Map<String, Object> getContext() { return context; }
    
    public DetectedBug setLocation(String location) {
        this.location = location;
        return this;
    }
    
    public DetectedBug setEvidence(String evidence) {
        this.evidence = evidence;
        return this;
    }
    
    public DetectedBug setRecommendation(String recommendation) {
        this.recommendation = recommendation;
        return this;
    }
    
    public DetectedBug setSeverity(Severity severity) {
        this.severity = severity;
        return this;
    }
    
    /**
     * Set detailed location with activity, state, and screenshot
     */
    public DetectedBug setDetailedLocation(String activity, String state, String screenshot) {
        this.activityName = activity;
        this.stateMachineState = state;
        this.screenshotPath = screenshot;
        
        // Build comprehensive location string
        StringBuilder loc = new StringBuilder();
        if (activity != null) {
            loc.append("Activity: ").append(activity).append("\n");
        }
        if (state != null) {
            loc.append("State Machine: ").append(state).append("\n");
        }
        if (screenshot != null) {
            loc.append("Screenshot: ").append(screenshot);
        }
        this.location = loc.toString();
        return this;
    }
    
    public DetectedBug setApiCall(String apiCall) {
        this.apiCall = apiCall;
        return this;
    }
    
    public DetectedBug setHttpStatus(int status) {
        this.httpStatus = status;
        return this;
    }
    
    public DetectedBug addContext(String key, Object value) {
        this.context.put(key, value);
        return this;
    }
    
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("\n========================================\n");
        sb.append("🐛 BUG DETECTED\n");
        sb.append("========================================\n");
        sb.append("Category: ").append(category).append("\n");
        sb.append("Type: ").append(bugType).append("\n");
        sb.append("Severity: ").append(severity).append("\n");
        sb.append("\nDescription:\n  ").append(description).append("\n");
        
        if (location != null) {
            sb.append("\nLocation:\n  ").append(location.replace("\n", "\n  ")).append("\n");
        }
        
        if (evidence != null) {
            sb.append("\nEvidence:\n  ").append(evidence.replace("\n", "\n  ")).append("\n");
        }
        
        if (recommendation != null) {
            sb.append("\nRecommendation:\n  ").append(recommendation.replace("\n", "\n  ")).append("\n");
        }
        
        sb.append("========================================\n");
        return sb.toString();
    }
}
