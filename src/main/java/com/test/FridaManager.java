package com.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.concurrent.TimeUnit;
import java.util.Properties;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.util.ArrayList;
import java.util.List;

public class FridaManager {
    private static final Logger logger = LoggerFactory.getLogger(FridaManager.class);
    private Process fridaProcess;
    private String packageName;
    private static final String FRIDA_CONTROLLER = "frida_controller.py";
    private static final String LOGIN_AGENT = "login_agent.js";
    private static final String REGEX_PATTERNS = "regex_patterns.txt";
    private Properties patterns;
    private List<String> observedStates;

    public FridaManager(String packageName) {
        this.packageName = packageName;
        this.observedStates = new ArrayList<>();
        loadPatterns();
    }

    private void loadPatterns() {
        patterns = new Properties();
        try {
            String patternsPath = getResourceDirectory() + File.separator + REGEX_PATTERNS;
            patterns.load(Files.newInputStream(Paths.get(patternsPath)));
            logger.info("Loaded {} regex patterns", patterns.size());
        } catch (IOException e) {
            logger.error("Failed to load regex patterns: {}", e.getMessage());
            throw new RuntimeException("Failed to load regex patterns", e);
        }
    }

    public void startFrida() {
        try {
            // Get the resource directory
            String resourceDir = getResourceDirectory();
            Path controllerPath = Paths.get(resourceDir, FRIDA_CONTROLLER);
            Path agentPath = Paths.get(resourceDir, LOGIN_AGENT);

            // Verify files exist
            if (!Files.exists(controllerPath)) {
                throw new IOException("Frida controller script not found at: " + controllerPath);
            }
            if (!Files.exists(agentPath)) {
                throw new IOException("Frida agent script not found at: " + agentPath);
            }

            // Make the controller script executable
            if (!controllerPath.toFile().setExecutable(true)) {
                throw new IOException("Failed to make controller script executable: " + controllerPath);
            }

            // Start the Frida controller with absolute paths
            ProcessBuilder pb = new ProcessBuilder("python3",
                    controllerPath.toAbsolutePath().toString(),
                    packageName);

            // Set working directory to the resource directory
            pb.directory(new File(resourceDir));

            // Redirect error stream
            pb.redirectErrorStream(true);

            // Start the process
            fridaProcess = pb.start();

            // Wait briefly to check if process started successfully
            if (!fridaProcess.isAlive()) {
                throw new IOException("Frida controller process failed to start");
            }

            logger.info("Frida started successfully for package: {}", packageName);
        } catch (Exception e) {
            logger.error("Failed to start Frida: {}", e.getMessage());
            throw new RuntimeException("Failed to start Frida", e);
        }
    }

    public void stopFrida() {
        if (fridaProcess != null) {
            try {
                fridaProcess.destroy();
                if (fridaProcess.isAlive()) {
                    fridaProcess.destroyForcibly();
                }
                fridaProcess.waitFor(5, TimeUnit.SECONDS);
                logger.info("Frida stopped successfully");
            } catch (InterruptedException e) {
                logger.error("Error stopping Frida: {}", e.getMessage());
                Thread.currentThread().interrupt();
            }
        }
    }

    public void processApiCall(String apiCall) {
        // Match API call against patterns
        for (String patternName : patterns.stringPropertyNames()) {
            String pattern = patterns.getProperty(patternName);
            if (Pattern.matches(pattern, apiCall)) {
                observedStates.add(patternName);
                logger.info("Matched API call '{}' to state '{}'", apiCall, patternName);
                break;
            }
        }
    }

    public List<String> getObservedStates() {
        return new ArrayList<>(observedStates);
    }

    private String getResourceDirectory() {
        try {
            return new File(getClass().getClassLoader()
                    .getResource(FRIDA_CONTROLLER)
                    .toURI())
                    .getParent();
        } catch (Exception e) {
            throw new RuntimeException("Failed to get resource directory", e);
        }
    }

    private void makeExecutable(Path path) throws IOException {
        File file = path.toFile();
        if (!file.setExecutable(true)) {
            throw new IOException("Failed to make file executable: " + path);
        }
    }
}