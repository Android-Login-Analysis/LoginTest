import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 * UI manager - based on ADB for UI element acquisition and interaction
 * Use uiautomator dump and adb shell commands instead of Appium
 */
public class UIManager {
    private ConfigLoader configLoader;
    private String appPackage;

    // Login detection flags
    private boolean googleLoginDetected = false;
    private boolean facebookLoginDetected = false;
    private boolean usernameFieldDetected = false;
    private boolean passwordFieldDetected = false;

    // Timestamp records
    private long loginButtonClickTime = 0;
    private long loginButtonDisappearTime = 0;

    public UIManager(ConfigLoader configLoader) {
        this.configLoader = configLoader;
        this.appPackage = configLoader.getAppPackage();
    }

    /**
     * Start UI manager (ADB is already connected, no additional startup needed)
     */
    public boolean startUI() {
        try {
            // Check ADB connection
            Process process = Runtime.getRuntime().exec("adb devices");
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            boolean deviceFound = false;

            while ((line = reader.readLine()) != null) {
                if (line.contains("device") && !line.contains("List of devices")) {
                    deviceFound = true;
                    System.out.println("ADB device connected: " + line.trim());
                }
            }
            reader.close();
            process.waitFor();

            if (deviceFound) {
                System.out.println("UI manager started successfully");
                return true;
            } else {
                System.err.println("No ADB device found");
                return false;
            }
        } catch (Exception e) {
            System.err.println("UI manager startup failed: " + e.getMessage());
            return false;
        }
    }

    /**
     * Detect login page
     */
    public boolean detectLoginPage() {
        try {
            System.out.println("Using ADB to detect login page...");

            // Reset detection flags
            resetDetectionFlags();

            // Get UI element information for the current page
            List<UIElement> elements = getAllUIElements();

            // Iterate through all elements to check if they match the login element pattern
            for (UIElement element : elements) {
                // Check Google login
                if (matchesGoogleLoginPattern(element.text, element.resourceId)) {
                    googleLoginDetected = true;
                    System.out.println("Google login element detected: " + element.text);
                }

                // Check Facebook login
                if (matchesFacebookLoginPattern(element.text, element.resourceId)) {
                    facebookLoginDetected = true;
                    System.out.println("Facebook login element detected: " + element.text);
                }

                // Check username field
                if (matchesUsernamePattern(element.text, element.resourceId, element.className)) {
                    usernameFieldDetected = true;
                    System.out
                            .println("Username field detected: " + element.text + " (ID: " + element.resourceId + ")");
                }

                // Check password field
                if (matchesPasswordPattern(element.text, element.resourceId, element.className)) {
                    passwordFieldDetected = true;
                    System.out
                            .println("Password field detected: " + element.text + " (ID: " + element.resourceId + ")");
                }
            }

            // If any login-related elements are detected, consider this a login page
            boolean isLoginPage = googleLoginDetected || facebookLoginDetected ||
                    usernameFieldDetected || passwordFieldDetected;

            System.out.println("Login page detection result: " + isLoginPage);
            System.out.println("  - Google login: " + googleLoginDetected);
            System.out.println("  - Facebook login: " + facebookLoginDetected);
            System.out.println("  - Username field: " + usernameFieldDetected);
            System.out.println("  - Password field: " + passwordFieldDetected);

            return isLoginPage;

        } catch (Exception e) {
            System.err.println("Login page detection failed: " + e.getMessage());
            return false;
        }
    }

    /**
     * Monitor UI element changes in real-time (called during Monkey execution)
     */
    public void monitorUIElements() {
        try {
            // Get current visible UI elements
            List<UIElement> visibleElements = getVisibleUIElements();

            for (UIElement element : visibleElements) {
                // Check if it's a new login element detected
                if (!googleLoginDetected && matchesGoogleLoginPattern(element.text, element.resourceId)) {
                    googleLoginDetected = true;
                    System.out.println("Real-time detection of Google login element: " + element.text);
                }

                if (!facebookLoginDetected && matchesFacebookLoginPattern(element.text, element.resourceId)) {
                    facebookLoginDetected = true;
                    System.out.println("Real-time detection of Facebook login element: " + element.text);
                }

                if (!usernameFieldDetected
                        && matchesUsernamePattern(element.text, element.resourceId, element.className)) {
                    usernameFieldDetected = true;
                    System.out.println("Real-time detection of username field: " + element.text);
                }

                if (!passwordFieldDetected
                        && matchesPasswordPattern(element.text, element.resourceId, element.className)) {
                    passwordFieldDetected = true;
                    System.out.println("Real-time detection of password field: " + element.text);
                }
            }

        } catch (Exception e) {
            System.err.println("UI element monitoring failed: " + e.getMessage());
        }
    }

    /**
     * Input credentials
     */
    public boolean inputCredentials(String username, String password) {
        try {
            System.out.println("Using ADB to input credentials...");

            // Find username input field
            UIElement usernameField = findUsernameField();
            if (usernameField != null) {
                // Click username input field
                clickElement(usernameField);
                Thread.sleep(500);

                // Clear input field
                Runtime.getRuntime().exec("adb shell input keyevent 123"); // Move to end
                Runtime.getRuntime().exec("adb shell input keyevent 67"); // Delete key
                Thread.sleep(200);

                // Input username
                Runtime.getRuntime().exec("adb shell input text '" + username + "'");
                System.out.println("Input username: " + username);
                Thread.sleep(500);
            }

            // Find password input field
            UIElement passwordField = findPasswordField();
            if (passwordField != null) {
                // Click password input field
                clickElement(passwordField);
                Thread.sleep(500);

                // Clear input field
                Runtime.getRuntime().exec("adb shell input keyevent 123"); // Move to end
                Runtime.getRuntime().exec("adb shell input keyevent 67"); // Delete key
                Thread.sleep(200);

                // Input password
                Runtime.getRuntime().exec("adb shell input text '" + password + "'");
                System.out.println("Input password: " + password);
                Thread.sleep(500);
            }

            // Find and click login button
            UIElement loginButton = findLoginButton();
            if (loginButton != null) {
                loginButtonClickTime = System.currentTimeMillis();
                clickElement(loginButton);
                System.out.println("Click login button, timestamp: " + loginButtonClickTime);

                // Wait for login button to disappear
                waitForLoginButtonDisappear();
                return true;
            }

            return false;

        } catch (Exception e) {
            System.err.println("Input credentials failed: " + e.getMessage());
            return false;
        }
    }

    /**
     * Wait for login button to disappear
     */
    private void waitForLoginButtonDisappear() {
        try {
            UIElement loginButton = findLoginButton();
            if (loginButton != null) {
                // Wait for login button to disappear (up to 10 seconds)
                long startTime = System.currentTimeMillis();
                while (System.currentTimeMillis() - startTime < 10000) {
                    try {
                        UIElement currentButton = findLoginButton();
                        if (currentButton == null) {
                            loginButtonDisappearTime = System.currentTimeMillis();
                            System.out.println("Login button disappeared, timestamp: " + loginButtonDisappearTime);
                            System.out.println(
                                    "Login duration: " + (loginButtonDisappearTime - loginButtonClickTime) + "ms");
                            break;
                        }
                        Thread.sleep(100);
                    } catch (Exception e) {
                        // Element may have been removed
                        loginButtonDisappearTime = System.currentTimeMillis();
                        System.out.println("Login button disappeared, timestamp: " + loginButtonDisappearTime);
                        System.out
                                .println("Login duration: " + (loginButtonDisappearTime - loginButtonClickTime) + "ms");
                        break;
                    }
                }
            }
        } catch (Exception e) {
            System.err.println("Waiting for login button to disappear failed: " + e.getMessage());
        }
    }

    /**
     * Get login duration
     */
    public long getLoginDuration() {
        if (loginButtonClickTime > 0 && loginButtonDisappearTime > 0) {
            return loginButtonDisappearTime - loginButtonClickTime;
        }
        return -1;
    }

    /**
     * Get all UI elements
     */
    private List<UIElement> getAllUIElements() throws Exception {
        List<UIElement> elements = new ArrayList<>();

        // Use uiautomator dump to get UI hierarchy
        Process dumpProcess = Runtime.getRuntime().exec("adb shell uiautomator dump");
        dumpProcess.waitFor();

        // Read dump file
        Process catProcess = Runtime.getRuntime().exec("adb shell cat /sdcard/window_dump.xml");
        BufferedReader reader = new BufferedReader(new InputStreamReader(catProcess.getInputStream()));

        String line;
        while ((line = reader.readLine()) != null) {
            UIElement element = parseUIElement(line);
            if (element != null) {
                elements.add(element);
            }
        }
        reader.close();
        catProcess.waitFor();

        return elements;
    }

    /**
     * Get visible UI elements
     */
    private List<UIElement> getVisibleUIElements() throws Exception {
        List<UIElement> allElements = getAllUIElements();
        List<UIElement> visibleElements = new ArrayList<>();

        for (UIElement element : allElements) {
            if (element.visible) {
                visibleElements.add(element);
            }
        }

        return visibleElements;
    }

    /**
     * Parse UI element
     */
    private UIElement parseUIElement(String xmlLine) {
        // Match UI element XML tag
        Pattern elementPattern = Pattern.compile(
                "<([^>]+)\\s+([^>]*?)\\s*/>|<([^>]+)\\s+([^>]*?)\\s*>([^<]*)</\\3>");
        Matcher matcher = elementPattern.matcher(xmlLine);

        if (matcher.find()) {
            String tagName = matcher.group(1) != null ? matcher.group(1) : matcher.group(3);
            String attributes = matcher.group(2) != null ? matcher.group(2) : matcher.group(4);
            String text = matcher.group(5);

            if (text == null)
                text = "";

            // Parse attributes
            String resourceId = extractAttribute(attributes, "resource-id");
            String className = extractAttribute(attributes, "class");
            String bounds = extractAttribute(attributes, "bounds");
            boolean visible = "true".equals(extractAttribute(attributes, "visible"));

            return new UIElement(tagName, text, resourceId, className, bounds, visible);
        }

        return null;
    }

    /**
     * Extract XML attribute value
     */
    private String extractAttribute(String attributes, String attrName) {
        Pattern pattern = Pattern.compile(attrName + "=\"([^\"]*)\"");
        Matcher matcher = pattern.matcher(attributes);
        return matcher.find() ? matcher.group(1) : "";
    }

    /**
     * Click element
     */
    private void clickElement(UIElement element) throws Exception {
        if (element.bounds != null && !element.bounds.isEmpty()) {
            // Parse bounds "[x1,y1][x2,y2]"
            Pattern boundsPattern = Pattern.compile("\\[(\\d+),(\\d+)\\]\\[(\\d+),(\\d+)\\]");
            Matcher matcher = boundsPattern.matcher(element.bounds);

            if (matcher.find()) {
                int x1 = Integer.parseInt(matcher.group(1));
                int y1 = Integer.parseInt(matcher.group(2));
                int x2 = Integer.parseInt(matcher.group(3));
                int y2 = Integer.parseInt(matcher.group(4));

                // Calculate center point
                int centerX = (x1 + x2) / 2;
                int centerY = (y1 + y2) / 2;

                // Click center point
                Runtime.getRuntime().exec("adb shell input tap " + centerX + " " + centerY);
                System.out.println("Click element: " + element.text + " position: (" + centerX + ", " + centerY + ")");
            }
        }
    }

    /**
     * Find username field
     */
    private UIElement findUsernameField() throws Exception {
        List<UIElement> elements = getAllUIElements();
        for (UIElement element : elements) {
            if (matchesUsernamePattern(element.text, element.resourceId, element.className)) {
                return element;
            }
        }
        return null;
    }

    /**
     * Find password field
     */
    private UIElement findPasswordField() throws Exception {
        List<UIElement> elements = getAllUIElements();
        for (UIElement element : elements) {
            if (matchesPasswordPattern(element.text, element.resourceId, element.className)) {
                return element;
            }
        }
        return null;
    }

    /**
     * Find login button
     */
    private UIElement findLoginButton() throws Exception {
        List<UIElement> elements = getAllUIElements();
        for (UIElement element : elements) {
            if (matchesLoginButtonPattern(element.text, element.resourceId)) {
                return element;
            }
        }
        return null;
    }

    /**
     * Reset detection flags
     */
    private void resetDetectionFlags() {
        googleLoginDetected = false;
        facebookLoginDetected = false;
        usernameFieldDetected = false;
        passwordFieldDetected = false;
    }

    // Pattern matching method
    private boolean matchesGoogleLoginPattern(String text, String resourceId) {
        if (text == null)
            text = "";
        if (resourceId == null)
            resourceId = "";

        String combined = (text + " " + resourceId).toLowerCase();
        String[] patterns = configLoader.getGoogleLoginPatterns().split(",");

        for (String pattern : patterns) {
            if (combined.contains(pattern.trim().toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    private boolean matchesFacebookLoginPattern(String text, String resourceId) {
        if (text == null)
            text = "";
        if (resourceId == null)
            resourceId = "";

        String combined = (text + " " + resourceId).toLowerCase();
        String[] patterns = configLoader.getFacebookLoginPatterns().split(",");

        for (String pattern : patterns) {
            if (combined.contains(pattern.trim().toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    private boolean matchesUsernamePattern(String text, String resourceId, String className) {
        if (text == null)
            text = "";
        if (resourceId == null)
            resourceId = "";
        if (className == null)
            className = "";

        String combined = (text + " " + resourceId + " " + className).toLowerCase();
        String[] patterns = configLoader.getUsernameFieldPatterns().split(",");

        for (String pattern : patterns) {
            if (combined.contains(pattern.trim().toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    private boolean matchesPasswordPattern(String text, String resourceId, String className) {
        if (text == null)
            text = "";
        if (resourceId == null)
            resourceId = "";
        if (className == null)
            className = "";

        String combined = (text + " " + resourceId + " " + className).toLowerCase();
        String[] patterns = configLoader.getPasswordFieldPatterns().split(",");

        for (String pattern : patterns) {
            if (combined.contains(pattern.trim().toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    private boolean matchesLoginButtonPattern(String text, String resourceId) {
        if (text == null)
            text = "";
        if (resourceId == null)
            resourceId = "";

        String combined = (text + " " + resourceId).toLowerCase();
        String[] patterns = configLoader.getLoginButtonPatterns().split(",");

        for (String pattern : patterns) {
            if (combined.contains(pattern.trim().toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    /**
     * Check if the currently focused element is a login field
     */
    public boolean checkFocusedLoginField() {
        try {
            // Get the currently focused element
            Process process = Runtime.getRuntime().exec("adb shell uiautomator dump");
            process.waitFor();
            
            // Get the focused element bounds
            Process focusProcess = Runtime.getRuntime().exec("adb shell dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp'");
            BufferedReader focusReader = new BufferedReader(new InputStreamReader(focusProcess.getInputStream()));
            String focusLine = focusReader.readLine();
            focusReader.close();
            focusProcess.waitFor();
            
            if (focusLine != null && focusLine.contains(appPackage)) {
                // Get the UI dump and find the focused element
                Process dumpProcess = Runtime.getRuntime().exec("adb shell cat /sdcard/window_dump.xml");
                BufferedReader dumpReader = new BufferedReader(new InputStreamReader(dumpProcess.getInputStream()));
                String line;
                boolean foundFocusedElement = false;
                
                while ((line = dumpReader.readLine()) != null) {
                    // Look for elements with focused="true" attribute
                    if (line.contains("focused=\"true\"")) {
                        // Parse the focused element
                        UIElement focusedElement = parseUIElement(line);
                        
                        if (focusedElement != null) {
                            // Check if it's a login field
                            if (matchesUsernamePattern(focusedElement.text, focusedElement.resourceId, focusedElement.className) ||
                                matchesPasswordPattern(focusedElement.text, focusedElement.resourceId, focusedElement.className)) {
                                
                                System.out.println("Monkey focused on login field: " + focusedElement.text + 
                                                 " (ID: " + focusedElement.resourceId + ")");
                                return true;
                            }
                        }
                        foundFocusedElement = true;
                    }
                }
                dumpReader.close();
                dumpProcess.waitFor();
                
                if (!foundFocusedElement) {
                    // If no focused element found, check if any login fields are visible
                    List<UIElement> visibleElements = getVisibleUIElements();
                    for (UIElement element : visibleElements) {
                        if (matchesUsernamePattern(element.text, element.resourceId, element.className) ||
                            matchesPasswordPattern(element.text, element.resourceId, element.className)) {
                            
                            System.out.println("Login field visible but not focused: " + element.text);
                            // Don't return true here, only if it's actually focused
                        }
                    }
                }
            }
            
            return false;
            
        } catch (Exception e) {
            System.err.println("Error checking focused login field: " + e.getMessage());
            return false;
        }
    }

    // Getter methods
    public boolean isGoogleLoginDetected() {
        return googleLoginDetected;
    }

    public boolean isFacebookLoginDetected() {
        return facebookLoginDetected;
    }

    public boolean isUsernameFieldDetected() {
        return usernameFieldDetected;
    }

    public boolean isPasswordFieldDetected() {
        return passwordFieldDetected;
    }

    /**
     * Close UI manager
     */
    public void close() {
        System.out.println("UI manager closed");
    }

    /**
     * UI element inner class
     */
    private static class UIElement {
        String tagName;
        String text;
        String resourceId;
        String className;
        String bounds;
        boolean visible;

        public UIElement(String tagName, String text, String resourceId, String className, String bounds,
                boolean visible) {
            this.tagName = tagName;
            this.text = text;
            this.resourceId = resourceId;
            this.className = className;
            this.bounds = bounds;
            this.visible = visible;
        }

        @Override
        public String toString() {
            return "UIElement{" +
                    "tagName='" + tagName + '\'' +
                    ", text='" + text + '\'' +
                    ", resourceId='" + resourceId + '\'' +
                    ", className='" + className + '\'' +
                    ", bounds='" + bounds + '\'' +
                    ", visible=" + visible +
                    '}';
        }
    }
}