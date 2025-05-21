
// FridaManager.java
// import com.google.gson.Gson; // Recommended once dependency is added
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
// import java.io.InputStreamReader; // Might still be needed for fridaProcess.getErrorStream()
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import java.util.Map;
import java.util.HashMap;
import java.util.Base64; // For Base64 encoding

public class FridaManager {

    private Process pythonControllerProcess; // Changed from fridaProcess
    private final String fridaLogFilePath;
    private final String fridaAgentJsPath;
    private final String pythonControllerPath; // Path to frida_controller.py

    private List<String> apiRegexOnlyPatternsForAgent;
    private String apiRegexPatternsJsonString;
    private Map<String, Pattern> stateToApiRegexPatterns;

    public FridaManager(String stateAndApiRegexFilePath, String agentJsPath, String logPath, String pythonCtrlPath) {
        this.fridaAgentJsPath = agentJsPath;
        this.fridaLogFilePath = logPath;
        this.pythonControllerPath = pythonCtrlPath; // Initialize path to python script

        this.apiRegexOnlyPatternsForAgent = new ArrayList<>();
        this.stateToApiRegexPatterns = new HashMap<>();
        loadRegexesFromFile(stateAndApiRegexFilePath);
        prepareJsonRegexForAgent(); // This prepares the JSON string
    }

    private void loadRegexesFromFile(String filePath) {
        // ... (same as before, loads into apiRegexOnlyPatternsForAgent and
        // stateToApiRegexPatterns) ...
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
                        apiRegexOnlyPatternsForAgent.add(regexStr);
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
        // Recommended: Use Gson once dependency is added
        // import com.google.gson.Gson;
        // Gson gson = new Gson();
        // this.apiRegexPatternsJsonString = gson.toJson(apiRegexOnlyPatternsForAgent);

        // Manual JSON array construction (simple version)
        if (apiRegexOnlyPatternsForAgent != null && !apiRegexOnlyPatternsForAgent.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            for (int i = 0; i < apiRegexOnlyPatternsForAgent.size(); i++) {
                String regex = apiRegexOnlyPatternsForAgent.get(i);
                // Escape backslashes and quotes for JSON string compatibility
                String escapedRegex = regex.replace("\\", "\\\\").replace("\"", "\\\"");
                sb.append("\"").append(escapedRegex).append("\"");
                if (i < apiRegexOnlyPatternsForAgent.size() - 1) {
                    sb.append(",");
                }
            }
            sb.append("]");
            this.apiRegexPatternsJsonString = sb.toString();
        } else {
            this.apiRegexPatternsJsonString = "[]";
        }
        System.out.println("FridaManager: Prepared JSON for agent: " + this.apiRegexPatternsJsonString);
    }

    public String getApiRegexPatternsJsonString() {
        return this.apiRegexPatternsJsonString;
    }

    public Map<String, Pattern> getStateToApiRegexPatterns() {
        return this.stateToApiRegexPatterns;
    }

    public void startFrida(String appPackageName) {
        if (this.apiRegexPatternsJsonString == null) {
            System.err.println("FridaManager: API regex patterns JSON string is null. Cannot start Frida controller.");
            return;
        }
        if (this.pythonControllerPath == null || this.pythonControllerPath.trim().isEmpty()) {
            System.err.println("FridaManager: Python controller script path is not set.");
            return;
        }
        File pythonScriptFile = new File(this.pythonControllerPath);
        if (!pythonScriptFile.exists() || !pythonScriptFile.canExecute()) {
            System.err.println(
                    "FridaManager: Python controller script not found or not executable: " + this.pythonControllerPath);
            return;
        }

        System.out.println("FridaManager: Starting Python Frida controller for app: " + appPackageName);
        System.out.println("FridaManager: Python script: " + this.pythonControllerPath);
        System.out.println("FridaManager: Agent JS: " + this.fridaAgentJsPath);
        System.out.println("FridaManager: API Log will be at: " + this.fridaLogFilePath);

        try {
            // Base64 encode the JSON string to safely pass it as a command line argument
            String encodedApiRegexJson = Base64.getEncoder()
                    .encodeToString(this.apiRegexPatternsJsonString.getBytes("UTF-8"));

            // Command: python /path/to/frida_controller.py <pkg_name> <agent_js_path>
            // <base64_json_regex> <output_log_path>
            // The output_log_path argument to python script is mostly for its awareness,
            // as its stdout (containing agent's console.log) will be redirected by
            // ProcessBuilder.
            String command = String.format("python %s %s %s %s %s",
                    this.pythonControllerPath,
                    appPackageName,
                    this.fridaAgentJsPath,
                    encodedApiRegexJson,
                    this.fridaLogFilePath // Python script doesn't directly use this for writing API logs
            );

            System.out.println("FridaManager: Executing command: " + command);

            ProcessBuilder processBuilder = new ProcessBuilder(command.split(" "));
            // Redirect stdout of the Python script (which contains agent's console.log) to
            // fridaLogFilePath
            processBuilder.redirectOutput(ProcessBuilder.Redirect.to(new File(fridaLogFilePath)));
            // It's also good to capture or redirect error stream of the python script
            processBuilder.redirectErrorStream(true); // Merges python's stderr with its stdout

            pythonControllerProcess = processBuilder.start();

            System.out.println(
                    "FridaManager: Python Frida controller process started. PID: " + pythonControllerProcess.pid());
            // Add a delay to allow Python script to initialize Frida and the agent
            // This delay might need adjustment.
            // A more robust solution would be for the Python script to signal readiness
            // (e.g., print a specific line).
            System.out.println("FridaManager: Waiting for Python controller and Frida agent to initialize...");
            TimeUnit.SECONDS.sleep(15); // Increased delay for Python script + Frida init
            System.out.println("FridaManager: Assumed Python controller and agent initialized.");

        } catch (IOException | InterruptedException e) {
            System.err.println("FridaManager: Error starting Python Frida controller: " + e.getMessage());
            e.printStackTrace();
            if (pythonControllerProcess != null) {
                pythonControllerProcess.destroyForcibly();
            }
        }
    }

    public void stopFrida() {
        System.out.println("FridaManager: Stopping Python Frida controller process...");
        if (pythonControllerProcess != null && pythonControllerProcess.isAlive()) {
            pythonControllerProcess.destroy(); // Sends SIGTERM to Python script
            try {
                if (!pythonControllerProcess.waitFor(10, TimeUnit.SECONDS)) { // Python script should catch SIGTERM and
                                                                              // detach
                    System.out.println("FridaManager: Python controller did not exit gracefully, forcing kill...");
                    pythonControllerProcess.destroyForcibly();
                }
                if (!pythonControllerProcess.isAlive()) {
                    System.out.println("FridaManager: Python controller process stopped.");
                } else {
                    System.out.println("FridaManager: Python controller process may still be running.");
                }
            } catch (InterruptedException e) {
                System.err.println("FridaManager: Interrupted while waiting for Python controller to stop.");
                pythonControllerProcess.destroyForcibly();
                Thread.currentThread().interrupt();
            }
        }
        System.out.println("FridaManager: stopFrida() completed.");
    }

    public void restartFrida(String appPackageName) {
        System.out.println("FridaManager: Restarting Frida via Python controller...");
        stopFrida();
        try {
            TimeUnit.MILLISECONDS.sleep(1000); // Increased delay for full stop
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        startFrida(appPackageName);
    }
}