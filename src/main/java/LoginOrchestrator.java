import java.util.*;
import java.util.concurrent.TimeUnit;
import java.io.*;

/**
 * Orchestrates login attempts using cached UI elements and credential pools
 */
public class LoginOrchestrator {
    private UIManager uiManager;
    private ConfigLoader configLoader;
    private UIElementCache cache;
    private CredentialManager credentialManager;
    private Map<String, String> methodSnapshots = new HashMap<>();
    
    public LoginOrchestrator(UIManager uiManager, ConfigLoader configLoader) {
        this.uiManager = uiManager;
        this.configLoader = configLoader;
        this.cache = UIElementCache.getInstance();
        this.credentialManager = CredentialManager.getInstance();
    }
    
    /**
     * Initialize credential pools for the app
     */
    public void initializeForApp(String appPackage) {
        credentialManager.loadCredentialsForApp(appPackage);
    }
    
    /**
     * Execute smart login exploration
     */
    public void executeLoginExploration() {
        try {
            // Check cache for available login methods
            if (cache.hasCompleteNormalLogin()) {
                System.out.println("[Orchestrator] Normal login elements cached, attempting login");
                attemptNormalLogin();
            } else if (cache.hasGoogleLogin()) {
                System.out.println("[Orchestrator] Google login cached, attempting Google login");
                attemptGoogleLogin();
            } else if (cache.hasFacebookLogin()) {
                System.out.println("[Orchestrator] Facebook login cached, attempting Facebook login");
                attemptFacebookLogin();
            } else {
                System.out.println("[Orchestrator] No cached login elements, running Monkey exploration");
                runMonkeyExploration();
            }
        } catch (Exception e) {
            System.err.println("[Orchestrator] Login exploration failed: " + e.getMessage());
        }
    }
    
    /**
     * Attempt normal login with cached elements
     */
    private void attemptNormalLogin() throws Exception {
        UIElementCache.UIElement usernameField = cache.getUsernameField();
        UIElementCache.UIElement passwordField = cache.getPasswordField();
        UIElementCache.UIElement loginButton = cache.getNormalLoginButton();
        
        if (usernameField == null || passwordField == null || loginButton == null) {
            System.out.println("[Orchestrator] Missing normal login elements, skipping");
            return;
        }
        
        // Create snapshot if first discovery
        if (!cache.hasSnapshot("normal")) {
            createSnapshot("normal");
        }
        
        // Get credentials from pool
        CredentialManager.Credential cred = credentialManager.getNextNormalCredential();
        System.out.println("[Orchestrator] Using credentials: " + cred);
        
        // Click username field and input
        clickElement(usernameField);
        Thread.sleep(500);
        inputText(cred.username);
        
        // Click password field and input
        clickElement(passwordField);
        Thread.sleep(500);
        inputText(cred.password);
        
        // Click login button
        clickElement(loginButton);
        cache.setLastClickCoordinates(loginButton.centerX, loginButton.centerY);
        System.out.println("[Orchestrator] Login button clicked at (" + loginButton.centerX + "," + loginButton.centerY + ")");
        
        // Wait 10 seconds for login to complete
        System.out.println("[Orchestrator] Waiting 10 seconds for login completion...");
        TimeUnit.SECONDS.sleep(10);
        
        // Restore snapshot for next attempt
        if (cache.hasSnapshot("normal")) {
            restoreSnapshot("normal");
        }
    }
    
    /**
     * Attempt Google login
     */
    private void attemptGoogleLogin() throws Exception {
        UIElementCache.UIElement googleButton = cache.getGoogleLoginButton();
        if (googleButton == null) {
            System.out.println("[Orchestrator] No Google login button cached");
            return;
        }
        
        // Create snapshot if first discovery
        if (!cache.hasSnapshot("google")) {
            createSnapshot("google");
        }
        
        // Get Google credentials
        CredentialManager.Credential cred = credentialManager.getNextGoogleCredential();
        System.out.println("[Orchestrator] Using Google credentials: " + cred);
        
        // Click Google login button
        clickElement(googleButton);
        cache.setLastClickCoordinates(googleButton.centerX, googleButton.centerY);
        
        // Wait for Google login flow (may need additional handling)
        TimeUnit.SECONDS.sleep(3);
        
        // Handle Google OAuth flow if needed
        // This would require additional UI detection for Google's login page
        
        // Wait 10 seconds for completion
        TimeUnit.SECONDS.sleep(10);
        
        // Restore snapshot
        if (cache.hasSnapshot("google")) {
            restoreSnapshot("google");
        }
    }
    
    /**
     * Attempt Facebook login
     */
    private void attemptFacebookLogin() throws Exception {
        UIElementCache.UIElement fbButton = cache.getFacebookLoginButton();
        if (fbButton == null) {
            System.out.println("[Orchestrator] No Facebook login button cached");
            return;
        }
        
        // Create snapshot if first discovery
        if (!cache.hasSnapshot("facebook")) {
            createSnapshot("facebook");
        }
        
        // Get Facebook credentials
        CredentialManager.Credential cred = credentialManager.getNextFacebookCredential();
        System.out.println("[Orchestrator] Using Facebook credentials: " + cred);
        
        // Click Facebook login button
        clickElement(fbButton);
        cache.setLastClickCoordinates(fbButton.centerX, fbButton.centerY);
        
        // Wait and handle Facebook OAuth
        TimeUnit.SECONDS.sleep(3);
        
        // Wait 10 seconds for completion
        TimeUnit.SECONDS.sleep(10);
        
        // Restore snapshot
        if (cache.hasSnapshot("facebook")) {
            restoreSnapshot("facebook");
        }
    }
    
    /**
     * Run Monkey exploration to discover login elements
     */
    private void runMonkeyExploration() throws Exception {
        int events = configLoader.getMonkeyEvents();
        int throttle = configLoader.getMonkeyThrottle();
        String appPackage = configLoader.getAppPackage();
        
        for (int i = 1; i <= events; i++) {
            // Run single Monkey event
            String cmd = String.format(
                "adb shell monkey -p %s -v --throttle %d --pct-touch 100 1",
                appPackage, throttle
            );
            
            Process p = Runtime.getRuntime().exec(cmd);
            
            // Parse coordinates from Monkey output
            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.contains("Sending Touch")) {
                    parseMonkeyCoordinates(line);
                }
            }
            p.waitFor();
            
            // Let UI settle
            Thread.sleep(throttle);
            
            // Check for login elements
            uiManager.detectLoginPage();
            
            // Check if we discovered complete login
            if (cache.hasCompleteNormalLogin() || cache.hasGoogleLogin() || cache.hasFacebookLogin()) {
                System.out.println("[Orchestrator] Login method discovered at step " + i);
                break;
            }
        }
    }
    
    /**
     * Click UI element using ADB
     */
    private void clickElement(UIElementCache.UIElement element) throws Exception {
        String cmd = String.format("adb shell input tap %d %d", element.centerX, element.centerY);
        Runtime.getRuntime().exec(cmd).waitFor();
        cache.setLastClickCoordinates(element.centerX, element.centerY);
    }
    
    /**
     * Input text using ADB
     */
    private void inputText(String text) throws Exception {
        // Clear existing text
        Runtime.getRuntime().exec("adb shell input keyevent 123").waitFor(); // Move to end
        Runtime.getRuntime().exec("adb shell input keyevent --longpress 67").waitFor(); // Delete all
        Thread.sleep(200);
        
        // Input new text (escape special characters)
        String escaped = text.replace(" ", "%s").replace("'", "\\'");
        String cmd = "adb shell input text '" + escaped + "'";
        Runtime.getRuntime().exec(cmd).waitFor();
    }
    
    /**
     * Create snapshot for login method
     */
    private void createSnapshot(String method) throws Exception {
        String snapshotName = "snap_" + method + "_" + System.currentTimeMillis();
        System.out.println("[Orchestrator] Creating snapshot: " + snapshotName);
        
        Process p = Runtime.getRuntime().exec("adb emu avd snapshot save " + snapshotName);
        p.waitFor();
        
        cache.recordSnapshot(method, snapshotName);
        TimeUnit.SECONDS.sleep(2);
    }
    
    /**
     * Restore snapshot for login method
     */
    private void restoreSnapshot(String method) throws Exception {
        String snapshotName = cache.getSnapshot(method);
        if (snapshotName != null) {
            System.out.println("[Orchestrator] Restoring snapshot: " + snapshotName);
            Process p = Runtime.getRuntime().exec("adb emu avd snapshot load " + snapshotName);
            p.waitFor();
            TimeUnit.SECONDS.sleep(3);
        }
    }
    
    /**
     * Parse Monkey touch coordinates
     */
    private void parseMonkeyCoordinates(String line) {
        try {
            // Example: Sending Touch (ACTION_DOWN): 540,960
            int start = line.indexOf(":") + 1;
            String coords = line.substring(start).trim();
            String[] parts = coords.split(",");
            if (parts.length >= 2) {
                int x = Integer.parseInt(parts[0].trim());
                int y = Integer.parseInt(parts[1].trim());
                cache.setLastClickCoordinates(x, y);
            }
        } catch (Exception e) {
            // Ignore parse errors
        }
    }
}
