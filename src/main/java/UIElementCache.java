import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Global cache for storing discovered UI elements to avoid repeated searches
 */
public class UIElementCache {
    private static UIElementCache instance;
    
    // Login buttons cache
    private UIElement normalLoginButton = null;
    private UIElement googleLoginButton = null;
    private UIElement facebookLoginButton = null;
    
    // Input fields cache
    private UIElement usernameField = null;
    private UIElement passwordField = null;
    
    // Snapshot management
    private Map<String, String> createdSnapshots = new ConcurrentHashMap<>();
    private Map<String, Boolean> discoveredMethods = new ConcurrentHashMap<>();
    
    // Last interaction coordinates
    private int lastClickX = -1;
    private int lastClickY = -1;
    
    private UIElementCache() {}
    
    public static synchronized UIElementCache getInstance() {
        if (instance == null) {
            instance = new UIElementCache();
        }
        return instance;
    }
    
    // Login button setters/getters
    public void setNormalLoginButton(UIElement button) {
        if (button != null && normalLoginButton == null) {
            normalLoginButton = button;
            markMethodDiscovered("normal");
        }
    }
    
    public UIElement getNormalLoginButton() {
        return normalLoginButton;
    }
    
    public void setGoogleLoginButton(UIElement button) {
        if (button != null && googleLoginButton == null) {
            googleLoginButton = button;
            markMethodDiscovered("google");
        }
    }
    
    public UIElement getGoogleLoginButton() {
        return googleLoginButton;
    }
    
    public void setFacebookLoginButton(UIElement button) {
        if (button != null && facebookLoginButton == null) {
            facebookLoginButton = button;
            markMethodDiscovered("facebook");
        }
    }
    
    public UIElement getFacebookLoginButton() {
        return facebookLoginButton;
    }
    
    // Input field setters/getters
    public void setUsernameField(UIElement field) {
        if (field != null) {
            usernameField = field;
        }
    }
    
    public UIElement getUsernameField() {
        return usernameField;
    }
    
    public void setPasswordField(UIElement field) {
        if (field != null) {
            passwordField = field;
        }
    }
    
    public UIElement getPasswordField() {
        return passwordField;
    }
    
    // Coordinate tracking
    public void setLastClickCoordinates(int x, int y) {
        lastClickX = x;
        lastClickY = y;
    }
    
    public String getLastClickCoordinates() {
        if (lastClickX >= 0 && lastClickY >= 0) {
            return lastClickX + "_" + lastClickY;
        }
        return "";
    }
    
    // Method discovery tracking
    private void markMethodDiscovered(String method) {
        if (!discoveredMethods.containsKey(method)) {
            discoveredMethods.put(method, true);
            System.out.println("[Cache] New login method discovered: " + method);
        }
    }
    
    public boolean isMethodDiscovered(String method) {
        return discoveredMethods.getOrDefault(method, false);
    }
    
    // Snapshot management
    public void recordSnapshot(String method, String snapshotName) {
        createdSnapshots.put(method, snapshotName);
        System.out.println("[Cache] Snapshot created for " + method + ": " + snapshotName);
    }
    
    public String getSnapshot(String method) {
        return createdSnapshots.get(method);
    }
    
    public boolean hasSnapshot(String method) {
        return createdSnapshots.containsKey(method);
    }
    
    // Check if we have complete login elements for normal login
    public boolean hasCompleteNormalLogin() {
        return normalLoginButton != null && usernameField != null && passwordField != null;
    }
    
    // Check if we have SSO login options
    public boolean hasGoogleLogin() {
        return googleLoginButton != null;
    }
    
    public boolean hasFacebookLogin() {
        return facebookLoginButton != null;
    }
    
    // Clear cache (useful for new test rounds)
    public void clearCache() {
        normalLoginButton = null;
        googleLoginButton = null;
        facebookLoginButton = null;
        usernameField = null;
        passwordField = null;
        lastClickX = -1;
        lastClickY = -1;
        // Keep snapshots and discovered methods across rounds
    }
    
    // Get status summary
    public String getCacheStatus() {
        StringBuilder sb = new StringBuilder("[Cache Status] ");
        sb.append("Normal: ").append(normalLoginButton != null ? "✓" : "✗").append(" ");
        sb.append("Google: ").append(googleLoginButton != null ? "✓" : "✗").append(" ");
        sb.append("Facebook: ").append(facebookLoginButton != null ? "✓" : "✗").append(" ");
        sb.append("Username: ").append(usernameField != null ? "✓" : "✗").append(" ");
        sb.append("Password: ").append(passwordField != null ? "✓" : "✗");
        return sb.toString();
    }
    
    // Inner class for UI element data
    public static class UIElement {
        public final String text;
        public final String resourceId;
        public final String className;
        public final String bounds;
        public final int centerX;
        public final int centerY;
        
        public UIElement(String text, String resourceId, String className, String bounds, int centerX, int centerY) {
            this.text = text;
            this.resourceId = resourceId;
            this.className = className;
            this.bounds = bounds;
            this.centerX = centerX;
            this.centerY = centerY;
        }
        
        @Override
        public String toString() {
            return String.format("UIElement[text='%s', id='%s', center=(%d,%d)]", 
                text, resourceId, centerX, centerY);
        }
    }
}
