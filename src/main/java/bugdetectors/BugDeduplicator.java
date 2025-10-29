package bugdetectors;

import java.util.*;
import java.util.stream.Collectors;

/**
 * Smart Bug Deduplicator
 * 
 * Deduplicates bugs based on multiple criteria:
 * 1. Category + Type (basic)
 * 2. Location (activity, function, line)
 * 3. API call (if applicable)
 * 4. Trigger condition
 * 
 * Priority: Precise deduplication over aggressive deduplication
 */
public class BugDeduplicator {
    
    /**
     * Bug signature for deduplication
     */
    private static class BugSignature {
        String category;
        String type;
        String activity;
        String apiCall;
        String location;
        
        BugSignature(DetectedBug bug) {
            this.category = bug.getCategory() != null ? bug.getCategory().toString() : "";
            this.type = bug.getBugType() != null ? bug.getBugType() : "";
            this.activity = bug.getActivityName() != null ? bug.getActivityName() : "";
            this.apiCall = bug.getApiCall() != null ? bug.getApiCall() : "";
            this.location = bug.getLocation() != null ? bug.getLocation() : "";
        }
        
        /**
         * Generate unique key for deduplication
         * Uses category, type, activity, and apiCall
         */
        String getKey() {
            StringBuilder key = new StringBuilder();
            key.append(category).append("|");
            key.append(type).append("|");
            
            // Add activity if available for better precision
            if (!activity.isEmpty()) {
                key.append(activity).append("|");
            }
            
            // Add API call if available for network-related bugs
            if (!apiCall.isEmpty()) {
                key.append(apiCall).append("|");
            }
            
            // Add location hash for further precision
            if (!location.isEmpty()) {
                // Use first 50 chars of location to avoid minor differences
                String locationKey = location.length() > 50 ? 
                    location.substring(0, 50) : location;
                key.append(locationKey.hashCode());
            }
            
            return key.toString();
        }
        
        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof BugSignature)) return false;
            BugSignature that = (BugSignature) o;
            return getKey().equals(that.getKey());
        }
        
        @Override
        public int hashCode() {
            return getKey().hashCode();
        }
    }
    
    /**
     * Deduplicated bug entry with occurrence count
     */
    public static class DeduplicatedBug {
        private DetectedBug representative;
        private int count;
        private List<Long> timestamps;
        private Set<String> uniqueActivities;
        private Set<String> uniqueApiCalls;
        
        DeduplicatedBug(DetectedBug bug) {
            this.representative = bug;
            this.count = 1;
            this.timestamps = new ArrayList<>();
            this.uniqueActivities = new HashSet<>();
            this.uniqueApiCalls = new HashSet<>();
            
            if (bug.getTimestamp() != null) {
                timestamps.add(bug.getTimestamp());
            }
            if (bug.getActivityName() != null) {
                uniqueActivities.add(bug.getActivityName());
            }
            if (bug.getApiCall() != null) {
                uniqueApiCalls.add(bug.getApiCall());
            }
        }
        
        void addOccurrence(DetectedBug bug) {
            this.count++;
            if (bug.getTimestamp() != null) {
                timestamps.add(bug.getTimestamp());
            }
            if (bug.getActivityName() != null) {
                uniqueActivities.add(bug.getActivityName());
            }
            if (bug.getApiCall() != null) {
                uniqueApiCalls.add(bug.getApiCall());
            }
        }
        
        public DetectedBug getRepresentative() {
            return representative;
        }
        
        public int getCount() {
            return count;
        }
        
        public List<Long> getTimestamps() {
            return timestamps;
        }
        
        public Set<String> getUniqueActivities() {
            return uniqueActivities;
        }
        
        public Set<String> getUniqueApiCalls() {
            return uniqueApiCalls;
        }
        
        /**
         * Get formatted occurrence info
         */
        public String getOccurrenceInfo() {
            StringBuilder info = new StringBuilder();
            info.append("Occurrences: ").append(count).append("\n");
            
            if (!uniqueActivities.isEmpty()) {
                info.append("Activities: ")
                    .append(String.join(", ", uniqueActivities))
                    .append("\n");
            }
            
            if (!uniqueApiCalls.isEmpty()) {
                info.append("API Calls: ")
                    .append(String.join(", ", uniqueApiCalls))
                    .append("\n");
            }
            
            if (!timestamps.isEmpty()) {
                info.append("First seen: ")
                    .append(new Date(timestamps.get(0)).toString())
                    .append("\n");
                if (timestamps.size() > 1) {
                    info.append("Last seen: ")
                        .append(new Date(timestamps.get(timestamps.size()-1)).toString())
                        .append("\n");
                }
            }
            
            return info.toString();
        }
    }
    
    /**
     * Deduplicate a list of bugs
     * 
     * @param bugs List of bugs to deduplicate
     * @return Map of bug signature to deduplicated bug
     */
    public static Map<String, DeduplicatedBug> deduplicate(List<DetectedBug> bugs) {
        Map<String, DeduplicatedBug> deduplicated = new LinkedHashMap<>();
        
        for (DetectedBug bug : bugs) {
            BugSignature signature = new BugSignature(bug);
            String key = signature.getKey();
            
            if (deduplicated.containsKey(key)) {
                deduplicated.get(key).addOccurrence(bug);
            } else {
                deduplicated.put(key, new DeduplicatedBug(bug));
            }
        }
        
        return deduplicated;
    }
    
    /**
     * Get deduplicated bugs sorted by occurrence count (descending)
     */
    public static List<DeduplicatedBug> getDeduplicatedSorted(List<DetectedBug> bugs) {
        Map<String, DeduplicatedBug> deduplicated = deduplicate(bugs);
        
        return deduplicated.values().stream()
            .sorted((a, b) -> Integer.compare(b.getCount(), a.getCount()))
            .collect(Collectors.toList());
    }
    
    /**
     * Generate deduplication summary report
     */
    public static String generateSummary(List<DetectedBug> bugs) {
        if (bugs.isEmpty()) {
            return "No bugs to deduplicate\n";
        }
        
        List<DeduplicatedBug> deduplicated = getDeduplicatedSorted(bugs);
        
        StringBuilder summary = new StringBuilder();
        summary.append("\n========================================\n");
        summary.append("BUG DEDUPLICATION SUMMARY\n");
        summary.append("========================================\n");
        summary.append("Total Bugs: ").append(bugs.size()).append("\n");
        summary.append("Unique Bug Types: ").append(deduplicated.size()).append("\n");
        summary.append("Deduplication Rate: ")
               .append(String.format("%.1f%%", 
                   100.0 * (bugs.size() - deduplicated.size()) / bugs.size()))
               .append("\n");
        summary.append("========================================\n\n");
        
        // Group by category
        Map<String, List<DeduplicatedBug>> byCategory = new LinkedHashMap<>();
        for (DeduplicatedBug bug : deduplicated) {
            String category = bug.getRepresentative().getCategory().toString();
            byCategory.computeIfAbsent(category, k -> new ArrayList<>()).add(bug);
        }
        
        // Print by category
        for (Map.Entry<String, List<DeduplicatedBug>> entry : byCategory.entrySet()) {
            summary.append("Category: ").append(entry.getKey()).append("\n");
            summary.append("----------------------------------------\n");
            
            for (DeduplicatedBug bug : entry.getValue()) {
                DetectedBug rep = bug.getRepresentative();
                summary.append("\n[").append(bug.getCount()).append("x] ")
                       .append(rep.getBugType()).append("\n");
                summary.append("Severity: ").append(rep.getSeverity()).append("\n");
                summary.append(bug.getOccurrenceInfo());
                summary.append("Description: ")
                       .append(rep.getDescription().substring(0, 
                           Math.min(100, rep.getDescription().length())))
                       .append("...\n");
            }
            summary.append("\n");
        }
        
        return summary.toString();
    }
}
