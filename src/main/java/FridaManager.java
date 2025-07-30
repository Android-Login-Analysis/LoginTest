import com.google.gson.Gson; // For converting map to JSON string

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern; // Keep for stateToApiRegexPatterns if used elsewhere
import java.util.Map; // Keep for stateToApiRegexPatterns if used elsewhere
import java.util.HashMap; // Keep for stateToApiRegexPatterns if used elsewhere

public class FridaManager {

    private Process fridaProcess;
    private final String fridaLogFilePath; // Set via constructor or config
    private final String fridaAgentJsPath; // Path to login_agent.js
    private String apiRegexPatternsJsonString; // JSON string of the state-to-regex map
    private ConfigLoader configLoader; // Configuration loader

    // This map is for ApiLogAnalyzer to map API calls to States.
    // The Frida agent itself only needs the regex strings to hook methods.
    private Map<String, Pattern> stateToApiRegexPatterns;

    public FridaManager(String stateAndApiRegexFilePath, String agentJsPath, String logPath, String unused,
            ConfigLoader configLoader) {
        this.fridaAgentJsPath = agentJsPath;
        this.fridaLogFilePath = logPath;
        this.configLoader = configLoader;
        this.stateToApiRegexPatterns = new HashMap<>();
        loadRegexesFromFile(stateAndApiRegexFilePath);
        prepareJsonRegexForAgent();
    }

    private void loadRegexesFromFile(String filePath) {
        System.out.println("FridaManager: Loading regex patterns from: " + filePath);
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            int count = 0;
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (line.startsWith("#") || line.isEmpty()) {
                    continue;
                }
                String[] parts = line.split(":::", 2);
                if (parts.length == 2) {
                    String stateName = parts[0].trim();
                    String regexStr = parts[1].trim();
                    try {
                        stateToApiRegexPatterns.put(stateName, Pattern.compile(regexStr));
                        count++;
                    } catch (Exception e) {
                        System.err.println("FridaManager: Error compiling regex for state " + stateName + ": "
                                + regexStr + " - " + e.getMessage());
                    }
                } else {
                    System.err.println("FridaManager: Skipping malformed regex line: " + line);
                }
            }
            System.out.println("FridaManager: Loaded " + count + " regex patterns for API hooking and state mapping.");
        } catch (IOException e) {
            System.err.println("FridaManager: Error reading regex patterns file: " + filePath);
            e.printStackTrace();
        }
    }

    private void prepareJsonRegexForAgent() {
        if (stateToApiRegexPatterns != null && !stateToApiRegexPatterns.isEmpty()) {
            // Convert Map<String, Pattern> to Map<String, String> for Gson serialization
            Map<String, String> stringPatternMap = new HashMap<>();
            for (Map.Entry<String, Pattern> entry : stateToApiRegexPatterns.entrySet()) {
                stringPatternMap.put(entry.getKey(), entry.getValue().pattern());
            }

            Gson gson = new Gson();
            this.apiRegexPatternsJsonString = gson.toJson(stringPatternMap);
            System.out.println("FridaManager: Prepared JSON regex patterns for agent: " + this.apiRegexPatternsJsonString);
        } else {
            this.apiRegexPatternsJsonString = "{}"; // Send empty JSON object if no patterns
            System.out.println("FridaManager: No regex patterns loaded, prepared empty JSON object.");
        }
    }

    // Public getter for the JSON string, so LoginDetectTest can pass it if needed,
    // or this class can use it directly in startFrida.
    public String getApiRegexPatternsJsonString() {
        return this.apiRegexPatternsJsonString;
    }

    // For ApiLogAnalyzer
    public Map<String, Pattern> getStateToApiRegexPatterns() {
        return this.stateToApiRegexPatterns;
    }

    /**
     * Start Frida monitoring with timeout
     */
    public void startFrida(String appPackageName) {
        try {
            logInfo("Starting Frida monitoring for package: " + appPackageName);
            
            // Kill any existing Frida processes
            stopFrida();
            
            // Start Frida controller with timeout
            ProcessBuilder pb = new ProcessBuilder();
            List<String> command = new ArrayList<>();
            command.add("python3");
            command.add("scripts/frida_controller.py");
            command.add(appPackageName);
            
            pb.command(command);
            pb.redirectErrorStream(true);
            
            logInfo("Executing command: " + String.join(" ", command));
            
            Process process = pb.start();
            
            // Wait for Frida to start with timeout
            long startTime = System.currentTimeMillis();
            long timeout = 60000; // 60 seconds timeout
            
            while (System.currentTimeMillis() - startTime < timeout) {
                try {
                    // Check if process is still running
                    int exitCode = process.exitValue();
                    if (exitCode != 0) {
                        logError("Frida controller exited with code: " + exitCode);
                        return;
                    }
                } catch (IllegalThreadStateException e) {
                    // Process is still running, check if it's ready
                    if (isFridaReady()) {
                        logInfo("Frida monitoring started successfully");
                        this.fridaProcess = process; // Store the process
                        return;
                    }
                }
                
                Thread.sleep(1000); // Check every second
            }
            
            // Timeout reached
            logError("Frida startup timeout reached");
            process.destroy();
            
        } catch (Exception e) {
            logError("Failed to start Frida: " + e.getMessage());
        }
    }
    
    /**
     * Check if Frida is ready by looking for specific log messages
     */
    private boolean isFridaReady() {
        try {
            // Check if Frida log file exists and contains success message
            File fridaLog = new File("logs/frida.log");
            if (fridaLog.exists()) {
                BufferedReader reader = new BufferedReader(new FileReader(fridaLog));
                String line;
                while ((line = reader.readLine()) != null) {
                    if (line.contains("Frida agent initialized with regex patterns") ||
                        line.contains("Frida controller is now monitoring")) {
                        reader.close();
                        return true;
                    }
                }
                reader.close();
            }
        } catch (Exception e) {
            // Ignore errors
        }
        return false;
    }
    
    private void logInfo(String message) {
        System.out.println("FridaManager: " + message);
    }
    
    private void logError(String message) {
        System.err.println("FridaManager: " + message);
    }

    public void stopFrida() {
        System.out.println("FridaManager: Attempting to stop Frida process...");
        if (fridaProcess != null && fridaProcess.isAlive()) {
            fridaProcess.destroy(); // Sends SIGTERM
            try {
                int timeoutSeconds = configLoader.getFridaTimeout();
                if (!fridaProcess.waitFor(timeoutSeconds, TimeUnit.SECONDS)) { // Wait for graceful exit
                    System.out.println("FridaManager: Frida process did not exit gracefully, forcing kill...");
                    fridaProcess.destroyForcibly(); // Sends SIGKILL
                }
                if (!fridaProcess.isAlive()) {
                    System.out.println("FridaManager: Frida process stopped.");
                } else {
                    System.out.println("FridaManager: Frida process may still be running after forcible stop attempt.");
                }
            } catch (InterruptedException e) {
                System.err.println("FridaManager: Interrupted while waiting for Frida process to stop.");
                Thread.currentThread().interrupt();
            }
        } else {
            System.out.println("FridaManager: No Frida process to stop.");
        }
        fridaProcess = null;
    }

    public void restartFrida(String appPackageName) {
        System.out.println("FridaManager: Restarting Frida...");
        stopFrida();
        // Add a small delay to ensure ports/processes are fully released if needed
        try {
            TimeUnit.MILLISECONDS.sleep(500);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        startFrida(appPackageName);
    }
}