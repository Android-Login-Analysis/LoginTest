import java.io.File;
import java.nio.file.Files;
import java.util.List;
import java.util.Map;

/**
 * R2-9 "GUI agent + LIFTDroid": a GUI agent (AppAgent task executor, via LIFT_AGENT_CMD) replaces LIFTDroid's own
 * navigation and credential entry; LIFTDroid keeps the per-round network conditions and all oracles.
 *
 * Each round uses two agent episodes:
 *   1. navigate(): reach the credential form (on a normal network), without typing credentials;
 *   2. login():    after LIFTDroid applied the round's condition, fill the form and tap the submit button once.
 * The submit time for the timing oracles is the agent's last tap before it finished.
 * Every episode appends one line to logs/agent_episodes.csv (actions, LLM requests, prompt/completion tokens).
 */
public class AgentNavigator {
    public static boolean enabled() { return "agent".equalsIgnoreCase(System.getenv("LIFT_NAV")); }

    private final String serverAddress;
    private long lastSubmitTime = -1;
    private boolean lastFinished = false;

    public AgentNavigator(String serverAddress) { this.serverAddress = serverAddress; }

    public long getLastSubmitTime() { return lastSubmitTime; }
    public boolean lastFinished() { return lastFinished; }

    public boolean navigate(String round) {
        String task = "Open the screen of this app where a user signs in with a username (or email) and password."
            + (serverAddress != null ? " If the app first asks for a server or instance address, enter " + serverAddress + " and continue." : "")
            + " Do not type a username or password. As soon as the username and password fields are visible, finish.";
        return run("navigate", round, task, intEnv("LIFT_AGENT_NAV_ROUNDS", 15));
    }

    public boolean login(String round, String username, String password) {
        String task = "Sign in on the current screen with username " + username + " and password " + password + "."
            + (serverAddress != null ? " If the screen also asks for a server or instance address, enter " + serverAddress + "." : "")
            + " Fill in the fields, tap the button that submits the sign-in exactly once, and then finish immediately"
            + " without waiting for the result.";
        boolean ok = run("login", round, task, intEnv("LIFT_AGENT_LOGIN_ROUNDS", 10));
        try {   // the agent's console output may echo the task: never keep the password in logs
            File out = new File("logs/agent/last_login.out");
            if (out.exists() && !password.isEmpty())
                Files.writeString(out.toPath(), Files.readString(out.toPath()).replace(password, "<password>"));
        } catch (Exception ignored) { }
        return ok;
    }

    private static int intEnv(String k, int d) {
        try { return Integer.parseInt(System.getenv(k)); } catch (Exception e) { return d; }
    }

    private boolean run(String phase, String round, String task, int maxRounds) {
        lastSubmitTime = -1; lastFinished = false;
        String cmd = System.getenv().getOrDefault("LIFT_AGENT_CMD", System.getProperty("user.home") + "/baselines/agent_step.sh");
        try {
            File dir = new File("logs/agent"); dir.mkdirs();
            File actions = File.createTempFile("actions_", ".jsonl", dir);
            File usage = File.createTempFile("usage_", ".csv", dir);
            ProcessBuilder pb = new ProcessBuilder(cmd);
            Map<String, String> env = pb.environment();
            env.put("AGENT_TASK", task);
            env.put("AGENT_MAX_ROUNDS", String.valueOf(maxRounds));
            env.put("AGENT_ACTION_LOG", actions.getPath());
            env.put("AGENT_USAGE_LOG", usage.getPath());
            pb.redirectErrorStream(true);
            pb.redirectOutput(new File(dir, "last_" + phase + ".out"));
            long t0 = System.currentTimeMillis();
            Process p = pb.start();
            boolean done = p.waitFor(intEnv("LIFT_AGENT_TIMEOUT_S", 900), java.util.concurrent.TimeUnit.SECONDS);
            if (!done) { p.destroyForcibly(); System.out.println("[AGENT] " + phase + " episode timed out"); }
            long secs = (System.currentTimeMillis() - t0) / 1000;

            int nActions = 0; long lastTap = -1;
            for (String l : Files.readAllLines(actions.toPath())) {
                if (l.contains("\"act\": \"FINISH\"")) { lastFinished = true; continue; }
                nActions++;
                if (l.contains("\"act\": \"tap\"")) {
                    java.util.regex.Matcher m = java.util.regex.Pattern.compile("\"t\": (\\d+)").matcher(l);
                    if (m.find()) lastTap = Long.parseLong(m.group(1));
                }
            }
            int requests = 0; long promptTok = 0, completionTok = 0;
            for (String l : Files.readAllLines(usage.toPath())) {
                String[] f = l.split(",");
                if (f.length < 3) continue;
                requests++; promptTok += Long.parseLong(f[1].trim()); completionTok += Long.parseLong(f[2].trim());
            }
            if ("login".equals(phase)) lastSubmitTime = lastTap;
            File csv = new File("logs/agent_episodes.csv");
            boolean header = !csv.exists();
            try (java.io.FileWriter w = new java.io.FileWriter(csv, true)) {
                if (header) w.write("time,round,phase,finished,actions,requests,prompt_tokens,completion_tokens,seconds\n");
                w.write(System.currentTimeMillis() + "," + round + "," + phase + "," + lastFinished + "," + nActions + ","
                    + requests + "," + promptTok + "," + completionTok + "," + secs + "\n");
            }
            System.out.println("[AGENT] " + phase + ": finished=" + lastFinished + ", actions=" + nActions + ", requests="
                + requests + ", tokens=" + promptTok + "+" + completionTok + ", " + secs + " s");
            return lastFinished;
        } catch (Exception e) {
            System.out.println("[AGENT] " + phase + " episode failed: " + e.getMessage());
            return false;
        }
    }
}
