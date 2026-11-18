"""Dataset B2: create test accounts on the second batch of backends and write one pool per candidate issue.

Runs on the test server; secrets from ~/selfhost/.env, nothing secret is printed. Pools are written to
~/LoginTest/pools/b2_<rank>_<name>/ (valid_pairs.csv, server.txt) and selected per run with LIFT_POOL.
Special accounts required by an issue's trigger are noted next to each pool.
Usage: python3 make_b2_accounts.py [service ...]
"""
import base64, hashlib, json, os, secrets, socket, ssl, string, subprocess, sys, urllib.parse, urllib.request

HOME = os.path.expanduser("~")
env = dict(l.strip().split("=", 1) for l in open(f"{HOME}/selfhost/.env") if "=" in l)
PW = env["LIFT_SVC_PASSWORD"]
CTX = ssl.create_default_context(cafile=f"{HOME}/selfhost/certs/ca.crt")
POOLS = f"{HOME}/LoginTest/pools"
_gai = socket.getaddrinfo
socket.getaddrinfo = lambda host, *a, **k: _gai("10.99.0.124" if str(host).endswith(".liftdroid.test") else host, *a, **k)


def call(host, path, data=None, method=None, headers=None, form=False, raw=False):
    h = dict(headers or {})
    body = None
    if data is not None:
        if form:
            body = urllib.parse.urlencode(data).encode(); h.setdefault("Content-Type", "application/x-www-form-urlencoded")
        else:
            body = json.dumps(data).encode(); h.setdefault("Content-Type", "application/json")
    req = urllib.request.Request(f"https://{host}.liftdroid.test{path}", data=body, headers=h,
                                 method=method or ("POST" if body is not None else "GET"))
    try:
        with urllib.request.urlopen(req, context=CTX, timeout=60) as r:
            out = r.read()
            if raw: return r.status, out
            try: return r.status, json.loads(out) if out.strip() else None
            except Exception: return r.status, out[:200]
    except urllib.error.HTTPError as e:
        return e.code, e.read()[:300]


def dc(*args, user=None):
    cmd = ["sudo", "docker", "compose", "-p", "liftsvc", "exec", "-T"] + (["-u", user] if user else []) + list(args)
    return subprocess.run(cmd, cwd=f"{HOME}/selfhost", capture_output=True, text=True)


def basic(u, p):
    return {"Authorization": "Basic " + base64.b64encode(f"{u}:{p}".encode()).decode()}


def pool(name, user, password, server=None, note=""):
    d = os.path.join(POOLS, name)
    os.makedirs(d, exist_ok=True)
    old = os.umask(0o077)
    with open(os.path.join(d, "valid_pairs.csv"), "w") as f:
        if note: f.write(f"# {note}\n")
        f.write(f"username,password\n{user},{password}\n")
    if server:
        open(os.path.join(d, "server.txt"), "w").write(server + "\n")
    os.umask(old)
    print(f"  pool {name}: {sorted(os.listdir(d))}")


def vikunja():
    r = dc("vikunja", "/app/vikunja/vikunja", "user", "create", "-u", "lifttest", "-p", PW, "-e", "lifttest@liftdroid.test")
    s, t = call("vikunja", "/api/v1/login", {"username": "lifttest", "password": PW})
    print("vikunja create", r.returncode, "login", s, isinstance(t, dict) and bool(t.get("token")))
    pool("b2_01_vikunja", "lifttest", PW, "https://vikunja.liftdroid.test")


def gotify():
    s, _ = call("gotify", "/current/user", headers=basic("lifttest", PW))
    print("gotify default user login", s)
    special = "Lift€{%" + "".join(secrets.choice(string.ascii_letters + string.digits) for _ in range(12))
    s2, r = call("gotify", "/user", {"name": "liftspecial", "pass": special, "admin": False}, headers=basic("lifttest", PW))
    s3, _ = call("gotify", "/current/user", headers=basic("liftspecial", special))
    print("gotify special user create", s2, "login", s3)
    if s3 == 200:
        pool("b2_03_gotify", "liftspecial", special, "https://gotify.liftdroid.test",
             "Gotify #161: password with the characters € { % (the trigger in the issue)")
    pool("b2_14_gotify", "lifttest", PW, "https://gotifyredirect.liftdroid.test",
         "Gotify #201: server URL that answers with a permanent redirect")


def navidrome():
    pw = "@" + PW
    s, r = call("navidrome", "/auth/createAdmin", {"username": "lifttest", "password": pw})
    s2, t = call("navidrome", "/auth/login", {"username": "lifttest", "password": pw})
    print("navidrome createAdmin", s, "login", s2)
    if s2 == 200:
        pool("b2_06_subtracks", "lifttest", pw, "https://navidrome.liftdroid.test",
             "Subtracks #55: password starting with @ (the trigger in the issue)")


def paperless2():
    s, r = call("paperless2", "/api/token/", {"username": "lifttest", "password": PW}, form=True)
    print("paperless2 token", s, isinstance(r, dict) and bool(r.get("token")))
    if s == 200:
        pool("b2_09_paperless", "lifttest", PW, "https://paperless2.liftdroid.test",
             "Paperless Mobile #548: paperless-ngx 2.20 with PAPERLESS_ENABLE_UPDATE_CHECK")


def lemmy2():
    adm = env["LEMMY_ADMIN_PASSWORD"]
    s, r = call("lemmy2", "/api/v3/user/login", {"username_or_email": "liftadmin", "password": adm})
    jwt = r.get("jwt") if isinstance(r, dict) else None
    print("lemmy2 admin login", s, bool(jwt))
    if jwt:
        s2, _ = call("lemmy2", "/api/v3/site", {"private_instance": True, "federation_enabled": False},   # private needs federation off
                     method="PUT", headers={"Authorization": "Bearer " + jwt})
        print("lemmy2 private_instance", s2)
        pool("b2_11_jerboa", "liftadmin", adm, "lemmy2.liftdroid.test", "Jerboa #1487: Lemmy 0.19.3 private instance")


def lemmy3():
    adm = env["LEMMY_ADMIN_PASSWORD"]
    s, r = call("lemmy3", "/api/v3/user/login", {"username_or_email": "liftadmin", "password": adm})
    print("lemmy3 admin login", s, isinstance(r, dict) and bool(r.get("jwt")))
    if s == 200:
        pool("b2_15_jerboa", "liftadmin", adm, "lemmy3.liftdroid.test", "Jerboa #920: Lemmy 0.17.4")
    # Jerboa #538: an instance whose API answers with an HTML page (the account does not matter)
    pool("b2_16_jerboa", "lifttest", PW, "htmlapi.liftdroid.test", "Jerboa #538: /api/v3 answers with an HTML page")


def nextcloud():
    for app in ("spreed", "notes", "bookmarks", "twofactor_totp"):
        r = dc("nextcloud", "php", "occ", "app:install", app, user="www-data")
        print("nextcloud app", app, r.returncode, (r.stdout + r.stderr).strip().splitlines()[-1:] if r.returncode else "")
    s, _ = call("nextcloud", "/ocs/v2.php/cloud/user?format=json", headers={**basic("lifttest", PW), "OCS-APIRequest": "true"})
    print("nextcloud login", s)
    if s == 200:
        pool("b2_12_talk", "lifttest", PW, "https://nextcloud.liftdroid.test", "Nextcloud Talk #6329")
        pool("b2_32_notes", "lifttest", PW, "https://nextcloud.liftdroid.test", "Nextcloud Notes #562")


def memos():
    s, r = call("memos", "/api/v1/users", {"username": "lifttest", "password": PW, "role": "HOST"})   # Memos 0.25 API
    s2, r2 = call("memos", "/api/v1/auth/sessions", {"passwordCredentials": {"username": "lifttest", "password": PW}})
    print("memos create", s, "sign-in", s2)
    if s2 == 200:
        pool("b2_13_moememos", "lifttest", PW, "https://memos.liftdroid.test", "MoeMemos #295: Memos 0.25.3")


def jellyfin2():
    call("jellyfin2", "/Startup/Configuration", {"UICulture": "en-US", "MetadataCountryCode": "US", "PreferredMetadataLanguage": "en"})
    call("jellyfin2", "/Startup/User", method="GET")
    call("jellyfin2", "/Startup/User", {"Name": "lifttest", "Password": PW})
    call("jellyfin2", "/Startup/Complete", {})
    auth = 'MediaBrowser Client="lift", Device="lift", DeviceId="lift2", Version="1.0"'
    s, r = call("jellyfin2", "/Users/AuthenticateByName", {"Username": "lifttest", "Pw": PW}, headers={"X-Emby-Authorization": auth})
    print("jellyfin2 login", s)
    if s == 200:
        pool("b2_17_findroid", "lifttest", PW, "https://jellyfin2.liftdroid.test", "Findroid #679: Jellyfin 10.9.0")


def gitea():
    r = dc("gitea", "gitea", "admin", "user", "create", "--username", "lifttest", "--password", PW,
           "--email", "lifttest@liftdroid.test", "--admin", "--must-change-password=false", user="git")
    s, _ = call("gitea", "/api/v1/user", headers=basic("lifttest", PW))
    print("gitea create", r.returncode, "login", s)
    if s == 200:
        for rank in ("18", "19", "37"):
            pool(f"b2_{rank}_gitnex", "lifttest", PW, "https://gitea.liftdroid.test", f"GitNex (rank {rank}): Gitea 1.20.1")


def freshrss_fever():
    """Readrops #348: Fever login fails when md5("user:password") starts with 0; Capy Reader #581 uses the normal account."""
    user = "liftfever"
    while True:
        api = "Lift" + "".join(secrets.choice(string.ascii_letters + string.digits) for _ in range(14))
        if hashlib.md5(f"{user}:{api}".encode()).hexdigest().startswith("0"):
            break
    r = dc("freshrss", "./cli/create-user.php", "--user", user, "--password", api, "--api-password", api)
    if r.returncode != 0:
        r = dc("freshrss", "./cli/update-user.php", "--user", user, "--password", api, "--api-password", api)
    dc("freshrss", "chown", "-R", "www-data:www-data", "/var/www/FreshRSS/data")
    key = hashlib.md5(f"{user}:{api}".encode()).hexdigest()
    s, out = call("freshrss", "/api/fever.php?api", {"api_key": key}, form=True, raw=True)
    print("freshrss fever user", r.returncode, "fever auth", s, b'"auth":1' in out if isinstance(out, bytes) else out)
    pool("b2_04_readrops", user, api, "https://freshrss.liftdroid.test",
         "Readrops #348: md5(user:password) starts with 0 (the trigger in the issue)")
    pool("b2_05_capyreader", "lifttest", PW, "https://freshrss.liftdroid.test", "Capy Reader #581: FreshRSS Google Reader API")


def audiobookshelf():
    for host, rank, note, user in (("audiobookshelf", "30", "Audiobookshelf app #1900: username typed with a trailing space (the trigger in the issue)", "lifttest "),
                                   ("audiobookshelf2", "31", "Audiobookshelf app #868: 2023 server (2.4.4)", "lifttest")):
        s, r = call(host, "/init", {"newRoot": {"username": "lifttest", "password": PW}})
        s2, r2 = call(host, "/login", {"username": "lifttest", "password": PW})
        print(host, "init", s, "login", s2)
        if s2 == 200:
            pool(f"b2_{rank}_audiobookshelf", user, PW, f"https://{host}.liftdroid.test", note)


def gotosocial():
    r = dc("gotosocial", "/gotosocial/gotosocial", "admin", "account", "create", "--username", "lifttest",
           "--email", "lifttest@liftdroid.test", "--password", "Lift-" + PW)
    r2 = dc("gotosocial", "/gotosocial/gotosocial", "admin", "account", "confirm", "--username", "lifttest")
    print("gotosocial create", r.returncode, (r.stderr or "").strip()[-80:], "confirm", r2.returncode)
    pool("b2_21_andstatus", "lifttest@liftdroid.test", "Lift-" + PW, "gotosocial.liftdroid.test", "AndStatus #551: GoToSocial")


def paperless3():
    s, r = call("paperless3", "/api/token/", {"username": "lifttest", "password": PW}, form=True)
    tok = r.get("token") if isinstance(r, dict) else None
    print("paperless3 admin token", s)
    if not tok: return
    s2, _ = call("paperless3", "/api/users/", {"username": "liftviewer", "password": PW, "is_superuser": False, "is_staff": False,
                                               "user_permissions": []}, headers={"Authorization": "Token " + tok})
    s3, _ = call("paperless3", "/api/token/", {"username": "liftviewer", "password": PW}, form=True)
    print("paperless3 non-superuser create", s2, "login", s3)
    if s3 == 200:
        pool("b2_23_paperless", "liftviewer", PW, "https://paperless3.liftdroid.test",
             "Paperless Mobile #409: paperless-ngx 2.7.2, non-superuser without view permissions (the trigger in the issue)")


def mattermost2():
    r = dc("mattermost2", "mmctl", "--local", "user", "create", "--email", "lifttest@liftdroid.test", "--username", "lifttest",
           "--password", PW, "--system-admin")
    dc("mattermost2", "mmctl", "--local", "team", "create", "--name", "lift", "--display-name", "LIFT")
    dc("mattermost2", "mmctl", "--local", "team", "users", "add", "lift", "lifttest")
    s, _ = call("mattermost2", "/api/v4/users/login", {"login_id": "lifttest", "password": PW})
    print("mattermost2 create", r.returncode, "login", s)
    if s == 200:
        pool("b2_33_mattermost", "lifttest", PW, "https://mattermost2.liftdroid.test", "Mattermost #9635: server 11.5.1")


def qbittorrent():
    """qBittorrent rejects requests through our proxy until host-header validation is off, which needs a login first:
    qbit_fix.py writes the test password (PBKDF2) and disables host-header validation/CSRF in qBittorrent.conf.
    qBittorrent 5.2 answers a successful login with 204 and no body (older versions: "Ok.")."""
    req = urllib.request.Request("https://qbittorrent.liftdroid.test/api/v2/auth/login",
                                 data=urllib.parse.urlencode({"username": "admin", "password": PW}).encode())
    try:
        r = urllib.request.urlopen(req, context=CTX, timeout=30)
        sid = (r.headers.get("Set-Cookie") or "").split(";")[0]
        v = urllib.request.urlopen(urllib.request.Request("https://qbittorrent.liftdroid.test/api/v2/app/version",
                                                          headers={"Cookie": sid}), context=CTX, timeout=30).read()
        print("qbittorrent login", r.status, "version", v)
        pool("b2_10_qbitcontroller", "admin", PW, "https://qbittorrent.liftdroid.test", "qBitController #263: qBittorrent 5.2.0")
    except urllib.error.HTTPError as e:
        print("qbittorrent login failed", e.code, "- run qbit_fix.py first")


def mealie():
    s, r = call("mealie", "/api/auth/token", {"username": "changeme@example.com", "password": "MyPassword"}, form=True)
    tok = r.get("access_token") if isinstance(r, dict) else None
    if tok:   # replace the default password
        call("mealie", "/api/users/password", {"currentPassword": "MyPassword", "newPassword": PW, "confirmPassword": PW},
             method="PUT", headers={"Authorization": "Bearer " + tok})
    s2, r2 = call("mealie", "/api/auth/token", {"username": "changeme@example.com", "password": PW}, form=True)
    print("mealie default login", s, "test password login", s2)
    if s2 == 200:
        pool("b2_42_mealient", "changeme@example.com", PW, "https://mealie.liftdroid.test", "Mealient #189: Mealie 1.0.0-RC1.1")


def lemmy_main():
    """Eternity #77/#235 and Jerboa #1316 on the existing Lemmy 0.19.21."""
    u, p = [l.strip().split(",", 1) for l in open(os.path.join(POOLS, "com.jerboa", "valid_pairs.csv")) if l.strip() and not l.startswith(("#", "username"))][0]
    s, r = call("lemmy", "/api/v3/user/login", {"username_or_email": u, "password": p})
    jwt = r.get("jwt") if isinstance(r, dict) else None
    print("lemmy main login", s)
    if not jwt: return
    H = {"Authorization": "Bearer " + jwt}
    email = "lifttest@liftdroid.test"
    s2, _ = call("lemmy", "/api/v3/user/save_user_settings", {"email": email}, method="PUT", headers=H)
    s3, _ = call("lemmy", "/api/v3/user/login", {"username_or_email": email, "password": p})
    print("lemmy main email set", s2, "login by email", s3)
    pool("b2_34_eternity", u, p, "lemmy.liftdroid.test", "Eternity #77")
    if s3 == 200:
        pool("b2_35_eternity", email, p, "lemmy.liftdroid.test", "Eternity #235: log in with the e-mail address (the trigger in the issue)")
    # Jerboa #1316: an account whose registration application is still pending
    adm = env["LEMMY_ADMIN_PASSWORD"]
    s, r = call("lemmy", "/api/v3/user/login", {"username_or_email": "liftadmin", "password": adm})
    if isinstance(r, dict) and r.get("jwt"):
        AH = {"Authorization": "Bearer " + r["jwt"]}
        call("lemmy", "/api/v3/site", {"registration_mode": "RequireApplication", "application_question": "Why?"}, method="PUT", headers=AH)
        s4, r4 = call("lemmy", "/api/v3/user/register", {"username": "liftpending", "password": PW, "password_verify": PW,
                                                         "show_nsfw": False, "answer": "testing"})
        s5, r5 = call("lemmy", "/api/v3/user/login", {"username_or_email": "liftpending", "password": PW})
        call("lemmy", "/api/v3/site", {"registration_mode": "Open"}, method="PUT", headers=AH)
        print("lemmy pending account register", s4, "login", s5, (r5 if isinstance(r5, bytes) else b"")[:80])
        pool("b2_41_jerboa", "liftpending", PW, "lemmy.liftdroid.test",
             "Jerboa #1316: account whose registration application is pending (the trigger in the issue)")


ALL_B2 = ["audiobookshelf", "gotosocial", "paperless3", "mattermost2", "qbittorrent", "mealie", "lemmy_main"]
ALL = ["vikunja", "gotify", "navidrome", "paperless2", "lemmy2", "lemmy3", "nextcloud", "memos", "jellyfin2", "gitea", "freshrss_fever"]
for fn in sys.argv[1:] or ALL:
    try:
        globals()[fn]()
    except Exception as e:
        print(fn, "ERROR", type(e).__name__, str(e)[:160])
