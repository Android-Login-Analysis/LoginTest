package bugdetectors;

import java.util.*;

/**
 * Detector for Category B: Lifecycle Interference
 * 
 * Detects potential data loss when device is rotated or Activity is recreated.
 * Checks if Activities/Fragments with user input have onSaveInstanceState.
 * 
 * Reference: Thunderbird #4936, Wikimedia Commons #3973
 */
public class LifecycleDataLossDetector implements BugDetector {
    
    private List<ActivityInfo> activities = new ArrayList<>();
    private List<DetectedBug> detectedBugs = new ArrayList<>();
    
    /**
     * Information about an Activity/Fragment
     */
    static class ActivityInfo {
        String name;
        boolean hasOnSaveInstanceState;
        boolean receivesIntentData;
        List<String> intentDataKeys = new ArrayList<>();
        boolean hasInputFields;
        List<String> inputFieldIds = new ArrayList<>();
        
        ActivityInfo(String name) {
            this.name = name;
        }
    }
    
    @Override
    public String getName() {
        return "LifecycleDataLossDetector";
    }
    
    @Override
    public BugCategory getCategory() {
        return BugCategory.LIFECYCLE_INTERFERENCE;
    }
    
    /**
     * Register an activity for analysis
     */
    public void registerActivity(String activityName, boolean hasOnSaveInstanceState) {
        ActivityInfo activity = findOrCreateActivity(activityName);
        activity.hasOnSaveInstanceState = hasOnSaveInstanceState;
    }
    
    /**
     * Record that activity receives Intent data
     */
    public void recordIntentData(String activityName, String dataKey) {
        ActivityInfo activity = findOrCreateActivity(activityName);
        activity.receivesIntentData = true;
        activity.intentDataKeys.add(dataKey);
        
        // Check if it's sensitive data (credentials)
        if (isSensitiveData(dataKey)) {
            System.out.println("[BUG_DETECTOR] Activity " + activityName + " receives sensitive data: " + dataKey);
        }
    }
    
    /**
     * Record input fields in activity
     */
    public void recordInputField(String activityName, String fieldId) {
        ActivityInfo activity = findOrCreateActivity(activityName);
        activity.hasInputFields = true;
        activity.inputFieldIds.add(fieldId);
    }
    
    // FIX(v1): findings observed at runtime by the rotation oracle (UIManager.runRotationChecks)
    private final List<DetectedBug> observed = new ArrayList<>();

    public void recordObservedLoss(String type, String evidence, String activity) {
        DetectedBug bug = new DetectedBug(BugCategory.LIFECYCLE_INTERFERENCE, type, "Login state lost on device rotation");
        bug.setSeverity(DetectedBug.Severity.HIGH);
        bug.setLocation(activity == null ? "Login activity" : activity);
        bug.setEvidence(evidence);
        observed.add(bug);
    }

    @Override
    public List<DetectedBug> detectBugs() {
        detectedBugs.clear();
        detectedBugs.addAll(observed);
        
        for (ActivityInfo activity : activities) {
            // Check Pattern 1: Has user input but no state saving
            if (activity.hasInputFields && !activity.hasOnSaveInstanceState) {
                DetectedBug bug = createDataLossBug(activity, "INPUT_FIELDS_NOT_SAVED");
                detectedBugs.add(bug);
            }
            
            // Check Pattern 2: Receives Intent data but no state saving
            if (activity.receivesIntentData && !activity.hasOnSaveInstanceState) {
                // Only report if it's sensitive data
                boolean hasSensitive = activity.intentDataKeys.stream()
                    .anyMatch(this::isSensitiveData);
                    
                if (hasSensitive) {
                    DetectedBug bug = createDataLossBug(activity, "INTENT_DATA_NOT_SAVED");
                    detectedBugs.add(bug);
                }
            }
        }
        
        return detectedBugs;
    }
    
    /**
     * Create a data loss bug report
     */
    private DetectedBug createDataLossBug(ActivityInfo activity, String bugType) {
        DetectedBug bug = new DetectedBug(
            BugCategory.LIFECYCLE_INTERFERENCE,
            bugType,
            "Potential data loss on device rotation or Activity recreation"
        );
        
        bug.setLocation("Activity: " + activity.name);
        
        switch (bugType) {
            case "INPUT_FIELDS_NOT_SAVED":
                bug.setEvidence(String.format(
                    "Activity has %d input field(s) but no onSaveInstanceState() method\n" +
                    "  Input fields: %s",
                    activity.inputFieldIds.size(),
                    String.join(", ", activity.inputFieldIds)
                ));
                
                bug.setRecommendation(
                    "Implement onSaveInstanceState() to preserve user input:\n\n" +
                    "override fun onSaveInstanceState(outState: Bundle) {\n" +
                    "    super.onSaveInstanceState(outState)\n" +
                    "    outState.putString(\"username\", usernameEditText.text.toString())\n" +
                    "    // Note: Don't save passwords in Bundle!\n" +
                    "    // Use ViewModel or handle separately\n" +
                    "}\n\n" +
                    "override fun onCreate(savedInstanceState: Bundle?) {\n" +
                    "    super.onCreate(savedInstanceState)\n" +
                    "    savedInstanceState?.let {\n" +
                    "        usernameEditText.setText(it.getString(\"username\"))\n" +
                    "    }\n" +
                    "}"
                );
                
                bug.setSeverity(DetectedBug.Severity.HIGH);
                break;
                
            case "INTENT_DATA_NOT_SAVED":
                List<String> sensitiveKeys = new ArrayList<>();
                for (String key : activity.intentDataKeys) {
                    if (isSensitiveData(key)) {
                        sensitiveKeys.add(key);
                    }
                }
                
                bug.setEvidence(String.format(
                    "Activity receives Intent data but no onSaveInstanceState() method\n" +
                    "  Sensitive data keys: %s",
                    String.join(", ", sensitiveKeys)
                ));
                
                bug.setRecommendation(
                    "For credential data received via Intent:\n\n" +
                    "Option 1 - Use ViewModel (Recommended):\n" +
                    "  Store credentials in ViewModel instead of Intent extras\n" +
                    "  ViewModel survives configuration changes automatically\n\n" +
                    "Option 2 - Handle in onSaveInstanceState:\n" +
                    "  Save non-sensitive data (username) in Bundle\n" +
                    "  Re-request password if needed after rotation\n\n" +
                    "IMPORTANT: Never save passwords in Bundle or SharedPreferences plaintext!"
                );
                
                bug.setSeverity(DetectedBug.Severity.CRITICAL);
                break;
        }
        
        return bug;
    }
    
    /**
     * Check if data key is sensitive (credentials)
     */
    private boolean isSensitiveData(String key) {
        if (key == null) return false;
        String keyLower = key.toLowerCase();
        return keyLower.contains("password") ||
               keyLower.contains("credential") ||
               keyLower.contains("token") ||
               keyLower.contains("secret") ||
               keyLower.contains("key");
    }
    
    /**
     * Find or create activity info
     */
    private ActivityInfo findOrCreateActivity(String name) {
        for (ActivityInfo activity : activities) {
            if (activity.name.equals(name)) {
                return activity;
            }
        }
        ActivityInfo newActivity = new ActivityInfo(name);
        activities.add(newActivity);
        return newActivity;
    }
    
    @Override
    public void reset() {
        activities.clear();
        detectedBugs.clear();
        observed.clear();
    }
    
    /**
     * Get statistics for reporting
     */
    public Map<String, Object> getStatistics() {
        Map<String, Object> stats = new HashMap<>();
        stats.put("activities_analyzed", activities.size());
        
        int withSaveState = 0;
        int withoutSaveState = 0;
        int withInputs = 0;
        
        for (ActivityInfo activity : activities) {
            if (activity.hasOnSaveInstanceState) withSaveState++;
            else withoutSaveState++;
            if (activity.hasInputFields) withInputs++;
        }
        
        stats.put("with_save_state", withSaveState);
        stats.put("without_save_state", withoutSaveState);
        stats.put("with_input_fields", withInputs);
        stats.put("bugs_detected", detectedBugs.size());
        
        return stats;
    }
}
