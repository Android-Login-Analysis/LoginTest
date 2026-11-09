package bugdetectors;

import java.util.*;

/** FIX(v1): generic sink for findings observed directly by runtime checks (e.g. MFA prompt checks). */
public class ObservedFindingsDetector implements BugDetector {
    private final List<DetectedBug> found = new ArrayList<>();

    public void record(String category, String type, String description, String evidence) {
        BugCategory c;
        try { c = BugCategory.valueOf(category); } catch (Exception e) { c = BugCategory.INCORRECT_LOGIN_FLOW; }
        DetectedBug b = new DetectedBug(c, type, description);
        b.setSeverity(DetectedBug.Severity.MEDIUM);
        b.setEvidence(evidence);
        found.add(b);
        System.out.println("[FINDING] " + type + " - " + evidence);
    }

    @Override public String getName() { return "ObservedFindingsDetector"; }
    @Override public BugCategory getCategory() { return BugCategory.INCORRECT_LOGIN_FLOW; }
    @Override public List<DetectedBug> detectBugs() { return new ArrayList<>(found); }
    @Override public void reset() { found.clear(); }
    @Override public Map<String, Object> getStatistics() { Map<String, Object> m = new HashMap<>(); m.put("observed", found.size()); return m; }
}
