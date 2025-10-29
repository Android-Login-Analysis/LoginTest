import java.io.*;
import java.nio.file.*;
import java.util.*;
import org.json.*;


public class TaintAnalyzer {
    private FridaManager fridaManager;
    private String configPath;
    private JSONObject config;
    private String appPackage;
    private List<TaintViolation> violations;
    private Process fridaProcess;
    
    public TaintAnalyzer(FridaManager fridaManager) {
        this(fridaManager, "src/main/resources/taint_config.json");
    }
    
    public TaintAnalyzer(FridaManager fridaManager, String configPath) {
        this.fridaManager = fridaManager;
        this.configPath = configPath;
        this.violations = new ArrayList<>();
        loadConfig();
    }
    
    private void loadConfig() {
        try {
            String content = new String(Files.readAllBytes(Paths.get(configPath)));
            config = new JSONObject(content);
            System.out.println("[TaintAnalyzer] Configuration loaded from: " + configPath);
        } catch (Exception e) {
            System.err.println("[TaintAnalyzer] Failed to load config: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    public void startTracking(String appPackage) {
        this.appPackage = appPackage;
        System.out.println("[TaintAnalyzer] Taint tracking prepared for: " + appPackage);
        System.out.println("[TaintAnalyzer] Note: Taint analysis requires custom Frida integration");
    }
    
    public void markKnownTaint(String value, String type) {
        System.out.println("[TaintAnalyzer] Marking taint: " + type + " (length: " + value.length() + " chars)");
        try {
            // Call Frida RPC to mark taint via Python helper script
            ProcessBuilder pb = new ProcessBuilder(
                "python3",
                "scripts/mark_taint_rpc.py",
                appPackage,
                type,
                String.valueOf(value.length())
            );
            pb.redirectErrorStream(true);
            Process p = pb.start();
            
            // Wait briefly for RPC call to complete
            boolean finished = p.waitFor(2, java.util.concurrent.TimeUnit.SECONDS);
            if (finished && p.exitValue() == 0) {
                System.out.println("[TaintAnalyzer] Successfully marked taint: " + type);
            } else {
                System.err.println("[TaintAnalyzer] Failed to mark taint (timeout or error)");
            }
        } catch (Exception e) {
            System.err.println("[TaintAnalyzer] Failed to mark taint: " + e.getMessage());
        }
    }
    
    public TaintReport getTaintReport() {
        try {
            // Read taint report from file (saved periodically by frida_controller.py)
            // This avoids creating a second Frida session which could conflict
            String reportPath = "reports/taint/live_taint.json";
            File reportFile = new File(reportPath);
            
            if (!reportFile.exists()) {
                System.out.println("[TaintAnalyzer] No live taint report found yet at: " + reportPath);
                return new TaintReport();
            }
            
            // Check if file is recent (within last 60 seconds)
            long fileAge = System.currentTimeMillis() - reportFile.lastModified();
            if (fileAge > 60000) {
                System.out.println("[TaintAnalyzer] Warning: Taint report is stale (age: " + (fileAge/1000) + "s)");
            }
            
            // Read JSON content
            String jsonContent = new String(Files.readAllBytes(Paths.get(reportPath)));
            return parseTaintReport(jsonContent);
            
        } catch (Exception e) {
            System.err.println("[TaintAnalyzer] Failed to get taint report: " + e.getMessage());
        }
        return new TaintReport();
    }
    
    private TaintReport parseTaintReport(String json) {
        TaintReport report = new TaintReport();
        
        try {
            JSONObject data = new JSONObject(json);
            
            // 解析违规
            if (data.has("violations")) {
                JSONArray violationsArray = data.getJSONArray("violations");
                for (int i = 0; i < violationsArray.length(); i++) {
                    JSONObject v = violationsArray.getJSONObject(i);
                    TaintViolation violation = new TaintViolation(
                        v.getString("taintId"),
                        v.getString("sink"),
                        v.getString("severity"),
                        v.optJSONObject("details")
                    );
                    report.addViolation(violation);
                }
            }
            
            // 解析所有流
            if (data.has("flows")) {
                report.totalFlows = data.getJSONArray("flows").length();
            }
            
            // 解析污点数量
            if (data.has("taints")) {
                report.totalTaints = data.getJSONArray("taints").length();
            }
            
        } catch (Exception e) {
            System.err.println("[TaintAnalyzer] Failed to parse report: " + e.getMessage());
        }
        
        return report;
    }
    
    public List<TaintViolation> detectViolations() {
        TaintReport report = getTaintReport();
        return report.getViolations();
    }
    
    public String generateReadableReport() {
        TaintReport report = getTaintReport();
        StringBuilder sb = new StringBuilder();
        
        sb.append("\n");
        sb.append("=".repeat(80)).append("\n");
        sb.append("TAINT ANALYSIS REPORT\n");
        sb.append("=".repeat(80)).append("\n");
        sb.append("Application: ").append(appPackage).append("\n");
        sb.append("Total Taints: ").append(report.totalTaints).append("\n");
        sb.append("Total Flows: ").append(report.totalFlows).append("\n");
        sb.append("Violations: ").append(report.getViolations().size()).append("\n");
        sb.append("=".repeat(80)).append("\n");
        
        if (!report.getViolations().isEmpty()) {
            sb.append("\nSECURITY VIOLATIONS:\n");
            sb.append("-".repeat(80)).append("\n");
            
            int idx = 1;
            for (TaintViolation v : report.getViolations()) {
                sb.append(String.format("\nViolation #%d\n", idx++));
                sb.append("  Taint ID: ").append(v.getTaintId()).append("\n");
                sb.append("  Severity: ").append(v.getSeverity()).append("\n");
                sb.append("  Sink: ").append(v.getSink()).append("\n");
                if (v.getDetails() != null && v.getDetails().has("key")) {
                    try {
                        sb.append("  Key: ").append(v.getDetails().getString("key")).append("\n");
                    } catch (Exception e) {}
                }
                sb.append("-".repeat(80)).append("\n");
            }
        }
        
        return sb.toString();
    }
    
    public void saveReport(String outputPath) {
        try (PrintWriter writer = new PrintWriter(new FileWriter(outputPath))) {
            writer.println(generateReadableReport());
            System.out.println("[TaintAnalyzer] Report saved to: " + outputPath);
        } catch (IOException e) {
            System.err.println("[TaintAnalyzer] Failed to save report: " + e.getMessage());
        }
    }
    
    public void stopTracking() {
        System.out.println("[TaintAnalyzer] Stopping taint tracking");
    }
    
    public static class TaintReport {
        private List<TaintViolation> violations;
        private int totalTaints;
        private int totalFlows;
        
        public TaintReport() {
            this.violations = new ArrayList<>();
        }
        
        public void addViolation(TaintViolation violation) {
            this.violations.add(violation);
        }
        
        public List<TaintViolation> getViolations() {
            return violations;
        }
        
        public int getTotalTaints() {
            return totalTaints;
        }
        
        public int getTotalFlows() {
            return totalFlows;
        }
    }
    
    public static class TaintViolation {
        private String taintId;
        private String sink;
        private String severity;
        private JSONObject details;
        
        public TaintViolation(String taintId, String sink, String severity, JSONObject details) {
            this.taintId = taintId;
            this.sink = sink;
            this.severity = severity;
            this.details = details;
        }
        
        public String getTaintId() {
            return taintId;
        }
        
        public String getSink() {
            return sink;
        }
        
        public String getSeverity() {
            return severity;
        }
        
        public JSONObject getDetails() {
            return details;
        }
        
        @Override
        public String toString() {
            return String.format("TaintViolation[%s -> %s, severity=%s]", 
                               taintId, sink, severity);
        }
    }
}
