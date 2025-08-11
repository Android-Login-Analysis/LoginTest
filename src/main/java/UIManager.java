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

    // ---------------------- WebView Heuristics (UIAutomator-only) ----------------------
    private boolean isWebViewClass(String className) {
        if (className == null) return false;
        String c = className.toLowerCase();
        return c.contains("android.webkit.webview")
                || c.contains("com.tencent.smtt.sdk.webview")
                || c.contains("org.chromium.android_webview")
                || c.contains("com.uc.webview.export.webview")
                || c.endsWith("webview");
    }

    private int[] parseBoundsRect(String bounds) {
        if (bounds == null || bounds.isEmpty()) return null;
        Matcher matcher = Pattern.compile("\\[(\\d+),(\\d+)\\]\\[(\\d+),(\\d+)\\]").matcher(bounds);
        if (matcher.find()) {
            return new int[]{
                    Integer.parseInt(matcher.group(1)),
                    Integer.parseInt(matcher.group(2)),
                    Integer.parseInt(matcher.group(3)),
                    Integer.parseInt(matcher.group(4))
            };
        }
        return null;
    }

    private boolean isWebViewPresent(List<UIElement> elements) {
        for (UIElement e : elements) {
            if (isWebViewClass(e.className)) {
                return true;
            }
        }
        return false;
    }

    private boolean isAnyWebViewLarge(List<UIElement> elements, double thresholdRatio) {
        int maxX = 0, maxY = 0;
        for (UIElement e : elements) {
            int[] r = parseBoundsRect(e.bounds);
            if (r != null) {
                maxX = Math.max(maxX, r[2]);
                maxY = Math.max(maxY, r[3]);
            }
        }
        long screenArea = (long) maxX * (long) maxY;
        if (screenArea <= 0) return false;
        for (UIElement e : elements) {
            if (isWebViewClass(e.className)) {
                int[] r = parseBoundsRect(e.bounds);
                if (r != null) {
                    long area = (long) (r[2] - r[0]) * (long) (r[3] - r[1]);
                    double ratio = area / (double) screenArea;
                    if (ratio >= thresholdRatio) return true;
                }
            }
        }
        return false;
    }

    private boolean hasLoginHintsInIdOrClass(List<UIElement> elements) {
        String[] hints = new String[]{"user", "email", "pass", "pwd", "login", "signin"};
        for (UIElement e : elements) {
            String id = e.resourceId == null ? "" : e.resourceId.toLowerCase();
            String cls = e.className == null ? "" : e.className.toLowerCase();
            for (String h : hints) {
                if (id.contains(h) || cls.contains(h)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isFocusedInWebView() {
        try {
            Process dumpProcess = Runtime.getRuntime().exec("adb shell uiautomator dump /dev/tty");
            BufferedReader dumpReader = new BufferedReader(new InputStreamReader(dumpProcess.getInputStream()));
            String line;
            while ((line = dumpReader.readLine()) != null) {
                if (line.contains("focused=\"true\"")) {
                    UIElement focused = parseUIElement(line);
                    dumpReader.close();
                    dumpProcess.waitFor();
                    return focused != null && isWebViewClass(focused.className);
                }
            }
            dumpReader.close();
            dumpProcess.waitFor();
        } catch (Exception ignore) {
        }
        return false;
    }

    /**
     * Start UI manager (ADB is already connected, no additional startup needed)
     */
    public boolean startUI() {
        try {
            // Robust wait for ADB device to be ready
            final int maxAttempts = 30; // ~60s with 2s interval
            final long sleepMs = 2000;

            for (int attempt = 1; attempt <= maxAttempts; attempt++) {
                Process process = Runtime.getRuntime().exec("adb devices");
                BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                String line;
                String readySerial = null;

                while ((line = reader.readLine()) != null) {
                    if (line.contains("List of devices")) {
                        continue;
                    }
                    String trimmed = line.trim();
                    // Only lines that end with 'device' (not 'offline', 'unauthorized')
                    if (trimmed.endsWith("device")) {
                        // serial is the first token before whitespace
                        String[] parts = trimmed.split("\\s+");
                        if (parts.length > 0) {
                            readySerial = parts[0];
                            break;
                        }
                    }
                }
                reader.close();
                process.waitFor();

                if (readySerial != null) {
                    // Verify boot completed
                    Process bootProc = Runtime.getRuntime().exec(new String[] {"bash", "-lc",
                            "adb -s " + readySerial + " shell getprop sys.boot_completed"});
                    BufferedReader bootReader = new BufferedReader(new InputStreamReader(bootProc.getInputStream()));
                    String bootVal = bootReader.readLine();
                    bootReader.close();
                    bootProc.waitFor();

                    boolean bootCompleted = bootVal != null && bootVal.trim().equals("1");

                    boolean provisionedOk = true; // optional check
                    try {
                        Process provProc = Runtime.getRuntime().exec(new String[] {"bash", "-lc",
                                "adb -s " + readySerial + " shell settings get global device_provisioned"});
                        BufferedReader provReader = new BufferedReader(
                                new InputStreamReader(provProc.getInputStream()));
                        String provVal = provReader.readLine();
                        provReader.close();
                        provProc.waitFor();
                        if (provVal != null) {
                            provisionedOk = provVal.trim().equals("1");
                        }
                    } catch (Exception ignore) {
                        // If settings service not available yet, ignore and rely on boot_completed
                    }

                    if (bootCompleted) {
                        System.out.println("ADB device ready: " + readySerial +
                                (provisionedOk ? " (provisioned)" : " (provisioning)"));
                        System.out.println("UI manager started successfully");
                        return true;
                    }
                }

                // Not ready yet; wait and retry
                try { Thread.sleep(sleepMs); } catch (InterruptedException ie) { /* ignore */ }
            }

            System.err.println("No ADB device ready within timeout");
            return false;
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

            // Reset detection flags (accumulate across small retry window)
            resetDetectionFlags();

            int retries = Math.max(1, configLoader.getDetectionLoginRetries());
            int intervalMs = Math.max(100, configLoader.getDetectionLoginRetryIntervalMs());
            int voteThreshold = Math.max(1, configLoader.getLoginVoteThreshold());

            boolean loginButtonDetected = false;

            for (int i = 0; i < retries; i++) {
                // Get UI element information for the current page
                List<UIElement> elements = getAllUIElements();

                // Iterate through all elements to check if they match the login element pattern
                for (UIElement element : elements) {
                    // Check Google login
                    if (!googleLoginDetected && matchesGoogleLoginPattern(element.text, element.resourceId)) {
                        googleLoginDetected = true;
                        System.out.println("Google login element detected: " + element.text);
                    }

                    // Check Facebook login
                    if (!facebookLoginDetected && matchesFacebookLoginPattern(element.text, element.resourceId)) {
                        facebookLoginDetected = true;
                        System.out.println("Facebook login element detected: " + element.text);
                    }

                    // Check username field
                    if (!usernameFieldDetected && matchesUsernamePattern(element.text, element.resourceId, element.className)) {
                        usernameFieldDetected = true;
                        System.out.println("Username field detected: " + element.text + " (ID: " + element.resourceId + ")");
                    }

                    // Check password field
                    if (!passwordFieldDetected && matchesPasswordPattern(element.text, element.resourceId, element.className)) {
                        passwordFieldDetected = true;
                        System.out.println("Password field detected: " + element.text + " (ID: " + element.resourceId + ")");
                    }

                    // Check login button
                    if (!loginButtonDetected && matchesLoginButtonPattern(element.text, element.resourceId)) {
                        loginButtonDetected = true;
                        System.out.println("Login button detected: " + element.text + " (ID: " + element.resourceId + ")");
                    }
                }

                // Early stop if already meets vote
                int votes = (usernameFieldDetected ? 1 : 0) + (passwordFieldDetected ? 1 : 0)
                        + (loginButtonDetected ? 1 : 0);
                if (votes >= voteThreshold) {
                    break;
                }

                // Wait for possible delayed rendering
                if (i < retries - 1) {
                    try { Thread.sleep(intervalMs); } catch (InterruptedException ie) { /* ignore */ }
                }
            }

            int votes = (usernameFieldDetected ? 1 : 0) + (passwordFieldDetected ? 1 : 0)
                    + (loginButtonDetected ? 1 : 0);

            // WebView-only heuristics (weak signals)
            List<UIElement> snapshotElements = getAllUIElements();
            boolean webViewPresent = isWebViewPresent(snapshotElements);
            boolean webViewLarge = false;
            boolean focusedInWebView = false;
            boolean hasIdClassHints = false;

            if (webViewPresent) {
                webViewLarge = isAnyWebViewLarge(snapshotElements, 0.6);
                focusedInWebView = isFocusedInWebView();
                hasIdClassHints = hasLoginHintsInIdOrClass(snapshotElements);
            }

            boolean isLoginByVote = votes >= voteThreshold;
            boolean isLoginBySso = (googleLoginDetected || facebookLoginDetected) && (usernameFieldDetected || passwordFieldDetected || loginButtonDetected);
            boolean isLoginByWebViewHeur = webViewPresent && (
                    votes >= 1 ||
                    (webViewLarge && hasIdClassHints) ||
                    (focusedInWebView && hasIdClassHints)
            );
            boolean isLoginPage = isLoginByVote || isLoginBySso || isLoginByWebViewHeur;

            System.out.println("Login page detection result: " + isLoginPage);
            System.out.println("  - Votes(username,password,button): " + votes + "/" + voteThreshold);
            System.out.println("  - Google login: " + googleLoginDetected);
            System.out.println("  - Facebook login: " + facebookLoginDetected);
            System.out.println("  - Username field: " + usernameFieldDetected);
            System.out.println("  - Password field: " + passwordFieldDetected);
            System.out.println("  - Login button: " + loginButtonDetected);
            if (webViewPresent) {
                System.out.println("  - WebView present: true");
                System.out.println("  - WebView large(>60%): " + webViewLarge);
                System.out.println("  - Focused in WebView: " + focusedInWebView);
                System.out.println("  - WebView id/class hints: " + hasIdClassHints);
            }

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
        // Class whitelist: treat editable text classes as username candidates if any hint exists
        if (isWhitelistedClass(className) && (resourceId.length() > 0 || text.length() > 0)) {
            return true;
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
        // Class whitelist: common input classes sometimes lack text; use id hint
        if (isWhitelistedClass(className) && resourceId.toLowerCase().contains("pass")) {
            return true;
        }
        return false;
    }

    private boolean isWhitelistedClass(String className) {
        if (className == null) return false;
        String lower = className.toLowerCase();
        for (String allowed : configLoader.getUiClassWhitelist()) {
            if (lower.contains(allowed.trim().toLowerCase())) {
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