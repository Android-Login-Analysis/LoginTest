package bugdetectors;

import java.util.concurrent.TimeUnit;

/** Runs an external command with a hard timeout; output is read on a separate thread so it can never block. */
public final class BoundedExec {
    private BoundedExec() {}

    public static String run(long timeoutSec, String... cmd) {
        try {
            Process p = new ProcessBuilder(cmd).redirectErrorStream(true).start();
            java.io.ByteArrayOutputStream buf = new java.io.ByteArrayOutputStream();
            Thread reader = new Thread(() -> {
                try { p.getInputStream().transferTo(buf); } catch (Exception ignored) { }
            });
            reader.setDaemon(true);
            reader.start();
            if (!p.waitFor(timeoutSec, TimeUnit.SECONDS)) p.destroyForcibly();
            reader.join(2000);
            return buf.toString();
        } catch (Exception e) {
            return "";
        }
    }
}
