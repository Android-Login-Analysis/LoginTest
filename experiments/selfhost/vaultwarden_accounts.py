"""Create Vaultwarden test accounts with the Bitwarden client-side crypto, and write the pools.

Runs on the test server (needs python3 'cryptography'); prints no secrets.
Accounts (master password = LIFT_SVC_PASSWORD):
  lift.bw@liftdroid.test      Bitwarden #6376, #6576
  john.lift@liftdroid.test    Bitwarden #3410: the pool types the e-mail with upper-case letters (the trigger)
  lift.totp@liftdroid.test    Bitwarden #3796: authenticator (TOTP) two-step login, secret in totp_secrets.csv
"""
import base64, hashlib, hmac, json, os, socket, ssl, struct, time, urllib.parse, urllib.request, uuid
from cryptography.hazmat.primitives import padding, serialization
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

HOME = os.path.expanduser("~")
env = dict(l.strip().split("=", 1) for l in open(f"{HOME}/selfhost/.env") if "=" in l)
PW = env["LIFT_SVC_PASSWORD"]
CTX = ssl.create_default_context(cafile=f"{HOME}/selfhost/certs/ca.crt")
BASE = "https://vaultwarden.liftdroid.test"
POOLS = f"{HOME}/LoginTest/pools"
ITER = 600000
_gai = socket.getaddrinfo
socket.getaddrinfo = lambda host, *a, **k: _gai("10.99.0.124" if str(host).endswith(".liftdroid.test") else host, *a, **k)
b64 = lambda b: base64.b64encode(b).decode()


def req(path, data=None, form=False, headers=None, method=None):
    h = dict(headers or {})
    body = None
    if data is not None:
        if form: body = urllib.parse.urlencode(data).encode(); h["Content-Type"] = "application/x-www-form-urlencoded"
        else: body = json.dumps(data).encode(); h["Content-Type"] = "application/json"
    r = urllib.request.Request(BASE + path, data=body, headers=h, method=method or ("POST" if body is not None else "GET"))
    try:
        with urllib.request.urlopen(r, context=CTX, timeout=60) as resp:
            out = resp.read()
            return resp.status, (json.loads(out) if out.strip() else None)
    except urllib.error.HTTPError as e:
        return e.code, e.read()[:300]


def hkdf_expand(prk, info, length=32):
    out, t, i = b"", b"", 1
    while len(out) < length:
        t = hmac.new(prk, t + info + bytes([i]), hashlib.sha256).digest(); out += t; i += 1
    return out[:length]


def enc_string(data, enc_key, mac_key):
    iv = os.urandom(16)
    p = padding.PKCS7(128).padder(); padded = p.update(data) + p.finalize()
    e = Cipher(algorithms.AES(enc_key), modes.CBC(iv)).encryptor(); ct = e.update(padded) + e.finalize()
    mac = hmac.new(mac_key, iv + ct, hashlib.sha256).digest()
    return f"2.{b64(iv)}|{b64(ct)}|{b64(mac)}"


def keys_for(email, password):
    master = hashlib.pbkdf2_hmac("sha256", password.encode(), email.lower().encode(), ITER, 32)
    mp_hash = b64(hashlib.pbkdf2_hmac("sha256", master, password.encode(), 1, 32))
    return master, mp_hash


def register(email, password):
    master, mp_hash = keys_for(email, password)
    s_enc, s_mac = hkdf_expand(master, b"enc"), hkdf_expand(master, b"mac")
    sym = os.urandom(64)
    priv = rsa.generate_private_key(public_exponent=65537, key_size=2048)
    pub_der = priv.public_key().public_bytes(serialization.Encoding.DER, serialization.PublicFormat.SubjectPublicKeyInfo)
    priv_der = priv.private_bytes(serialization.Encoding.DER, serialization.PrivateFormat.PKCS8, serialization.NoEncryption())
    body = {"email": email, "name": "LIFT", "masterPasswordHash": mp_hash, "masterPasswordHint": None,
            "key": enc_string(sym, s_enc, s_mac), "kdf": 0, "kdfIterations": ITER,
            "keys": {"publicKey": b64(pub_der), "encryptedPrivateKey": enc_string(priv_der, sym[:32], sym[32:])}}
    s, r = req("/api/accounts/register", body)
    return s, mp_hash


def token(email, mp_hash, two_factor=None):
    d = {"grant_type": "password", "username": email, "password": mp_hash, "scope": "api offline_access",
         "client_id": "web", "deviceType": "9", "deviceIdentifier": str(uuid.uuid4()), "deviceName": "lift"}
    if two_factor: d.update({"twoFactorToken": two_factor, "twoFactorProvider": "0", "twoFactorRemember": "0"})
    return req("/identity/connect/token", d, form=True, headers={"Auth-Email": base64.urlsafe_b64encode(email.encode()).decode()})


def totp(secret):
    key = base64.b32decode(secret.upper() + "=" * (-len(secret) % 8))
    d = hmac.new(key, struct.pack(">Q", int(time.time()) // 30), hashlib.sha1).digest(); o = d[-1] & 15
    return "%06d" % ((struct.unpack(">I", d[o:o + 4])[0] & 0x7FFFFFFF) % 1000000)


def pool(name, user, password, note, secret=None):
    d = os.path.join(POOLS, name); os.makedirs(d, exist_ok=True)
    old = os.umask(0o077)
    with open(os.path.join(d, "valid_pairs.csv"), "w") as f:
        f.write(f"# {note}\nusername,password\n{user},{password}\n")
    open(os.path.join(d, "server.txt"), "w").write(BASE + "\n")
    if secret: open(os.path.join(d, "totp_secrets.csv"), "w").write(f"{user},{secret}\n")
    os.umask(old)
    print(f"  pool {name}: {sorted(os.listdir(d))}")


for email in ("lift.bw@liftdroid.test", "john.lift@liftdroid.test", "lift.totp@liftdroid.test"):
    s, mp = register(email, PW)
    s2, t = token(email, mp)
    print(email.split("@")[0], "register", s, "token", s2)

_, mp = keys_for("lift.bw@liftdroid.test", PW)
pool("b2_28_bitwarden", "lift.bw@liftdroid.test", PW, "Bitwarden #6376: Vaultwarden 1.32.7")
pool("b2_29_bitwarden", "lift.bw@liftdroid.test", PW, "Bitwarden #6576: Vaultwarden 1.32.7")
pool("b2_07_bitwarden", "John.Lift@liftdroid.test", PW, "Bitwarden #3410: e-mail typed with upper-case letters; account is john.lift@ (the trigger)")

# TOTP for lift.totp@
email = "lift.totp@liftdroid.test"
_, mp = keys_for(email, PW)
s, t = token(email, mp)
if s == 200 and isinstance(t, dict):
    H = {"Authorization": "Bearer " + t["access_token"]}
    s1, g = req("/api/two-factor/get-authenticator", {"masterPasswordHash": mp}, headers=H)
    secret = g.get("key") if isinstance(g, dict) else None
    if secret:
        s2, _ = req("/api/two-factor/authenticator", {"key": secret, "token": totp(secret), "masterPasswordHash": mp}, headers=H, method="PUT")
        time.sleep(31)
        s3, t3 = token(email, mp)
        s4, _ = token(email, mp, totp(secret))
        print("totp enable", s2, "login without code", s3, "with code", s4)
        if s2 == 200:
            pool("b2_08_bitwarden", email, PW, "Bitwarden #3796: authenticator (TOTP) two-step login", secret)
else:
    print("totp account token failed", s)
