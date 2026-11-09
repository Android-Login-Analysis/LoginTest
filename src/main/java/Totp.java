import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.nio.ByteBuffer;

/** RFC 6238 TOTP (SHA-1, 6 digits, 30 s), used to complete authenticator-app MFA during tests. */
public final class Totp {
    private Totp() {}

    static byte[] base32Decode(String s) {
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";
        s = s.replace(" ", "").replace("=", "").toUpperCase();
        ByteBuffer out = ByteBuffer.allocate(s.length() * 5 / 8 + 1);
        int buffer = 0, bits = 0;
        for (char c : s.toCharArray()) {
            int v = alphabet.indexOf(c);
            if (v < 0) throw new IllegalArgumentException("invalid base32");
            buffer = (buffer << 5) | v;
            bits += 5;
            if (bits >= 8) {
                out.put((byte) ((buffer >> (bits - 8)) & 0xff));
                bits -= 8;
            }
        }
        byte[] r = new byte[out.position()];
        out.flip();
        out.get(r);
        return r;
    }

    public static String code(String base32Secret, long epochMillis) {
        try {
            long counter = epochMillis / 1000 / 30;
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(new SecretKeySpec(base32Decode(base32Secret), "HmacSHA1"));
            byte[] h = mac.doFinal(ByteBuffer.allocate(8).putLong(counter).array());
            int o = h[h.length - 1] & 0xf;
            int bin = ((h[o] & 0x7f) << 24) | ((h[o + 1] & 0xff) << 16) | ((h[o + 2] & 0xff) << 8) | (h[o + 3] & 0xff);
            return String.format("%06d", bin % 1_000_000);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /** Current code, waiting for the next window if the current one expires within 4 s. */
    public static String freshCode(String base32Secret) {
        long now = System.currentTimeMillis();
        long remaining = 30_000 - (now % 30_000);
        if (remaining < 4_000) {
            try { Thread.sleep(remaining + 200); } catch (InterruptedException ignored) { }
            now = System.currentTimeMillis();
        }
        return code(base32Secret, now);
    }

    public static void main(String[] a) {
        System.out.println(code(a[0], System.currentTimeMillis()));
    }
}
