package bugdetectors;

import java.util.*;
import java.io.*;

/**
 * Central manager for all bug detectors
 */
public class BugDetectionManager {
    
    private List<BugDetector> detectors = new ArrayList<>();
    private List<DetectedBug> allBugs = new ArrayList<>();
    private String reportDirectory;
    
    // Cumulative bugs across all rounds for deduplication
    private List<DetectedBug> cumulativeBugs = new ArrayList<>();
    private int totalRounds = 0;
    
    // Individual detectors (symptom-based)
    private ErrorMessageMismatchDetector errorMismatchDetector;
    private LifecycleDataLossDetector lifecycleDetector;
    private CrashDetector crashDetector;
    private LoginTimeoutDetector timeoutDetector;
    private NavigationFlowDetector navigationDetector;
    private StorageLeakDetector storageDetector;
    
    public BugDetectionManager(String reportDirectory) {
        this.reportDirectory = reportDirectory;
        initializeDetectors();
    }
    
    /**
     * Initialize all detectors
     */
    private void initializeDetectors() {
        // Symptom 7: Inaccurate Error Message (39 issues)
        errorMismatchDetector = new ErrorMessageMismatchDetector();
        detectors.add(errorMismatchDetector);
        
        // Symptom (partial): Data Loss on Rotation
        lifecycleDetector = new LifecycleDataLossDetector();
        detectors.add(lifecycleDetector);
        
        // Symptom 1: Crash (85 issues)
        crashDetector = new CrashDetector();
        detectors.add(crashDetector);
        
        // Symptom 2: Login Timeout (57 issues)
        timeoutDetector = new LoginTimeoutDetector();
        detectors.add(timeoutDetector);
        
        // Symptom 3: Incorrect Navigation (51 issues)
        navigationDetector = new NavigationFlowDetector();
        detectors.add(navigationDetector);

        // FIX(v1): plaintext credential/token storage after login
        storageDetector = new StorageLeakDetector();
        detectors.add(storageDetector);
        
        System.out.println("[BUG_DETECTION] Initialized " + detectors.size() + " symptom-based bug detectors");
        System.out.println("[BUG_DETECTION]   1. ErrorMessageMismatchDetector (Symptom 7)");
        System.out.println("[BUG_DETECTION]   2. LifecycleDataLossDetector (Lifecycle)");
        System.out.println("[BUG_DETECTION]   3. CrashDetector (Symptom 1)");
        System.out.println("[BUG_DETECTION]   4. LoginTimeoutDetector (Symptom 2)");
        System.out.println("[BUG_DETECTION]   5. NavigationFlowDetector (Symptom 3)");
    }
    
    /**
     * Get error message mismatch detector
     */
    public ErrorMessageMismatchDetector getErrorMismatchDetector() {
        return errorMismatchDetector;
    }
    
    /**
     * Get lifecycle data loss detector
     */
    public StorageLeakDetector getStorageDetector() {
        return storageDetector;
    }

    public LifecycleDataLossDetector getLifecycleDetector() {
        return lifecycleDetector;
    }
    
    /**
     * Get crash detector
     */
    public CrashDetector getCrashDetector() {
        return crashDetector;
    }
    
    /**
     * Get login timeout detector
     */
    public LoginTimeoutDetector getTimeoutDetector() {
        return timeoutDetector;
    }
    
    /**
     * Get navigation flow detector
     */
    public NavigationFlowDetector getNavigationDetector() {
        return navigationDetector;
    }
    
    
    /**
     * Run all detectors and collect bugs
     * IMPORTANT: Resets detectors AFTER detection to avoid data loss
     */
    public List<DetectedBug> detectAllBugs() {
        allBugs.clear();
        
        System.out.println("\n[BUG_DETECTION] Running all bug detectors...");
        
        for (BugDetector detector : detectors) {
            System.out.println("[BUG_DETECTION] Running: " + detector.getName());
            List<DetectedBug> bugs = detector.detectBugs();
            
            if (!bugs.isEmpty()) {
                System.out.println("[BUG_DETECTION] " + detector.getName() + " found " + bugs.size() + " bug(s)");
                allBugs.addAll(bugs);
            }
        }
        
        System.out.println("[BUG_DETECTION] Total bugs detected: " + allBugs.size());
        
        // CRITICAL: Reset AFTER detection, not before!
        // This ensures data from current round is available for analysis
        for (BugDetector detector : detectors) {
            detector.reset();
        }
        System.out.println("[BUG_DETECTION] All detectors reset after detection");
        
        return allBugs;
    }
    
    /**
     * Generate bug detection report with deduplication
     */
    public void generateReport(int roundNumber) {
        totalRounds++;
        
        // Add current bugs to cumulative list
        cumulativeBugs.addAll(allBugs);
        
        if (allBugs.isEmpty()) {
            System.out.println("[BUG_DETECTION] No bugs detected in round " + roundNumber);
            // Still generate cumulative summary if we have bugs from previous rounds
            if (!cumulativeBugs.isEmpty()) {
                generateCumulativeSummary();
            }
            return;
        }
        
        try {
            String timestamp = new java.text.SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
            String reportPath = reportDirectory + "/bugs_round_" + roundNumber + "_" + timestamp + ".txt";
            
            File reportDir = new File(reportDirectory);
            if (!reportDir.exists()) {
                reportDir.mkdirs();
            }
            
            try (PrintWriter writer = new PrintWriter(new FileWriter(reportPath))) {
                writer.println("================================================================================");
                writer.println("                    BUG DETECTION REPORT - Round " + roundNumber);
                writer.println("================================================================================");
                writer.println("Timestamp: " + new Date());
                writer.println("Total Bugs Detected: " + allBugs.size());
                writer.println();
                
                // Group by category
                Map<BugCategory, List<DetectedBug>> bugsByCategory = new HashMap<>();
                for (DetectedBug bug : allBugs) {
                    bugsByCategory.computeIfAbsent(bug.getCategory(), k -> new ArrayList<>()).add(bug);
                }
                
                // Print by category
                for (BugCategory category : BugCategory.values()) {
                    List<DetectedBug> bugsInCategory = bugsByCategory.get(category);
                    if (bugsInCategory != null && !bugsInCategory.isEmpty()) {
                        writer.println("\n" + "=".repeat(80));
                        writer.println("Category: " + category);
                        writer.println("Count: " + bugsInCategory.size());
                        writer.println("=".repeat(80));
                        
                        for (DetectedBug bug : bugsInCategory) {
                            writer.println(bug.toString());
                        }
                    }
                }
                
                // Statistics section
                writer.println("\n" + "=".repeat(80));
                writer.println("STATISTICS");
                writer.println("=".repeat(80));
                
                writer.println("\nError Message Mismatch Detector:");
                Map<String, Object> errorStats = errorMismatchDetector.getStatistics();
                for (Map.Entry<String, Object> entry : errorStats.entrySet()) {
                    writer.println("  " + entry.getKey() + ": " + entry.getValue());
                }
                
                writer.println("\nLifecycle Data Loss Detector:");
                Map<String, Object> lifecycleStats = lifecycleDetector.getStatistics();
                for (Map.Entry<String, Object> entry : lifecycleStats.entrySet()) {
                    writer.println("  " + entry.getKey() + ": " + entry.getValue());
                }
                
                writer.println("\nCrash Detector:");
                Map<String, Object> crashStats = crashDetector.getStatistics();
                for (Map.Entry<String, Object> entry : crashStats.entrySet()) {
                    writer.println("  " + entry.getKey() + ": " + entry.getValue());
                }
                
                writer.println("\nLogin Timeout Detector:");
                Map<String, Object> timeoutStats = timeoutDetector.getStatistics();
                for (Map.Entry<String, Object> entry : timeoutStats.entrySet()) {
                    writer.println("  " + entry.getKey() + ": " + entry.getValue());
                }
                
                writer.println("\nNavigation Flow Detector:");
                Map<String, Object> navStats = navigationDetector.getStatistics();
                for (Map.Entry<String, Object> entry : navStats.entrySet()) {
                    writer.println("  " + entry.getKey() + ": " + entry.getValue());
                }
                
                writer.println("\n" + "=".repeat(80));
                writer.println("END OF REPORT");
                writer.println("=".repeat(80));
            }
            
            System.out.println("[BUG_DETECTION] Report saved to: " + reportPath);
            
            // Also print summary to console
            printSummaryToConsole();
            
            // Generate cumulative deduplication summary
            generateCumulativeSummary();
            
        } catch (IOException e) {
            System.err.println("[BUG_DETECTION] Failed to generate report: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    /**
     * Print summary to console
     */
    private void printSummaryToConsole() {
        System.out.println("\n" + "=".repeat(80));
        System.out.println("BUG DETECTION SUMMARY");
        System.out.println("=".repeat(80));
        System.out.println("Total Bugs: " + allBugs.size());
        
        // Count by severity
        Map<DetectedBug.Severity, Integer> bySeverity = new HashMap<>();
        for (DetectedBug bug : allBugs) {
            bySeverity.put(bug.getSeverity(), bySeverity.getOrDefault(bug.getSeverity(), 0) + 1);
        }
        
        System.out.println("\nBy Severity:");
        for (DetectedBug.Severity severity : DetectedBug.Severity.values()) {
            int count = bySeverity.getOrDefault(severity, 0);
            if (count > 0) {
                System.out.println("  " + severity + ": " + count);
            }
        }
        
        // Count by category
        Map<BugCategory, Integer> byCategory = new HashMap<>();
        for (DetectedBug bug : allBugs) {
            byCategory.put(bug.getCategory(), byCategory.getOrDefault(bug.getCategory(), 0) + 1);
        }
        
        System.out.println("\nBy Category:");
        for (BugCategory category : BugCategory.values()) {
            int count = byCategory.getOrDefault(category, 0);
            if (count > 0) {
                System.out.println("  " + category + ": " + count);
            }
        }
        
        System.out.println("=".repeat(80) + "\n");
    }
    
    /**
     * Reset all detectors for new round
     */
    public void reset() {
        for (BugDetector detector : detectors) {
            detector.reset();
        }
        allBugs.clear();
        System.out.println("[BUG_DETECTION] All detectors reset");
    }
    
    /**
     * Get all detected bugs
     */
    public List<DetectedBug> getAllBugs() {
        return new ArrayList<>(allBugs);
    }
    
    /**
     * Check if any bugs were detected
     */
    public boolean hasBugs() {
        return !allBugs.isEmpty();
    }
    
    /**
     * Generate cumulative deduplication summary across all rounds
     */
    public void generateCumulativeSummary() {
        if (cumulativeBugs.isEmpty()) {
            return;
        }
        
        try {
            String timestamp = new java.text.SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
            String summaryPath = reportDirectory + "/DEDUPLICATED_SUMMARY_" + timestamp + ".txt";
            
            File reportDir = new File(reportDirectory);
            if (!reportDir.exists()) {
                reportDir.mkdirs();
            }
            
            try (PrintWriter writer = new PrintWriter(new FileWriter(summaryPath))) {
                writer.println("=".repeat(80));
                writer.println("COMPREHENSIVE BUG DETECTION SUMMARY (DEDUPLICATED)");
                writer.println("=".repeat(80));
                writer.println("Generated: " + new Date());
                writer.println("Total Rounds Analyzed: " + totalRounds);
                writer.println("Total Bugs Found: " + cumulativeBugs.size());
                writer.println("=".repeat(80));
                writer.println();
                
                // Use BugDeduplicator to deduplicate
                List<BugDeduplicator.DeduplicatedBug> deduplicated = 
                    BugDeduplicator.getDeduplicatedSorted(cumulativeBugs);
                
                writer.println("Unique Bug Types: " + deduplicated.size());
                writer.println("Deduplication Rate: " + 
                    String.format("%.1f%%", 
                        100.0 * (cumulativeBugs.size() - deduplicated.size()) / cumulativeBugs.size()));
                writer.println();
                
                // Group by category
                Map<BugCategory, List<BugDeduplicator.DeduplicatedBug>> byCategory = new LinkedHashMap<>();
                for (BugDeduplicator.DeduplicatedBug bug : deduplicated) {
                    BugCategory category = bug.getRepresentative().getCategory();
                    byCategory.computeIfAbsent(category, k -> new ArrayList<>()).add(bug);
                }
                
                writer.println("=".repeat(80));
                writer.println("BUGS BY CATEGORY (DEDUPLICATED)");
                writer.println("=".repeat(80));
                writer.println();
                
                for (Map.Entry<BugCategory, List<BugDeduplicator.DeduplicatedBug>> entry : byCategory.entrySet()) {
                    List<BugDeduplicator.DeduplicatedBug> bugs = entry.getValue();
                    int totalOccurrences = bugs.stream().mapToInt(b -> b.getCount()).sum();
                    
                    writer.println(entry.getKey());
                    writer.println("-".repeat(80));
                    writer.println("Unique Bug Types: " + bugs.size());
                    writer.println("Total Occurrences: " + totalOccurrences);
                    writer.println();
                    
                    for (BugDeduplicator.DeduplicatedBug bug : bugs) {
                        DetectedBug rep = bug.getRepresentative();
                        writer.println("  [" + bug.getCount() + "x] " + rep.getBugType() + " - " + rep.getSeverity());
                        writer.println("       " + rep.getDescription().substring(0, 
                            Math.min(120, rep.getDescription().length())) + "...");
                        
                        // Print unique activities and API calls
                        if (!bug.getUniqueActivities().isEmpty()) {
                            writer.println("       Activities: " + 
                                String.join(", ", bug.getUniqueActivities()));
                        }
                        if (!bug.getUniqueApiCalls().isEmpty()) {
                            writer.println("       API Calls: " + 
                                String.join(", ", bug.getUniqueApiCalls()));
                        }
                        writer.println();
                    }
                    writer.println();
                }
                
                // Top 10 bugs by frequency
                writer.println("=".repeat(80));
                writer.println("TOP 10 BUGS (BY FREQUENCY)");
                writer.println("=".repeat(80));
                writer.println();
                
                for (int i = 0; i < Math.min(10, deduplicated.size()); i++) {
                    BugDeduplicator.DeduplicatedBug bug = deduplicated.get(i);
                    DetectedBug rep = bug.getRepresentative();
                    
                    writer.println((i + 1) + ". " + rep.getBugType() + " (" + bug.getCount() + " occurrences)");
                    writer.println("   Category: " + rep.getCategory() + " | Severity: " + rep.getSeverity());
                    writer.println("   " + rep.getDescription());
                    
                    if (rep.getLocation() != null && !rep.getLocation().isEmpty()) {
                        writer.println("   Location: " + rep.getLocation().replace("\n", " "));
                    }
                    writer.println();
                }
                
                // Statistics
                writer.println("=".repeat(80));
                writer.println("STATISTICS");
                writer.println("=".repeat(80));
                writer.println();
                
                Map<DetectedBug.Severity, Integer> bySeverity = new HashMap<>();
                for (DetectedBug bug : cumulativeBugs) {
                    bySeverity.put(bug.getSeverity(), 
                        bySeverity.getOrDefault(bug.getSeverity(), 0) + 1);
                }
                
                writer.println("By Severity (Total Occurrences):");
                for (DetectedBug.Severity severity : DetectedBug.Severity.values()) {
                    int count = bySeverity.getOrDefault(severity, 0);
                    if (count > 0) {
                        writer.println("  " + severity + ": " + count + " (" + 
                            String.format("%.1f%%", 100.0 * count / cumulativeBugs.size()) + ")");
                    }
                }
                
                writer.println();
                writer.println("By Category (Total Occurrences):");
                Map<BugCategory, Integer> catCounts = new HashMap<>();
                for (DetectedBug bug : cumulativeBugs) {
                    catCounts.put(bug.getCategory(), 
                        catCounts.getOrDefault(bug.getCategory(), 0) + 1);
                }
                for (BugCategory category : BugCategory.values()) {
                    int count = catCounts.getOrDefault(category, 0);
                    if (count > 0) {
                        writer.println("  " + category + ": " + count + " (" + 
                            String.format("%.1f%%", 100.0 * count / cumulativeBugs.size()) + ")");
                    }
                }
                
                writer.println();
                writer.println("=".repeat(80));
                writer.println("END OF DEDUPLICATED SUMMARY");
                writer.println("=".repeat(80));
            }
            
            System.out.println("[BUG_DETECTION] Deduplicated summary saved to: " + summaryPath);
            
            // Print deduplication summary to console
            System.out.println();
            System.out.println(BugDeduplicator.generateSummary(cumulativeBugs));
            
        } catch (IOException e) {
            System.err.println("[BUG_DETECTION] Failed to generate cumulative summary: " + e.getMessage());
        }
    }
    
    /**
     * Get cumulative bugs count
     */
    public int getCumulativeBugsCount() {
        return cumulativeBugs.size();
    }
    
    /**
     * Get total rounds processed
     */
    public int getTotalRounds() {
        return totalRounds;
    }
}
