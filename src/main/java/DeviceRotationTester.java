import java.io.*;

/**
 * Device rotation tester for detecting data loss during lifecycle changes
 * Tests the same login flow twice: once normal, once with rotation
 */
public class DeviceRotationTester {
    
    private ConfigLoader configLoader;
    private String packageName;
    
    // Test results
    private boolean normalLoginSuccess = false;
    private boolean rotationLoginSuccess = false;
    private String dataLossEvidence = "";
    
    public DeviceRotationTester(ConfigLoader configLoader) {
        this.configLoader = configLoader;
        this.packageName = configLoader.getAppPackage();
    }
    
    /**
     * Run rotation test: compare normal login vs login with rotation
     * @return true if data loss detected
     */
    public boolean runRotationTest() {
        System.out.println("\n================================================================================");
        System.out.println("                      DEVICE ROTATION TEST");
        System.out.println("================================================================================");
        System.out.println("Testing for data loss during device rotation (Symptom-based detection)");
        System.out.println();
        
        try {
            // Test 1: Normal login (baseline)
            System.out.println("═══ Test 1: Normal Login (Baseline) ═══");
            normalLoginSuccess = performNormalLogin();
            System.out.println("Result: " + (normalLoginSuccess ? "✓ SUCCESS" : "✗ FAILED"));
            
            // Wait and reset
            Thread.sleep(3000);
            resetToLoginPage();
            
            // Test 2: Login with rotation
            System.out.println("\n═══ Test 2: Login with Device Rotation ═══");
            rotationLoginSuccess = performLoginWithRotation();
            System.out.println("Result: " + (rotationLoginSuccess ? "✓ SUCCESS" : "✗ FAILED"));
            
            // Analyze results
            analyzeResults();
            
            return normalLoginSuccess && !rotationLoginSuccess; // Data loss detected
            
        } catch (Exception e) {
            System.err.println("[ROTATION_TEST] Error: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
    
    /**
     * Perform normal login without rotation
     */
    private boolean performNormalLogin() throws Exception {
        System.out.println("[1/4] Ensuring app is on login page...");
        ensureOnLoginPage();
        
        System.out.println("[2/4] Inputting credentials...");
        boolean inputSuccess = inputCredentials("test@example.com", "password123");
        if (!inputSuccess) {
            System.out.println("  ✗ Failed to input credentials");
            return false;
        }
        
        System.out.println("[3/4] Clicking login button...");
        clickLoginButton();
        
        System.out.println("[4/4] Checking login result...");
        Thread.sleep(5000); // Wait for login process
        
        boolean success = checkIfLoggedIn();
        System.out.println("  " + (success ? "✓ Logged in successfully" : "✗ Login failed"));
        
        return success;
    }
    
    /**
     * Perform login with device rotation after credential input
     */
    private boolean performLoginWithRotation() throws Exception {
        System.out.println("[1/6] Ensuring app is on login page...");
        ensureOnLoginPage();
        
        System.out.println("[2/6] Inputting credentials...");
        boolean inputSuccess = inputCredentials("test@example.com", "password123");
        if (!inputSuccess) {
            System.out.println("  ✗ Failed to input credentials");
            return false;
        }
        
        System.out.println("[3/6] Rotating device to landscape...");
        rotateToLandscape();
        Thread.sleep(2000); // Wait for Activity recreation
        
        System.out.println("[4/6] Checking if credentials are retained...");
        boolean credentialsRetained = checkCredentialsRetained();
        if (!credentialsRetained) {
            dataLossEvidence = "Credentials lost after rotation";
            System.out.println("  ✗ Credentials lost after rotation!");
        } else {
            System.out.println("  ✓ Credentials retained");
        }
        
        System.out.println("[5/6] Rotating back to portrait...");
        rotateToPortrait();
        Thread.sleep(1000);
        
        System.out.println("[6/6] Attempting to login...");
        clickLoginButton();
        Thread.sleep(5000);
        
        boolean success = checkIfLoggedIn();
        System.out.println("  " + (success ? "✓ Logged in successfully" : "✗ Login failed"));
        
        return success;
    }
    
    /**
     * Rotate device to landscape orientation
     */
    private void rotateToLandscape() throws IOException, InterruptedException {
        // Disable auto-rotation
        executeAdbCommand("adb shell content insert --uri content://settings/system " +
            "--bind name:s:accelerometer_rotation --bind value:i:0");
        
        // Set to landscape (rotation=1)
        executeAdbCommand("adb shell content insert --uri content://settings/system " +
            "--bind name:s:user_rotation --bind value:i:1");
        
        System.out.println("  ✓ Device rotated to landscape");
    }
    
    /**
     * Rotate device back to portrait orientation
     */
    private void rotateToPortrait() throws IOException, InterruptedException {
        // Set to portrait (rotation=0)
        executeAdbCommand("adb shell content insert --uri content://settings/system " +
            "--bind name:s:user_rotation --bind value:i:0");
        
        System.out.println("  ✓ Device rotated to portrait");
    }
    
    /**
     * Check if credentials are still in the input fields after rotation
     */
    private boolean checkCredentialsRetained() throws IOException, InterruptedException {
        // Dump UI hierarchy
        executeAdbCommand("adb shell uiautomator dump /sdcard/window_dump.xml");
        executeAdbCommand("adb pull /sdcard/window_dump.xml /tmp/rotation_ui_dump.xml");
        
        // Read the XML file
        File dumpFile = new File("/tmp/rotation_ui_dump.xml");
        if (!dumpFile.exists()) {
            return false;
        }
        
        try (BufferedReader reader = new BufferedReader(new FileReader(dumpFile))) {
            String content = reader.lines().reduce("", String::concat);
            
            // Check if password field is empty (text="")
            // If password field has text, credentials are retained
            // This is a simplified check - should be improved
            boolean hasPasswordText = content.contains("password") && 
                                     !content.contains("text=\"\"") ||
                                     content.contains("text=\"password");
            
            return hasPasswordText;
        }
    }
    
    /**
     * Input credentials into login form
     */
    private boolean inputCredentials(String username, String password) throws IOException, InterruptedException {
        // Find and input username
        executeAdbCommand("adb shell input text " + username.replace("@", "\\@"));
        Thread.sleep(500);
        
        // Tab to password field
        executeAdbCommand("adb shell input keyevent 61"); // TAB key
        Thread.sleep(500);
        
        // Input password
        executeAdbCommand("adb shell input text " + password);
        
        return true;
    }
    
    /**
     * Click the login button
     */
    private void clickLoginButton() throws IOException, InterruptedException {
        // Use TAB to navigate to login button, then ENTER
        executeAdbCommand("adb shell input keyevent 61"); // TAB
        Thread.sleep(300);
        executeAdbCommand("adb shell input keyevent 66"); // ENTER
    }
    
    /**
     * Check if app is logged in by checking current activity
     */
    private boolean checkIfLoggedIn() throws IOException, InterruptedException {
        String output = executeAdbCommand("adb shell dumpsys window windows | grep -E 'mCurrentFocus'");
        
        // If not on login activity, assume logged in
        boolean notOnLogin = !output.toLowerCase().contains("login");
        
        return notOnLogin;
    }
    
    /**
     * Ensure app is on the login page
     */
    private void ensureOnLoginPage() throws IOException, InterruptedException {
        // Force stop and restart
        executeAdbCommand("adb shell am force-stop " + packageName);
        Thread.sleep(1000);
        executeAdbCommand("adb shell monkey -p " + packageName + " -c android.intent.category.LAUNCHER 1");
        Thread.sleep(3000);
    }
    
    /**
     * Reset to login page for next test
     */
    private void resetToLoginPage() throws IOException, InterruptedException {
        // Clear app data to go back to login
        executeAdbCommand("adb shell pm clear " + packageName);
        Thread.sleep(2000);
    }
    
    /**
     * Analyze test results and report findings
     */
    private void analyzeResults() {
        System.out.println("\n================================================================================");
        System.out.println("                         TEST RESULTS ANALYSIS");
        System.out.println("================================================================================");
        System.out.println();
        System.out.println("Normal Login:    " + (normalLoginSuccess ? "✓ SUCCESS" : "✗ FAILED"));
        System.out.println("Rotation Login:  " + (rotationLoginSuccess ? "✓ SUCCESS" : "✗ FAILED"));
        System.out.println();
        
        if (normalLoginSuccess && !rotationLoginSuccess) {
            System.out.println("⚠️  DATA LOSS DETECTED");
            System.out.println("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
            System.out.println();
            System.out.println("  Symptom: Data Loss on Device Rotation");
            System.out.println("  Category: Interference with Other State Machines (Lifecycle)");
            System.out.println("  Severity: HIGH");
            System.out.println();
            System.out.println("  Evidence:");
            System.out.println("    - Login succeeds without rotation");
            System.out.println("    - Login fails after device rotation");
            System.out.println("    - " + dataLossEvidence);
            System.out.println();
            System.out.println("  Root Cause:");
            System.out.println("    App does not save user input in onSaveInstanceState()");
            System.out.println("    When device rotates, Activity is destroyed and recreated");
            System.out.println("    Input data is lost during this process");
            System.out.println();
            System.out.println("  Recommendation:");
            System.out.println("    Override onSaveInstanceState() in login Activity:");
            System.out.println();
            System.out.println("    @Override");
            System.out.println("    protected void onSaveInstanceState(Bundle outState) {");
            System.out.println("        super.onSaveInstanceState(outState);");
            System.out.println("        outState.putString(\"username\", usernameField.getText().toString());");
            System.out.println("        outState.putString(\"password\", passwordField.getText().toString());");
            System.out.println("    }");
            System.out.println();
            System.out.println("  Similar Issues:");
            System.out.println("    - Thunderbird #4936: Account info lost on rotation");
            System.out.println("    - Wikimedia Commons #3973: Credentials lost on rotation");
            System.out.println();
            System.out.println("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
        } else if (!normalLoginSuccess && !rotationLoginSuccess) {
            System.out.println("⚠️  Both tests failed - may indicate other issues");
        } else if (normalLoginSuccess && rotationLoginSuccess) {
            System.out.println("✓ No data loss detected - app handles rotation correctly");
        }
        
        System.out.println();
        System.out.println("================================================================================");
    }
    
    /**
     * Execute ADB command and return output
     */
    private String executeAdbCommand(String command) throws IOException, InterruptedException {
        Process process = Runtime.getRuntime().exec(command);
        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        StringBuilder output = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            output.append(line).append("\n");
        }
        process.waitFor();
        return output.toString();
    }
    
    /**
     * Get evidence of data loss
     */
    public String getDataLossEvidence() {
        return dataLossEvidence;
    }
    
    /**
     * Check if data loss was detected
     */
    public boolean isDataLossDetected() {
        return normalLoginSuccess && !rotationLoginSuccess;
    }
}
