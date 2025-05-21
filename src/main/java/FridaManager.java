// import com.google.gson.Gson; // For converting list to JSON string - Temporarily commented out

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

// Stub class - TODO: Implement with actual Frida interaction logic
public class FridaManager {

    private Process fridaProcess;
    private final String fridaLogFilePath; // Set via constructor or config
    private final String fridaAgentJsPath; // Path to login_agent.js
    private List<String> apiRegexOnlyPatternsForAgent; // Parsed regex strings for the agent
    private String apiRegexPatternsJsonString; // JSON string of the above list

    // This map is for ApiLogAnalyzer to map API calls to States.
    // The Frida agent itself only needs the regex strings to hook methods.
    private Map<String, Pattern> stateToApiRegexPatterns;

    public FridaManager(String stateAndApiRegexFilePath, String agentJsPath, String logPath) {
        this.fridaAgentJsPath = agentJsPath;
        this.fridaLogFilePath = logPath;
        this.apiRegexOnlyPatternsForAgent = new ArrayList<>();
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
                        apiRegexOnlyPatternsForAgent.add(regexStr); // Add only the regex for the agent
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
        if (apiRegexOnlyPatternsForAgent != null && !apiRegexOnlyPatternsForAgent.isEmpty()) {
            // Gson gson = new Gson(); // Temporarily commented out
            // this.apiRegexPatternsJsonString = gson.toJson(apiRegexOnlyPatternsForAgent);

            // Manual JSON array construction (simple version, not robust for all edge
            // cases)
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            for (int i = 0; i < apiRegexOnlyPatternsForAgent.size(); i++) {
                // Basic escaping for quotes if regex string itself contains quotes.
                // Proper JSON string escaping is more complex.
                String regex = apiRegexOnlyPatternsForAgent.get(i);
                sb.append("\"").append(regex.replace("\"", "\\\"")).append("\"");
                if (i < apiRegexOnlyPatternsForAgent.size() - 1) {
                    sb.append(",");
                }
            }
            sb.append("]");
            this.apiRegexPatternsJsonString = sb.toString();

            // System.out.println("FridaManager: Prepared JSON for agent: " +
            // apiRegexPatternsJsonString);
        } else {
            this.apiRegexPatternsJsonString = "[]"; // Empty JSON array
            System.out.println("FridaManager: No API regex patterns loaded, agent will receive empty list.");
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

    public void startFrida(String appPackageName) {
        if (this.apiRegexPatternsJsonString == null || this.apiRegexPatternsJsonString.equals("[]")) {
            System.err.println(
                    "FridaManager: Cannot start Frida, API regex patterns JSON string is not prepared or empty.");
            return;
        }
        System.out.println("FridaManager: Attempting to start Frida for app: " + appPackageName);
        System.out.println("FridaManager: Using agent: " + fridaAgentJsPath);
        System.out.println("FridaManager: Logging API calls to: " + fridaLogFilePath);

        // TODO: IMPLEMENT ACTUAL FRIDA PROCESS START AND RPC CALL
        // This is a highly simplified placeholder.
        // You need to:
        // 1. Construct the correct Frida CLI command (e.g., frida -U -f <pkg> -l
        // <agent.js> --no-pause)
        // 2. Launch the process.
        // 3. After a short delay for the script to load, ESTABLISH AN RPC CONNECTION to
        // the agent.
        // 4. Call `script.exports.init(appPackageName,
        // this.apiRegexPatternsJsonString);` via RPC.
        // (How to make RPC calls depends on how you launch/interface with Frida CLI)
        // 5. Ensure fridaProcess.getOutputStream() (or errorStream) is captured if you
        // need to read script's internal logs,
        // but the API call logs from `console.log` in the agent should be redirected
        // via command line to fridaLogFilePath.

        try {
            // Example: "frida -U -f com.example.app -l login_agent.js --no-pause"
            // The output redirection to fridaLogFilePath should ideally be part of the
            // Frida command or ProcessBuilder setup.
            String fridaCommand = String.format("frida -U -f %s -l %s --no-pause",
                    appPackageName,
                    fridaAgentJsPath);

            System.out.println("FridaManager: Executing command: " + fridaCommand);
            System.out.println(
                    "FridaManager: IMPORTANT - RPC call to agent's init() function with JSON regex is NOT implemented in this stub.");
            System.out.println("FridaManager: JSON to be sent: " + this.apiRegexPatternsJsonString);

            ProcessBuilder processBuilder = new ProcessBuilder(fridaCommand.split(" "));
            // Redirects Frida's stdout (which includes agent's console.log for API calls)
            // to fridaLogFilePath.
            processBuilder.redirectOutput(ProcessBuilder.Redirect.to(new File(fridaLogFilePath)));
            processBuilder.redirectErrorStream(true); // Merge stderr to stdout, then to file

            fridaProcess = processBuilder.start();

            System.out.println("FridaManager: Frida process potentially started. PID: " + fridaProcess.pid()
                    + ". Waiting for agent to initialize...");
            // Wait a bit for Frida to attach and the agent to load before the test
            // proceeds.
            // The RPC call to init() should happen here.
            boolean agentInitialized = false;
            // TODO: Implement a robust way to check if agent is ready or if RPC call
            // succeeded.
            // For now, just a delay.
            TimeUnit.SECONDS.sleep(10); // Increase if Frida/agent needs more time to start on your system.
            System.out.println("FridaManager: Assumed agent initialized (RPC call needs actual implementation).");
            agentInitialized = true; // Placeholder

            if (!agentInitialized) {
                System.err.println(
                        "FridaManager: Frida agent did not initialize properly (RPC call failed or timed out).");
                stopFrida(); // Clean up
            }

        } catch (IOException | InterruptedException e) {
            System.err.println("FridaManager: Error starting Frida process: " + e.getMessage());
            e.printStackTrace();
            if (fridaProcess != null) {
                fridaProcess.destroyForcibly();
            }
        }
    }

    public void stopFrida() {
        System.out.println("FridaManager: Attempting to stop Frida process...");
        if (fridaProcess != null && fridaProcess.isAlive()) {
            fridaProcess.destroy(); // Sends SIGTERM
            try {
                if (!fridaProcess.waitFor(5, TimeUnit.SECONDS)) { // Wait for graceful exit
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
                fridaProcess.destroyForcibly();
                Thread.currentThread().interrupt();
            }
        }
        // Additional cleanup: Try to kill any leftover frida-server on device if issues
        // persist (less ideal)
        // try { Runtime.getRuntime().exec("adb shell pkill frida-server"); } catch
        // (IOException e) { e.printStackTrace(); }
        System.out.println("FridaManager: stopFrida() completed.");
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