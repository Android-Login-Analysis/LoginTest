import java.io.*;
import java.nio.file.*;
import java.util.*;

/**
 * Manages credential pools for different apps and login methods
 */
public class CredentialManager {
    private static CredentialManager instance;
    private final String poolsDir = "pools";
    private String currentAppPackage;
    
    // Credential lists
    private List<String> normalUsernames = new ArrayList<>();
    private List<String> normalPasswords = new ArrayList<>();
    private List<String> googleAccounts = new ArrayList<>();
    private List<String> googlePasswords = new ArrayList<>();
    private List<String> facebookAccounts = new ArrayList<>();
    private List<String> facebookPasswords = new ArrayList<>();
    
    // Optional known-valid pairs (username,password)
    private List<String[]> normalValidPairs = new ArrayList<>();
    private List<String[]> googleValidPairs = new ArrayList<>();
    private List<String[]> facebookValidPairs = new ArrayList<>();
    
    // Track used credentials
    private int normalIndex = 0;
    private int googleIndex = 0;
    private int facebookIndex = 0;
    private int normalPairIndex = 0;
    private int googlePairIndex = 0;
    private int facebookPairIndex = 0;

    // Randomization and policy
    private final Random rand = new Random();
    // Load probability from config.properties via ConfigLoader (no hardcode)
    private final ConfigLoader configLoader = new ConfigLoader();
    
    private CredentialManager() {}
    
    public static synchronized CredentialManager getInstance() {
        if (instance == null) {
            instance = new CredentialManager();
        }
        return instance;
    }
    
    /**
     * Load credentials for a specific app
     */
    public void loadCredentialsForApp(String appPackage) {
        this.currentAppPackage = appPackage;
        String appPoolDir = poolsDir + "/" + appPackage;
        
        // Clear previous credentials
        clearAll();
        
        // Load normal credentials
        loadFileToList(appPoolDir + "/usernames.txt", normalUsernames);
        loadFileToList(appPoolDir + "/passwords.txt", normalPasswords);
        loadPairsToList(appPoolDir + "/valid_pairs.csv", normalValidPairs);
        
        // Load Google credentials
        loadFileToList(appPoolDir + "/google_accounts.txt", googleAccounts);
        loadFileToList(appPoolDir + "/google_passwords.txt", googlePasswords);
        loadPairsToList(appPoolDir + "/google_valid_pairs.csv", googleValidPairs);
        
        // Load Facebook credentials
        loadFileToList(appPoolDir + "/facebook_accounts.txt", facebookAccounts);
        loadFileToList(appPoolDir + "/facebook_passwords.txt", facebookPasswords);
        loadPairsToList(appPoolDir + "/facebook_valid_pairs.csv", facebookValidPairs);
        
        System.out.println("[CredentialManager] Loaded credentials for " + appPackage);
        System.out.println("  Normal: " + normalUsernames.size() + " usernames, " + normalPasswords.size() + " passwords");
        System.out.println("  Google: " + googleAccounts.size() + " accounts");
        System.out.println("  Facebook: " + facebookAccounts.size() + " accounts");
    }
    
    /**
     * Get next normal login credentials
     */
    public Credential getNextNormalCredential() {
        if (normalUsernames.isEmpty() || normalPasswords.isEmpty()) {
            // Default fallback
            return new Credential("testuser", "demo123456", "normal");
        }
        // Option 1: use a known-valid pair (when available)
        boolean usePair = !normalValidPairs.isEmpty() &&
                rand.nextDouble() < configLoader.getCredentialsUseValidPairProbability();
        if (usePair) {
            String[] pair = normalValidPairs.get(normalPairIndex % normalValidPairs.size());
            normalPairIndex++;
            return new Credential(pair[0], pair[1], "normal", true);
        }
        // Option 2: random mismatched to trigger more bugs
        String username = normalUsernames.get(rand.nextInt(normalUsernames.size()));
        String password = normalPasswords.get(rand.nextInt(normalPasswords.size()));
        normalIndex++;
        return new Credential(username, password, "normal", false);
    }
    
    /**
     * Get next Google credentials
     */
    public Credential getNextGoogleCredential() {
        if (googleAccounts.isEmpty() || googlePasswords.isEmpty()) {
            // Default fallback
            return new Credential("testuser@gmail.com", "demo123456", "google");
        }
        boolean usePair = !googleValidPairs.isEmpty() &&
                rand.nextDouble() < configLoader.getCredentialsUseValidPairProbability();
        if (usePair) {
            String[] pair = googleValidPairs.get(googlePairIndex % googleValidPairs.size());
            googlePairIndex++;
            return new Credential(pair[0], pair[1], "google", true);
        }
        String account = googleAccounts.get(rand.nextInt(googleAccounts.size()));
        String password = googlePasswords.get(rand.nextInt(googlePasswords.size()));
        googleIndex++;
        return new Credential(account, password, "google", false);
    }
    
    /**
     * Get next Facebook credentials
     */
    public Credential getNextFacebookCredential() {
        if (facebookAccounts.isEmpty() || facebookPasswords.isEmpty()) {
            // Default fallback
            return new Credential("testuser@facebook.com", "demo123456", "facebook");
        }
        boolean usePair = !facebookValidPairs.isEmpty() &&
                rand.nextDouble() < configLoader.getCredentialsUseValidPairProbability();
        if (usePair) {
            String[] pair = facebookValidPairs.get(facebookPairIndex % facebookValidPairs.size());
            facebookPairIndex++;
            return new Credential(pair[0], pair[1], "facebook", true);
        }
        String account = facebookAccounts.get(rand.nextInt(facebookAccounts.size()));
        String password = facebookPasswords.get(rand.nextInt(facebookPasswords.size()));
        facebookIndex++;
        return new Credential(account, password, "facebook", false);
    }
    
    /**
     * Load file content to list
     */
    private void loadFileToList(String filePath, List<String> list) {
        try {
            Path path = Paths.get(filePath);
            if (Files.exists(path)) {
                List<String> lines = Files.readAllLines(path);
                for (String line : lines) {
                    line = line.trim();
                    if (!line.isEmpty() && !line.startsWith("#")) {
                        list.add(line);
                    }
                }
            }
        } catch (IOException e) {
            // File might not exist for this login method
        }
    }
    
    /**
     * Load CSV pairs (username,password) to list
     */
    private void loadPairsToList(String filePath, List<String[]> list) {
        try {
            Path path = Paths.get(filePath);
            if (Files.exists(path)) {
                List<String> lines = Files.readAllLines(path);
                for (String line : lines) {
                    String trimmed = line.trim();
                    if (trimmed.isEmpty() || trimmed.startsWith("#")) continue;
                    int firstComma = trimmed.indexOf(',');
                    if (firstComma <= 0 || firstComma == trimmed.length() - 1) continue; // invalid line
                    String user = trimmed.substring(0, firstComma).trim();
                    String pass = trimmed.substring(firstComma + 1).trim(); // keep commas inside password
                    if (!user.isEmpty() && !pass.isEmpty()) {
                        list.add(new String[]{user, pass});
                    }
                }
            }
        } catch (IOException e) {
            // Optional file, ignore if missing
        }
    }
    
    /**
     * Clear all loaded credentials
     */
    private void clearAll() {
        normalUsernames.clear();
        normalPasswords.clear();
        googleAccounts.clear();
        googlePasswords.clear();
        facebookAccounts.clear();
        facebookPasswords.clear();
        normalValidPairs.clear();
        googleValidPairs.clear();
        facebookValidPairs.clear();
        normalIndex = 0;
        googleIndex = 0;
        facebookIndex = 0;
        normalPairIndex = 0;
        googlePairIndex = 0;
        facebookPairIndex = 0;
    }
    
    /**
     * Credential data class
     */
    public static class Credential {
        public final String username;
        public final String password;
        public final String type;
        // Optional label: whether this (username,password) is a known-valid match.
        // When null, unknown/unlabeled; when true, expected login success; when false, intentionally mismatched.
        public final Boolean expectedSuccess;
        
        public Credential(String username, String password, String type) {
            this.username = username;
            this.password = password;
            this.type = type;
            this.expectedSuccess = null;
        }
        
        public Credential(String username, String password, String type, Boolean expectedSuccess) {
            this.username = username;
            this.password = password;
            this.type = type;
            this.expectedSuccess = expectedSuccess;
        }
        
        @Override
        public String toString() {
            return String.format("Credential[type=%s, user=%s]", type, username);
        }
    }
}
