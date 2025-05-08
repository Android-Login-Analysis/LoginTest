import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class FridaManager {
    private Process fridaProcess;
    private List<String> regexPatterns = new ArrayList<>();

    public FridaManager(String regexFilePath) {
        // Read regular expressions from a file
        readRegexPatterns(regexFilePath);
    }

    private void readRegexPatterns(String filePath) {
        // Read each line from the specified file and add it to the regexPatterns list if it's not empty
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (!line.trim().isEmpty()) {
                    regexPatterns.add(line.trim());
                }
            }
        } catch (IOException e) {
            System.out.println("Error reading regex file: " + e.getMessage());
        }
    }

    public void startFrida(String app) {
        // Start the Frida process with a specific command (adjust the command to match your setup)
        try {
            String command = "frida -U -f " + app +" -l  ../../scripts/frida.js --no-pause";
            fridaProcess = Runtime.getRuntime().exec(command);
            System.out.println("Frida started successfully.");
        } catch (IOException e) {
            System.out.println("Error starting Frida: " + e.getMessage());
        }
    }

    public void restartFrida(String app) {
        // Terminate the existing Frida process if it exists and restart it
        if (fridaProcess != null) {
            fridaProcess.destroy();
            System.out.println("Frida process terminated.");
        }
        startFrida(app);
    }

    public List<String> getRegexPatterns() {
        // Get the list of regex patterns
        return regexPatterns;
    }
}
