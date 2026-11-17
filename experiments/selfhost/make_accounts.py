"""Create the test accounts on the second batch of self-hosted services and write the LIFTDroid pools.

Runs on the test server. Reads secrets from ~/selfhost/.env, prints no secrets.
Every service gets user 'lifttest' with password LIFT_SVC_PASSWORD; Mattermost also gets
'lifttestmfa' with TOTP enabled (secret goes to the pool's totp_secrets.csv).
"""
import base64, hashlib, hmac, json, os, ssl, struct, subprocess, sys, time, urllib.request

HOME = os.path.expanduser("~")
env = dict(l.strip().split("=", 1) for l in open(f"{HOME}/selfhost/.env") if "=" in l)
PW = env["LIFT_SVC_PASSWORD"]
CTX = ssl.create_default_context(cafile=f"{HOME}/selfhost/certs/ca.crt")
POOLS = f"{HOME}/LoginTest/pools"

import socket
_gai = socket.getaddrinfo
socket.getaddrinfo = lambda host, *a, **k: _gai("10.99.0.124" if str(host).endswith(".liftdroid.test") else host, *a, **k)


def call(host, path, data=None, method=None, headers=None, raw=False):
    h = {"Content-Type": "application/json", **(headers or {})}
    body = json.dumps(data).encode() if data is not None else None
    req = urllib.request.Request(f"https://{host}.liftdroid.test{path}", data=body, headers=h,
                                 method=method or ("POST" if body is not None else "GET"))
    try:
        with urllib.request.urlopen(req, context=CTX, timeout=60) as r:
            out = r.read()
            return r.status, (out if raw else (json.loads(out) if out.strip() else None)), r.headers
    except urllib.error.HTTPError as e:
        return e.code, e.read()[:300], e.headers


def dc(*args):
    return subprocess.run(["sudo", "docker", "compose", "-p", "liftsvc", "exec", "-T", *args],
                          cwd=f"{HOME}/selfhost", capture_output=True, text=True)


def totp(secret):
    key = base64.b32decode(secret.upper() + "=" * (-len(secret) % 8))
    msg = struct.pack(">Q", int(time.time()) // 30)
    d = hmac.new(key, msg, hashlib.sha1).digest()
    o = d[-1] & 15
    return "%06d" % ((struct.unpack(">I", d[o:o + 4])[0] & 0x7FFFFFFF) % 1000000)


def pool(pkg, user, server=None, totp_secret=None):
    d = os.path.join(POOLS, pkg)
    os.makedirs(d, exist_ok=True)
    old = os.umask(0o077)
    with open(os.path.join(d, "valid_pairs.csv"), "w") as f:
        f.write(f"username,password\n{user},{PW}\n")
    if server:
        open(os.path.join(d, "server.txt"), "w").write(server + "\n")
    if totp_secret:
        open(os.path.join(d, "totp_secrets.csv"), "w").write(f"{user},{totp_secret}\n")
    os.umask(old)
    print(f"  pool {pkg}: {sorted(os.listdir(d))}")


def jellyfin():
    s, _, _ = call("jellyfin", "/Startup/Configuration", {"UICulture": "en-US", "MetadataCountryCode": "US", "PreferredMetadataLanguage": "en"})
    call("jellyfin", "/Startup/User", method="GET")
    s2, _, _ = call("jellyfin", "/Startup/User", {"Name": "lifttest", "Password": PW})
    s3, _, _ = call("jellyfin", "/Startup/Complete", {})
    auth = 'MediaBrowser Client="lift", Device="lift", DeviceId="lift1", Version="1.0"'
    s4, r, _ = call("jellyfin", "/Users/AuthenticateByName", {"Username": "lifttest", "Pw": PW},
                    headers={"X-Emby-Authorization": auth})
    print("jellyfin wizard", s, s2, s3, "login", s4, isinstance(r, dict) and bool(r.get("AccessToken")))
    pool("dev.jdtech.jellyfin", "lifttest", "https://jellyfin.liftdroid.test")


def mattermost():
    for u in ("lifttest", "lifttestmfa"):
        r = dc("mattermost", "mmctl", "--local", "user", "create", "--email", f"{u}@liftdroid.test",
               "--username", u, "--password", PW, *(["--system-admin"] if u == "lifttest" else []))
        print("mattermost create", u, "ok" if r.returncode == 0 else r.stderr.strip()[:120])
    r = dc("mattermost", "mmctl", "--local", "team", "create", "--name", "lift", "--display-name", "LIFT")
    dc("mattermost", "mmctl", "--local", "team", "users", "add", "lift", "lifttest", "lifttestmfa")
    secret_file = os.path.join(POOLS, "com.mattermost.rnbeta", "totp_secrets.csv")
    if os.path.exists(secret_file):
        secret = open(secret_file).read().strip().split(",", 1)[1]
        s, _, _ = call("mattermost", "/api/v4/users/login", {"login_id": "lifttestmfa", "password": PW, "token": totp(secret)})
        print("mattermost mfa login", s)
        pool("com.mattermost.rnbeta", "lifttestmfa", "https://mattermost.liftdroid.test", secret)
        return
    s, me, hdr = call("mattermost", "/api/v4/users/login", {"login_id": "lifttestmfa", "password": PW})
    if s != 200:
        print("mattermost mfa user login", s, me[:120] if isinstance(me, bytes) else "")
        return
    tok = {"Authorization": "Bearer " + hdr["Token"]}
    if True:
        s, g, _ = call("mattermost", f"/api/v4/users/{me['id']}/mfa/generate", {}, headers=tok)
        secret = g["secret"]
        s, _, _ = call("mattermost", f"/api/v4/users/{me['id']}/mfa", {"activate": True, "code": totp(secret)}, method="PUT", headers=tok)
        print("mattermost mfa activate", s)
    s, _, _ = call("mattermost", "/api/v4/users/login", {"login_id": "lifttestmfa", "password": PW, "token": totp(secret)})
    print("mattermost mfa login", s)
    s0, _, _ = call("mattermost", "/api/v4/users/login", {"login_id": "lifttest", "password": PW})
    print("mattermost plain login", s0)
    pool("com.mattermost.rnbeta", "lifttestmfa", "https://mattermost.liftdroid.test", secret)


def kitchenowl():
    s, r, _ = call("kitchenowl", "/api/onboarding", {"username": "lifttest", "name": "lifttest", "password": PW})
    s2, r2, _ = call("kitchenowl", "/api/auth", {"username": "lifttest", "password": PW, "device": "lift"})
    print("kitchenowl onboarding", s, "login", s2, isinstance(r2, dict) and bool(r2.get("access_token")))
    pool("com.tombursch.kitchenowl", "lifttest", "https://kitchenowl.liftdroid.test")


def freshrss():
    if not os.path.exists(f"{HOME}/selfhost/data/freshrss/data/config.php"):
        r = dc("freshrss", "./cli/do-install.php", "--default-user", "lifttest", "--auth-type", "form",
               "--environment", "production", "--base-url", "https://freshrss.liftdroid.test",
               "--db-type", "sqlite", "--api-enabled")
        print("freshrss install", r.returncode, r.stderr.strip()[:120])
        r = dc("freshrss", "./cli/create-user.php", "--user", "lifttest", "--password", PW, "--api-password", PW)
        print("freshrss user", r.returncode, r.stderr.strip()[:120])
        dc("freshrss", "chown", "-R", "www-data:www-data", "/var/www/FreshRSS/data")
    s, r, _ = call("freshrss", f"/api/greader.php/accounts/ClientLogin?Email=lifttest&Passwd={urllib.parse.quote(PW)}", raw=True)
    print("freshrss greader login", s, b"Auth=" in r if isinstance(r, bytes) else r)
    pool("me.ash.reader", "lifttest", "https://freshrss.liftdroid.test")


def synapse():
    r = dc("synapse", "register_new_matrix_user", "-c", "/data/homeserver.yaml", "-u", "lifttest",
           "-p", PW, "--no-admin", "http://localhost:8008")
    print("synapse register", r.returncode, (r.stderr.strip() or r.stdout.strip())[-80:])
    s, r2, _ = call("matrix", "/_matrix/client/v3/login",
                    {"type": "m.login.password", "identifier": {"type": "m.id.user", "user": "lifttest"}, "password": PW})
    print("synapse login", s)
    pool("chat.fluffy.fluffychat", "lifttest", "matrix.liftdroid.test")


def seafile():
    # admin account comes from INIT_SEAFILE_ADMIN_*; give it the shared password as a separate user
    adm = env["SEAFILE_ADMIN_PASSWORD"]
    req = urllib.request.Request("https://seafile.liftdroid.test/api2/auth-token/",
                                 data=urllib.parse.urlencode({"username": "lifttest@liftdroid.test", "password": adm}).encode())
    try:
        with urllib.request.urlopen(req, context=CTX, timeout=60) as r:
            atok = json.load(r)["token"]
    except Exception as e:
        print("seafile admin login failed:", str(e)[:100]); return
    req = urllib.request.Request("https://seafile.liftdroid.test/api/v2.1/admin/users/",
                                 data=urllib.parse.urlencode({"email": "lift@liftdroid.test", "password": PW, "is_active": "true"}).encode(),
                                 headers={"Authorization": "Token " + atok})
    try:
        with urllib.request.urlopen(req, context=CTX, timeout=60) as r:
            print("seafile user", r.status)
    except urllib.error.HTTPError as e:
        print("seafile user", e.code, e.read()[:100])
    pool("com.seafile.seadroid2", "lift@liftdroid.test", "https://seafile.liftdroid.test")


def paperless_totp():
    """Second Paperless user with TOTP (Paperless Mobile #478); pool kept separately (pools/paperless_totp)."""
    adm = env["PAPERLESS_ADMIN_PASSWORD"]
    basic = {"Authorization": "Basic " + base64.b64encode(f"lifttest:{adm}".encode()).decode()}
    s, r, _ = call("paperless", "/api/users/", {"username": "lifttotp", "password": PW, "is_active": True, "is_superuser": True}, headers=basic)
    print("paperless totp user", s)
    ub = {"Authorization": "Basic " + base64.b64encode(f"lifttotp:{PW}".encode()).decode()}
    d = os.path.join(POOLS, "paperless_totp")
    sf = os.path.join(d, "totp_secrets.csv")
    if os.path.exists(sf):
        print("paperless totp already set up")
        return
    s, g, _ = call("paperless", "/api/profile/totp/", headers=ub)
    if s != 200:
        print("paperless totp get", s, g); return
    secret = g["secret"]
    s, a, _ = call("paperless", "/api/profile/totp/", {"secret": secret, "code": totp(secret)}, headers=ub)
    print("paperless totp activate", s)
    if s == 200:
        os.makedirs(d, exist_ok=True)
        old = os.umask(0o077)
        open(os.path.join(d, "valid_pairs.csv"), "w").write(f"username,password\nlifttotp,{PW}\n")
        open(os.path.join(d, "server.txt"), "w").write("https://paperless.liftdroid.test\n")
        open(sf, "w").write(f"lifttotp,{secret}\n")
        os.umask(old)
        print("  pool paperless_totp:", sorted(os.listdir(d)))


import urllib.parse
for fn in sys.argv[1:] or ["jellyfin", "mattermost", "kitchenowl", "freshrss", "synapse", "seafile"]:
    try:
        globals()[fn]()
    except Exception as e:
        print(fn, "ERROR", type(e).__name__, str(e)[:150])
