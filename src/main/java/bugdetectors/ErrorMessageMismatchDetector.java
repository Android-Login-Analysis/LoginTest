package bugdetectors;

import java.util.*;
import java.util.regex.Pattern;

/**
 * Detector for Category A: Improper Error State Handling
 * 
 * Detects when error messages don't match the actual error state.
 * Example: Network error displayed as "Invalid email/password"
 * 
 * Reference: WordPress issue #7437
 */
public class ErrorMessageMismatchDetector implements BugDetector {
    
    private List<ErrorEvent> errorEvents = new ArrayList<>();
    private List<ToastMessage> toastMessages = new ArrayList<>();
    private List<DetectedBug> detectedBugs = new ArrayList<>();
    
    /**
     * Represents an error state event
     */
    static class ErrorEvent {
        String state;           // e.g., "NetworkError", "InvalidCredentials"
        long timestamp;
        String method;
        String stackTrace;
        
        ErrorEvent(String state, long timestamp) {
            this.state = state;
            this.timestamp = timestamp;
        }
    }
    
    /**
     * Represents a Toast message
     */
    static class ToastMessage {
        String message;
        long timestamp;
        String currentState;
        
        ToastMessage(String message, long timestamp, String currentState) {
            this.message = message;
            this.timestamp = timestamp;
            this.currentState = currentState;
        }
    }
    
    @Override
    public String getName() {
        return "ErrorMessageMismatchDetector";
    }
    
    @Override
    public BugCategory getCategory() {
        return BugCategory.IMPROPER_ERROR_STATE_HANDLING;
    }
    
    /**
     * Record an error state event
     */
    public void recordErrorState(String state, long timestamp) {
        if (isErrorState(state)) {
            errorEvents.add(new ErrorEvent(state, timestamp));
            System.out.println("[BUG_DETECTOR] Recorded error state: " + state);
        }
    }
    
    /**
     * Record a toast message
     */
    public void recordToastMessage(String message, long timestamp, String currentState) {
        toastMessages.add(new ToastMessage(message, timestamp, currentState));
        System.out.println("[BUG_DETECTOR] Recorded toast: " + message + " (state: " + currentState + ")");
    }
    
    @Override
    public List<DetectedBug> detectBugs() {
        detectedBugs.clear();
        
        // For each toast message, find the closest error state
        for (ToastMessage toast : toastMessages) {
            ErrorEvent closestError = findClosestErrorBefore(toast.timestamp);
            
            if (closestError != null) {
                // Check for mismatch
                String mismatchType = checkMismatch(closestError.state, toast.message);
                if (mismatchType != null) {
                    DetectedBug bug = createMismatchBug(closestError, toast, mismatchType);
                    detectedBugs.add(bug);
                }
            }
        }
        
        return detectedBugs;
    }
    
    /**
     * Find the closest error state before the given timestamp
     */
    private ErrorEvent findClosestErrorBefore(long timestamp) {
        ErrorEvent closest = null;
        long minDiff = Long.MAX_VALUE;
        
        for (ErrorEvent error : errorEvents) {
            if (error.timestamp <= timestamp) {
                long diff = timestamp - error.timestamp;
                // Within 5 seconds window
                if (diff < 5000 && diff < minDiff) {
                    closest = error;
                    minDiff = diff;
                }
            }
        }
        
        return closest;
    }
    
    /**
     * Check if error state and message mismatch
     * Returns mismatch type if found, null otherwise
     */
    private String checkMismatch(String errorState, String message) {
        String messageLower = message.toLowerCase();
        
        // Pattern 1: Network error but credential-related message
        if (isNetworkError(errorState)) {
            if (containsCredentialKeywords(messageLower)) {
                return "NETWORK_ERROR_AS_CREDENTIAL";
            }
        }
        
        // Pattern 2: Service unavailable but credential-related message
        if (isServiceUnavailable(errorState)) {
            if (containsCredentialKeywords(messageLower)) {
                return "SERVICE_ERROR_AS_CREDENTIAL";
            }
        }
        
        // Pattern 3: Credential error but network-related message
        if (isCredentialError(errorState)) {
            if (containsNetworkKeywords(messageLower)) {
                return "CREDENTIAL_ERROR_AS_NETWORK";
            }
        }
        
        // Pattern 4: Specific error but generic message
        if (!errorState.equals("LoginFailure") && !errorState.equals("Unknown")) {
            if (isGenericErrorMessage(messageLower)) {
                return "SPECIFIC_ERROR_AS_GENERIC";
            }
        }
        
        return null;
    }
    
    /**
     * Create a bug report for mismatch
     */
    private DetectedBug createMismatchBug(ErrorEvent error, ToastMessage toast, String mismatchType) {
        DetectedBug bug = new DetectedBug(
            BugCategory.IMPROPER_ERROR_STATE_HANDLING,
            mismatchType,
            "Error message does not match the actual error type"
        );
        
        bug.setEvidence(String.format(
            "Actual Error: %s\n  Displayed Message: \"%s\"\n  Time Gap: %.1fs",
            error.state,
            toast.message,
            (toast.timestamp - error.timestamp) / 1000.0
        ));
        
        // Provide specific recommendations based on mismatch type
        switch (mismatchType) {
            case "NETWORK_ERROR_AS_CREDENTIAL":
                bug.setRecommendation(
                    "Check exception type before displaying message:\n" +
                    "  if (exception instanceof IOException || exception instanceof SocketTimeoutException) {\n" +
                    "      showMessage(\"Network error. Please check your connection.\");\n" +
                    "  } else if (response.isInvalidCredentials()) {\n" +
                    "      showMessage(\"Invalid email or password.\");\n" +
                    "  }"
                );
                bug.setSeverity(DetectedBug.Severity.HIGH);
                break;
                
            case "SERVICE_ERROR_AS_CREDENTIAL":
                bug.setRecommendation(
                    "Check HTTP status code:\n" +
                    "  if (statusCode >= 500) {\n" +
                    "      showMessage(\"Service temporarily unavailable. Please try again later.\");\n" +
                    "  } else if (statusCode == 401 || statusCode == 403) {\n" +
                    "      showMessage(\"Invalid credentials.\");\n" +
                    "  }"
                );
                bug.setSeverity(DetectedBug.Severity.HIGH);
                break;
                
            case "CREDENTIAL_ERROR_AS_NETWORK":
                bug.setRecommendation(
                    "Distinguish between network and authentication errors:\n" +
                    "  if (response.statusCode == 401) {\n" +
                    "      showMessage(\"Incorrect username or password.\");\n" +
                    "  } else {\n" +
                    "      showMessage(\"Connection error.\");\n" +
                    "  }"
                );
                bug.setSeverity(DetectedBug.Severity.MEDIUM);
                break;
                
            case "SPECIFIC_ERROR_AS_GENERIC":
                bug.setRecommendation(
                    "Provide more specific error messages for better user experience:\n" +
                    "  - Network errors should mention connectivity\n" +
                    "  - Credential errors should mention credentials\n" +
                    "  - Server errors should suggest trying later"
                );
                bug.setSeverity(DetectedBug.Severity.MEDIUM);
                break;
        }
        
        bug.setLocation("Login error handling path (check Toast.makeText calls)");
        
        return bug;
    }
    
    // Helper methods for error classification
    
    private boolean isErrorState(String state) {
        return state != null && (
            state.endsWith("Error") ||
            state.endsWith("Failure") ||
            state.contains("ServiceUnavailable") ||
            state.equals("InvalidCredentials") ||
            state.equals("CredentialFormatError")
        );
    }
    
    private boolean isNetworkError(String state) {
        return state.equals("NetworkError") || 
               state.equals("ServiceUnavailable_Auth") ||
               state.equals("ServiceUnavailable_MFA_Send") ||
               state.equals("ServiceUnavailable_MFA_Verify");
    }
    
    private boolean isServiceUnavailable(String state) {
        return state.contains("ServiceUnavailable");
    }
    
    private boolean isCredentialError(String state) {
        return state.equals("InvalidCredentials") ||
               state.equals("CredentialFormatError");
    }
    
    private boolean containsCredentialKeywords(String message) {
        String[] keywords = {
            "password", "credential", "username", "email", "invalid", 
            "incorrect", "wrong", "not registered", "not found", "account"
        };
        for (String keyword : keywords) {
            if (message.contains(keyword)) {
                return true;
            }
        }
        return false;
    }
    
    private boolean containsNetworkKeywords(String message) {
        String[] keywords = {
            "network", "connection", "internet", "offline", "timeout",
            "unreachable", "no connection", "check your connection"
        };
        for (String keyword : keywords) {
            if (message.contains(keyword)) {
                return true;
            }
        }
        return false;
    }
    
    private boolean isGenericErrorMessage(String message) {
        String[] genericPatterns = {
            "error", "failed", "something went wrong", "try again",
            "please try again", "an error occurred", "login failed"
        };
        
        // Check if message is ONLY generic (doesn't contain specific info)
        boolean hasGeneric = false;
        for (String pattern : genericPatterns) {
            if (message.contains(pattern)) {
                hasGeneric = true;
                break;
            }
        }
        
        if (!hasGeneric) return false;
        
        // Check if it lacks specific info
        boolean hasSpecific = containsCredentialKeywords(message) || 
                            containsNetworkKeywords(message);
        
        return !hasSpecific;
    }
    
    @Override
    public void reset() {
        errorEvents.clear();
        toastMessages.clear();
        detectedBugs.clear();
    }
    
    /**
     * Get statistics for reporting
     */
    public Map<String, Object> getStatistics() {
        Map<String, Object> stats = new HashMap<>();
        stats.put("error_events", errorEvents.size());
        stats.put("toast_messages", toastMessages.size());
        stats.put("bugs_detected", detectedBugs.size());
        return stats;
    }
}
