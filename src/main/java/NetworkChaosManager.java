import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.*;
import java.util.concurrent.*;

/**
 * Network Chaos Manager for simulating unstable network conditions during login testing
 * This helps discover bugs related to network timeouts, retries, and error handling
 */
public class NetworkChaosManager {
    
    private final ConfigLoader configLoader;
    private final Logger logger;
    private final Random random;
    private ScheduledExecutorService scheduler;
    private volatile boolean isRunning;
    private volatile NetworkState currentState;
    private volatile long lastSwitchTime;
    
    // Network state tracking
    private int goodNetworkCount;
    private int badNetworkCount;
    private List<NetworkDisruptionEvent> disruptionHistory;
    
    public enum NetworkState {
        GOOD,
        BAD
    }
    
    public enum DisruptionMethod {
        DISABLE_DATA("disable_data"),
        DISABLE_WIFI("disable_wifi"),
        SLOW_NETWORK("slow_network"),
        PACKET_LOSS("packet_loss"),
        HIGH_LATENCY("high_latency");
        
        private final String configValue;
        
        DisruptionMethod(String configValue) {
            this.configValue = configValue;
        }
        
        public static DisruptionMethod fromString(String value) {
            for (DisruptionMethod method : values()) {
                if (method.configValue.equalsIgnoreCase(value)) {
                    return method;
                }
            }
            return DISABLE_DATA; // default
        }
    }
    
    public static class NetworkDisruptionEvent {
        public long timestamp;
        public NetworkState state;
        public DisruptionMethod method;
        public int durationSeconds;
        public String description;
        
        public NetworkDisruptionEvent(NetworkState state, DisruptionMethod method, int duration, String description) {
            this.timestamp = System.currentTimeMillis();
            this.state = state;
            this.method = method;
            this.durationSeconds = duration;
            this.description = description;
        }
    }
    
    public interface Logger {
        void logInfo(String message);
        void logError(String message);
    }
    
    public NetworkChaosManager(ConfigLoader configLoader, Logger logger) {
        this.configLoader = configLoader;
        this.logger = logger;
        this.random = new Random();
        this.isRunning = false;
        this.currentState = NetworkState.GOOD;
        this.lastSwitchTime = System.currentTimeMillis();
        this.disruptionHistory = new ArrayList<>();
        this.goodNetworkCount = 0;
        this.badNetworkCount = 0;
    }
    
    /**
     * Start network chaos testing
     */
    public void start() {
        if (!configLoader.isNetworkChaosEnabled()) {
            logger.logInfo("Network chaos testing is disabled");
            return;
        }
        
        logger.logInfo("=== Starting Network Chaos Testing ===");
        logger.logInfo("Mode: " + configLoader.getNetworkChaosMode());
        logger.logInfo("Good:Bad Ratio: " + configLoader.getNetworkGoodRatio() + ":" + configLoader.getNetworkBadRatio());
        logger.logInfo("Switch Interval: " + configLoader.getNetworkSwitchInterval() + " seconds");
        logger.logInfo("Disruption Methods: " + String.join(", ", configLoader.getNetworkDisruptionMethods()));
        
        isRunning = true;
        currentState = NetworkState.GOOD;
        
        // Ensure network is initially enabled
        restoreGoodNetwork();
        
        // Start the chaos scheduler based on mode
        String mode = configLoader.getNetworkChaosMode();
        if ("periodic".equalsIgnoreCase(mode)) {
            startPeriodicMode();
        } else if ("random".equalsIgnoreCase(mode)) {
            startRandomMode();
        } else if ("adaptive".equalsIgnoreCase(mode)) {
            startAdaptiveMode();
        } else {
            logger.logError("Unknown network chaos mode: " + mode + ", using random mode");
            startRandomMode();
        }
    }
    
    /**
     * Stop network chaos testing and restore normal network
     */
    public void stop() {
        if (!isRunning) {
            return;
        }
        
        logger.logInfo("=== Stopping Network Chaos Testing ===");
        isRunning = false;
        
        if (scheduler != null && !scheduler.isShutdown()) {
            scheduler.shutdownNow();
        }
        
        // Restore good network before stopping
        restoreGoodNetwork();
        
        // Print statistics
        printStatistics();
    }
    
    /**
     * Periodic mode: switch network state every N seconds
     */
    private void startPeriodicMode() {
        scheduler = Executors.newSingleThreadScheduledExecutor();
        int interval = configLoader.getNetworkSwitchInterval();
        
        scheduler.scheduleAtFixedRate(() -> {
            try {
                if (isRunning) {
                    switchNetworkState();
                }
            } catch (Exception e) {
                logger.logError("Error in periodic network switch: " + e.getMessage());
            }
        }, interval, interval, TimeUnit.SECONDS);
        
        logger.logInfo("Network chaos scheduler started in periodic mode (interval: " + interval + "s)");
    }
    
    /**
     * Random mode: randomly switch based on good:bad ratio
     */
    private void startRandomMode() {
        scheduler = Executors.newSingleThreadScheduledExecutor();
        int baseInterval = configLoader.getNetworkSwitchInterval();
        
        scheduler.scheduleAtFixedRate(() -> {
            try {
                if (isRunning) {
                    // Decide next state based on ratio
                    int goodRatio = configLoader.getNetworkGoodRatio();
                    int badRatio = configLoader.getNetworkBadRatio();
                    int total = goodRatio + badRatio;
                    int roll = random.nextInt(total);
                    
                    NetworkState nextState = (roll < goodRatio) ? NetworkState.GOOD : NetworkState.BAD;
                    
                    if (nextState != currentState) {
                        if (nextState == NetworkState.GOOD) {
                            restoreGoodNetwork();
                        } else {
                            induceNetworkDisruption();
                        }
                    }
                }
            } catch (Exception e) {
                logger.logError("Error in random network switch: " + e.getMessage());
            }
        }, baseInterval, baseInterval, TimeUnit.SECONDS);
        
        logger.logInfo("Network chaos scheduler started in random mode");
    }
    
    /**
     * Adaptive mode: increase chaos when login seems stuck
     * (Future enhancement - placeholder for now)
     */
    private void startAdaptiveMode() {
        // For now, use random mode as base
        logger.logInfo("Adaptive mode not fully implemented yet, falling back to random mode");
        startRandomMode();
    }
    
    /**
     * Switch network state
     */
    private void switchNetworkState() {
        if (currentState == NetworkState.GOOD) {
            induceNetworkDisruption();
        } else {
            restoreGoodNetwork();
        }
    }
    
    /**
     * Restore good network (enable all connections)
     */
    private void restoreGoodNetwork() {
        try {
            logger.logInfo("🟢 Restoring GOOD network state");
            
            // Enable mobile data (silent - may not be supported on all Android versions)
            executeAdbCommandSilent("svc data enable");
            
            // Enable WiFi (silent - may not be supported on all Android versions)
            executeAdbCommandSilent("svc wifi enable");
            
            // Clear any iptables rules (silent - requires root, may not work on all devices)
            executeAdbCommandSilent("iptables -F");
            
            currentState = NetworkState.GOOD;
            goodNetworkCount++;
            lastSwitchTime = System.currentTimeMillis();
            
            disruptionHistory.add(new NetworkDisruptionEvent(
                NetworkState.GOOD, 
                null, 
                0, 
                "Network restored to good state"
            ));
            
        } catch (Exception e) {
            logger.logError("Failed to restore good network: " + e.getMessage());
        }
    }
    
    /**
     * Induce network disruption (bad network state)
     */
    private void induceNetworkDisruption() {
        try {
            // Select a random disruption method
            List<String> methods = configLoader.getNetworkDisruptionMethods();
            String methodStr = methods.get(random.nextInt(methods.size()));
            DisruptionMethod method = DisruptionMethod.fromString(methodStr);
            
            // Random duration within configured range
            int minDuration = configLoader.getNetworkDisruptionMinDuration();
            int maxDuration = configLoader.getNetworkDisruptionMaxDuration();
            int duration = minDuration + random.nextInt(maxDuration - minDuration + 1);
            
            logger.logInfo("🔴 Inducing BAD network state: " + method + " for " + duration + " seconds");
            
            switch (method) {
                case DISABLE_DATA:
                    executeAdbCommand("svc data disable");
                    disruptionHistory.add(new NetworkDisruptionEvent(
                        NetworkState.BAD, method, duration, "Mobile data disabled"
                    ));
                    break;
                    
                case DISABLE_WIFI:
                    executeAdbCommand("svc wifi disable");
                    disruptionHistory.add(new NetworkDisruptionEvent(
                        NetworkState.BAD, method, duration, "WiFi disabled"
                    ));
                    break;
                    
                case SLOW_NETWORK:
                    // Simulate slow network using traffic control
                    simulateSlowNetwork();
                    disruptionHistory.add(new NetworkDisruptionEvent(
                        NetworkState.BAD, method, duration, "Network slowed down (high latency)"
                    ));
                    break;
                    
                case PACKET_LOSS:
                    simulatePacketLoss();
                    disruptionHistory.add(new NetworkDisruptionEvent(
                        NetworkState.BAD, method, duration, "Packet loss induced (20%)"
                    ));
                    break;
                    
                case HIGH_LATENCY:
                    simulateHighLatency();
                    disruptionHistory.add(new NetworkDisruptionEvent(
                        NetworkState.BAD, method, duration, "High latency induced (500ms)"
                    ));
                    break;
            }
            
            currentState = NetworkState.BAD;
            badNetworkCount++;
            lastSwitchTime = System.currentTimeMillis();
            
            // Schedule automatic recovery after duration
            if (scheduler != null) {
                scheduler.schedule(() -> {
                    if (currentState == NetworkState.BAD && isRunning) {
                        restoreGoodNetwork();
                    }
                }, duration, TimeUnit.SECONDS);
            }
            
        } catch (Exception e) {
            logger.logError("Failed to induce network disruption: " + e.getMessage());
        }
    }
    
    /**
     * Simulate slow network using iptables delay
     */
    private void simulateSlowNetwork() {
        try {
            // Add 500ms delay to all packets
            executeAdbCommand("tc qdisc add dev wlan0 root netem delay 500ms");
        } catch (Exception e) {
            logger.logError("Failed to simulate slow network: " + e.getMessage());
        }
    }
    
    /**
     * Simulate packet loss
     */
    private void simulatePacketLoss() {
        try {
            // Drop 20% of packets
            executeAdbCommand("tc qdisc add dev wlan0 root netem loss 20%");
        } catch (Exception e) {
            logger.logError("Failed to simulate packet loss: " + e.getMessage());
        }
    }
    
    /**
     * Simulate high latency
     */
    private void simulateHighLatency() {
        try {
            // Add 500ms delay
            executeAdbCommand("tc qdisc add dev wlan0 root netem delay 500ms 100ms");
        } catch (Exception e) {
            logger.logError("Failed to simulate high latency: " + e.getMessage());
        }
    }
    
    /**
     * Execute ADB command
     */
    private String executeAdbCommand(String command) throws Exception {
        ProcessBuilder pb = new ProcessBuilder("adb", "shell", command);
        pb.redirectErrorStream(true);
        Process process = pb.start();
        
        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        StringBuilder output = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            output.append(line).append("\n");
        }
        
        int exitCode = process.waitFor();
        if (exitCode != 0) {
            logger.logError("ADB command failed (exit=" + exitCode + "): " + command);
        }
        
        return output.toString();
    }
    
    /**
     * Execute ADB command silently (ignore errors)
     * Used for commands that may not be supported on all Android versions
     */
    private void executeAdbCommandSilent(String command) {
        try {
            ProcessBuilder pb = new ProcessBuilder("adb", "shell", command);
            pb.redirectErrorStream(true);
            Process process = pb.start();
            process.waitFor(2, java.util.concurrent.TimeUnit.SECONDS);
            // Silently ignore any errors - these commands are optional
        } catch (Exception e) {
            // Ignore - command not supported on this Android version
        }
    }
    
    /**
     * Get current network state
     */
    public NetworkState getCurrentState() {
        return currentState;
    }
    
    /**
     * Check if network chaos is running
     */
    public boolean isRunning() {
        return isRunning;
    }
    
    /**
     * Get disruption history
     */
    public List<NetworkDisruptionEvent> getDisruptionHistory() {
        return new ArrayList<>(disruptionHistory);
    }
    
    /**
     * Print statistics
     */
    private void printStatistics() {
        logger.logInfo("=== Network Chaos Testing Statistics ===");
        logger.logInfo("Total good network periods: " + goodNetworkCount);
        logger.logInfo("Total bad network periods: " + badNetworkCount);
        logger.logInfo("Total disruptions: " + disruptionHistory.size());
        logger.logInfo("Actual good:bad ratio: " + goodNetworkCount + ":" + badNetworkCount);
    }
    
    /**
     * Save disruption report
     */
    public void saveDisruptionReport(String outputPath) {
        try {
            java.io.PrintWriter writer = new java.io.PrintWriter(outputPath);
            writer.println("=".repeat(80));
            writer.println("Network Chaos Testing Report");
            writer.println("=".repeat(80));
            writer.println();
            writer.println("Configuration:");
            writer.println("  Mode: " + configLoader.getNetworkChaosMode());
            writer.println("  Good:Bad Ratio: " + configLoader.getNetworkGoodRatio() + ":" + configLoader.getNetworkBadRatio());
            writer.println("  Switch Interval: " + configLoader.getNetworkSwitchInterval() + " seconds");
            writer.println();
            writer.println("Statistics:");
            writer.println("  Total good network periods: " + goodNetworkCount);
            writer.println("  Total bad network periods: " + badNetworkCount);
            writer.println("  Total disruptions: " + disruptionHistory.size());
            writer.println("  Actual good:bad ratio: " + goodNetworkCount + ":" + badNetworkCount);
            writer.println();
            writer.println("Disruption Timeline:");
            writer.println("-".repeat(80));
            
            for (NetworkDisruptionEvent event : disruptionHistory) {
                java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                writer.printf("[%s] %s - %s (duration: %ds)%n", 
                    sdf.format(new Date(event.timestamp)),
                    event.state,
                    event.description,
                    event.durationSeconds);
            }
            
            writer.close();
            logger.logInfo("Network disruption report saved to: " + outputPath);
        } catch (Exception e) {
            logger.logError("Failed to save disruption report: " + e.getMessage());
        }
    }
}
