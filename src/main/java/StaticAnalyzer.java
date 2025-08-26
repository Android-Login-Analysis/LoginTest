import java.io.*;
import java.util.*;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import org.json.JSONObject;
import org.json.JSONArray;

// SootUp imports
import sootup.core.model.SootClass;
import sootup.core.model.SootMethod;
import sootup.core.views.View;
import sootup.java.core.views.JavaView;
import sootup.apk.frontend.ApkAnalysisInputLocation;
import sootup.core.inputlocation.AnalysisInputLocation;
import sootup.core.transform.BodyInterceptor;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * StaticAnalyzer - Use SootUp to analyze APK and match with regex patterns
 * Workflow:
 * 1. Get APK path from AndroidLoginDetector
 * 2. Use SootUp to analyze APK
 * 3. Use regex_patterns.txt to match API
 * 4. Record state, Activity and API information
 * 5. Write results to analysis file
 * 
 * Follow KISS principle: Single responsibility, simple implementation
 * Follow SOLID principle: Single responsibility, open/closed principle
 */
public class StaticAnalyzer {
    
    private final String apkPath;
    private final String patternsPath;
    private final String outputPath;
    private final List<StatePattern> patterns;
    private final AnalysisResult result;
    
    public StaticAnalyzer(String apkPath, String patternsPath, String outputPath) {
        this.apkPath = apkPath;
        this.patternsPath = patternsPath;
        this.outputPath = outputPath;
        this.patterns = loadPatterns();
        this.result = new AnalysisResult();
    }
    
    public void analyze() {
        try {
            System.out.println("=== Start static analysis ===");
            System.out.println("APK path: " + apkPath);
            System.out.println("Pattern file: " + patternsPath);
            System.out.println("Output file: " + outputPath);
            
            // 1. Use SootUp to analyze APK
            List<MethodInfo> methods = extractMethodsWithSootup();
            
            // 2. Match regex patterns and add heuristic detections (WebView + IR/Jimple via reflection)
            matchPatterns(methods);
            
            // 3. Save results
            saveResults();
            
            System.out.println("=== Static analysis completed ===");
            System.out.println("Results saved to: " + outputPath);
            
        } catch (Exception e) {
            System.err.println("Static analysis failed: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Static analysis failed", e);
        }
    }
    
    /**
     * 加载状态模式
     */
    private List<StatePattern> loadPatterns() {
        List<StatePattern> patterns = new ArrayList<>();
        
        try {
            // Try to load from file system
            File patternsFile = new File(patternsPath);
            System.out.println("Trying to load pattern file: " + patternsPath);
            System.out.println("File exists: " + patternsFile.exists());
            System.out.println("Absolute path: " + patternsFile.getAbsolutePath());
            
            BufferedReader reader;
            if (patternsFile.exists()) {
                reader = new BufferedReader(new FileReader(patternsFile));
            } else {
                // If file doesn't exist, try to load from classpath
                InputStream inputStream = getClass().getClassLoader().getResourceAsStream(patternsPath);
                if (inputStream == null) {
                    throw new RuntimeException("Cannot find pattern file: " + patternsPath);
                }
                reader = new BufferedReader(new InputStreamReader(inputStream));
            }
            
            String line;
            
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                
                // Skip comments and empty lines
                if (line.isEmpty() || line.startsWith("#") || line.startsWith("=")) {
                    continue;
                }
                
                // Parse format: STATE_NAME:::REGEX_PATTERN
                if (line.contains(":::")) {
                    String[] parts = line.split(":::", 2);
                    if (parts.length == 2) {
                        String stateName = parts[0].trim();
                        String regexPattern = parts[1].trim();
                        
                        // Handle complex patterns with #
                        if (regexPattern.contains("#")) {
                            String[] patternParts = regexPattern.split("#", 2);
                            patterns.add(new StatePattern(stateName, patternParts[0], patternParts[1]));
                        } else {
                            patterns.add(new StatePattern(stateName, regexPattern, null));
                        }
                    }
                }
            }
            
            reader.close();
            System.out.println("Loaded " + patterns.size() + " state patterns");
            
        } catch (IOException e) {
            throw new RuntimeException("Failed to load pattern file: " + e.getMessage(), e);
        }
        
        return patterns;
    }
    
    /**
     * 使用SootUp提取方法信息
     */
    private List<MethodInfo> extractMethodsWithSootup() {
        List<MethodInfo> methods = new ArrayList<>();
        
        try {
            System.out.println("Using SootUp to analyze APK: " + apkPath);
            
            // Check if APK file exists
            File apkFile = new File(apkPath);
            if (!apkFile.exists()) {
                throw new RuntimeException("APK file does not exist: " + apkPath);
            }
            
            // Create input location
            Path pathToApk = Paths.get(apkPath);
            AnalysisInputLocation inputLocation = new ApkAnalysisInputLocation(pathToApk, "", new ArrayList<>());
            
            // Create Java view
            View view = new JavaView(inputLocation);
            
            // Get all classes
            Collection<SootClass> classes = view.getClasses().collect(java.util.stream.Collectors.toList());
            System.out.println("Found " + classes.size() + " classes");
            
            // Iterate through all classes and methods
            for (SootClass sootClass : classes) {
                String className = sootClass.getName();
                
                // Get all methods in the class
                Collection<SootMethod> classMethods = sootClass.getMethods().stream()
                    .collect(java.util.stream.Collectors.toList());
                
                for (SootMethod method : classMethods) {
                    String methodSignature = method.getSignature().toString();
                    String fullSignature = className + "." + method.getName();
                    
                    // Create method info object
                    MethodInfo methodInfo = new MethodInfo(
                        fullSignature,
                        extractPackageName(className),
                        extractClassName(className),
                        method.getName(),
                        methodSignature,
                        isActivityClass(className),
                        getActivityName(className),
                        /* store original SootMethod for optional reflective IR scanning */
                        method
                    );
                    
                    methods.add(methodInfo);
                }
            }
            
            System.out.println("Extracted " + methods.size() + " methods from APK");
            // Record statistics
            result.setTotalMethods(methods.size());
            
        } catch (Exception e) {
            System.err.println("SootUp analysis failed: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("SootUp analysis failed", e);
        }
        
        return methods;
    }
    
    /**
     * Extract package name from class name
     */
    private String extractPackageName(String className) {
        int lastDotIndex = className.lastIndexOf('.');
        if (lastDotIndex > 0) {
            return className.substring(0, lastDotIndex);
        }
        return "";
    }
    
    /**
     * Extract class name from class name (without package name)
     */
    private String extractClassName(String className) {
        int lastDotIndex = className.lastIndexOf('.');
        if (lastDotIndex > 0) {
            return className.substring(lastDotIndex + 1);
        }
        return className;
    }
    
    /**
     * Check if it is an Activity class
     */
    private boolean isActivityClass(String className) {
        return className.contains("Activity") || className.endsWith("Activity");
    }
    
    /**
     * Get Activity name
     */
    private String getActivityName(String className) {
        if (isActivityClass(className)) {
            return extractClassName(className);
        }
        return null;
    }
    
    /**
     * Match regex patterns
     */
    private void matchPatterns(List<MethodInfo> methods) {
        System.out.println("Matching regex patterns...");
        
        for (StatePattern pattern : patterns) {
            // Compile with case-insensitive by default to reduce pattern fragility
            Pattern regex = Pattern.compile(pattern.getRegex(), Pattern.CASE_INSENSITIVE);
            
            for (MethodInfo method : methods) {
                // Skip synthetic/lambda/accessor methods to avoid noisy duplicates (e.g., onCreate$lambda$0, access$xxx)
                String mName = method.getMethodName();
                if (mName != null && (mName.contains("$") || mName.startsWith("access$"))) {
                    continue;
                }
                // Build a richer searchable string that includes both class.method and full method signature
                String searchable = method.getFullSignature() + " " + method.getMethodSignature();
                Matcher matcher = regex.matcher(searchable);
                
                // Use find() to allow fuzzy, substring-based patterns
                if (matcher.find()) {
                    // Check additional conditions (if any) against the same searchable string
                    if (pattern.getAdditionalCondition() == null || searchable.contains(pattern.getAdditionalCondition())) {
                        result.addMatch(pattern.getStateName(), method);
                        System.out.println("Matched: " + pattern.getStateName() + " -> " + method.getFullSignature());
                    }
                }
            }
        }

        // KISS extra detections (do not depend on SootUp internals):
        // 1) WebView heuristics based on signatures
        // 2) Lightweight IR/Jimple scan via reflection (best-effort)
        for (MethodInfo method : methods) {
            String searchable = (method.getFullSignature() + " " + method.getMethodSignature()).toLowerCase(Locale.ROOT);

            boolean hasWebViewHint = containsAny(searchable,
                "webview", "android.webkit.webview", "org.chromium.android_webview",
                "evaluatejavascript", "loadurl");

            boolean hasLoginStrings = containsAny(searchable,
                "/login", "/signin", "/auth", "authorization", "token", "idtoken", "401", "credentialmanager");

            if (hasWebViewHint) {
                result.addMatch("WebViewUsage", method);
            }
            if (hasWebViewHint && hasLoginStrings) {
                result.addMatch("WebViewLoginCandidate", method);
            }

            // Try reflective body scan (no compile-time dependency on Body/Unit APIs)
            try {
                String bodyText = tryGetMethodBodyText(method.getMethodRef());
                if (bodyText != null && !bodyText.isEmpty()) {
                    String bt = bodyText.toLowerCase(Locale.ROOT);
                    boolean bodyHasAuth = containsAny(bt,
                        "firebaseauth.signin", "signinwithemailandpassword", "signwithcredential",
                        "retrofit", "okhttp", "/login", "/signin", "/auth", "authorization", "token", "401");
                    boolean bodyHasWebView = containsAny(bt,
                        "android.webkit.webview", "evaluatejavascript", "loadurl");
                    if (bodyHasAuth) {
                        result.addMatch("IR_LoginEvidence", method);
                    }
                    if (bodyHasWebView) {
                        result.addMatch("IR_WebViewEvidence", method);
                    }
                    if (bodyHasWebView && bodyHasAuth) {
                        result.addMatch("WebViewLoginCandidate", method);
                    }
                }
            } catch (Throwable t) {
                // Best effort only; never fail matching due to IR scan issues.
            }
        }
    }
 
    private void saveResults() throws IOException {
        JSONObject jsonResult = new JSONObject();
        
        // Add basic information
        jsonResult.put("apkPath", apkPath);
        jsonResult.put("patternsPath", patternsPath);
        jsonResult.put("analysisTime", System.currentTimeMillis());
        jsonResult.put("totalPatterns", patterns.size());
        
        // Add matching results
        JSONObject matches = new JSONObject();
        for (Map.Entry<String, List<MethodInfo>> entry : result.getMatches().entrySet()) {
            JSONArray methodArray = new JSONArray();
            for (MethodInfo method : entry.getValue()) {
                JSONObject methodJson = new JSONObject();
                methodJson.put("fullSignature", method.getFullSignature());
                methodJson.put("packageName", method.getPackageName());
                methodJson.put("className", method.getClassName());
                methodJson.put("methodName", method.getMethodName());
                methodJson.put("methodSignature", method.getMethodSignature());
                methodJson.put("isActivity", method.isActivity());
                methodJson.put("activityName", method.getActivityName());
                methodJson.put("stateName", entry.getKey());
                methodArray.put(methodJson);
            }
            matches.put(entry.getKey(), methodArray);
        }
        jsonResult.put("matches", matches);
        
        // Add statistics
        JSONObject statistics = new JSONObject();
        statistics.put("totalMethods", result.getTotalMethods());
        statistics.put("matchedMethods", result.getMatchedMethods());
        statistics.put("matchedStates", result.getMatches().size());
        jsonResult.put("statistics", statistics);
        
        // Save to file
        try (FileWriter writer = new FileWriter(outputPath)) {
            writer.write(jsonResult.toString(2));
        }
        
        System.out.println("Static analysis results saved to: " + outputPath);
    }
    
    /**
     * State pattern class
     */
    private static class StatePattern {
        private final String stateName;
        private final String regex;
        private final String additionalCondition;
        
        public StatePattern(String stateName, String regex, String additionalCondition) {
            this.stateName = stateName;
            this.regex = regex;
            this.additionalCondition = additionalCondition;
        }
        
        public String getStateName() { return stateName; }
        public String getRegex() { return regex; }
        public String getAdditionalCondition() { return additionalCondition; }
    }
    
    /**
     * Method info class
     */
    private static class MethodInfo {
        private final String fullSignature;
        private final String packageName;
        private final String className;
        private final String methodName;
        private final String methodSignature;
        private final boolean isActivity;
        private final String activityName;
        // transient reference to original SootMethod for optional IR scan (not serialized)
        private final transient Object methodRef;
        
        public MethodInfo(String fullSignature, String packageName, String className, 
                        String methodName, String methodSignature, boolean isActivity, String activityName,
                        Object methodRef) {
            this.fullSignature = fullSignature;
            this.packageName = packageName;
            this.className = className;
            this.methodName = methodName;
            this.methodSignature = methodSignature;
            this.isActivity = isActivity;
            this.activityName = activityName;
            this.methodRef = methodRef;
        }
        
        public String getFullSignature() { return fullSignature; }
        public String getPackageName() { return packageName; }
        public String getClassName() { return className; }
        public String getMethodName() { return methodName; }
        public String getMethodSignature() { return methodSignature; }
        public boolean isActivity() { return isActivity; }
        public String getActivityName() { return activityName; }
        public Object getMethodRef() { return methodRef; }
    }
    
    /**
     * Analysis result class
     */
    private static class AnalysisResult {
        private final Map<String, List<MethodInfo>> matches = new HashMap<>();
        private int totalMethods = 0;
        private int matchedMethods = 0;
        
        public void addMatch(String stateName, MethodInfo method) {
            matches.computeIfAbsent(stateName, k -> new ArrayList<>()).add(method);
            matchedMethods++;
        }
        
        public void setTotalMethods(int total) {
            this.totalMethods = total;
        }
        
        public Map<String, List<MethodInfo>> getMatches() {
            return matches;
        }
        
        public int getTotalMethods() { return totalMethods; }
        public int getMatchedMethods() { return matchedMethods; }
    }
    
    // ---------------------
    // KISS helpers
    // ---------------------
    private static boolean containsAny(String haystack, String... needles) {
        if (haystack == null) return false;
        for (String n : needles) {
            if (n == null) continue;
            if (haystack.contains(n)) return true;
        }
        return false;
    }

    // Best-effort: obtain a textual form of a method's body via reflection.
    // If SootUp exposes getBody(), we call it and use toString(); otherwise return null.
    private static String tryGetMethodBodyText(Object sootMethod) {
        if (sootMethod == null) return null;
        try {
            java.lang.reflect.Method getBody = sootMethod.getClass().getMethod("getBody");
            Object body = getBody.invoke(sootMethod);
            if (body == null) return null;
            return String.valueOf(body);
        } catch (Throwable t) {
            return null; // No body available or API differs; silently skip.
        }
    }
    
    /**
     * Main method - for testing
     */
    public static void main(String[] args) {
        if (args.length < 3) {
            System.out.println("Usage: java StaticAnalyzer <apkPath> <patternsPath> <outputPath>");
            System.out.println("Example: java StaticAnalyzer apps/org.mian.gitnex_550.apk src/main/resources/regex_patterns.txt analysis_result.json");
            return;
        }
        
        String apkPath = args[0];
        String patternsPath = args[1];
        String outputPath = args[2];
        
        StaticAnalyzer analyzer = new StaticAnalyzer(apkPath, patternsPath, outputPath);
        analyzer.analyze();
    }
}