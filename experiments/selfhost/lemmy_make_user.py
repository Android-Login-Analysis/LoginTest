import json, os, secrets, ssl, string, urllib.request

HOST = "lemmy.liftdroid.test"
BASE = "https://10.99.0.124"
ctx = ssl.create_default_context(cafile=os.path.expanduser("~/selfhost/certs/ca.crt"))
ctx.check_hostname = False   # we connect by IP; certificate chain is still verified against our CA


def call(method, path, body=None, jwt=None):
    headers = {"Host": HOST, "Content-Type": "application/json"}
    if jwt:
        headers["Authorization"] = "Bearer " + jwt
    req = urllib.request.Request(BASE + path, data=json.dumps(body).encode() if body is not None else None,
                                 headers=headers, method=method)
    with urllib.request.urlopen(req, context=ctx, timeout=30) as r:
        return json.load(r)


env = dict(l.strip().split("=", 1) for l in open(os.path.expanduser("~/selfhost/.env")) if "=" in l)
admin = call("POST", "/api/v3/user/login", {"username_or_email": "liftadmin", "password": env["LEMMY_ADMIN_PASSWORD"]})["jwt"]
call("PUT", "/api/v3/site", {"registration_mode": "Open", "require_email_verification": False, "captcha_enabled": False}, admin)

alphabet = string.ascii_letters + string.digits
pw = "Lift" + "".join(secrets.choice(alphabet) for _ in range(16)) + "9x"
r = call("POST", "/api/v3/user/register", {"username": "lifttest", "password": pw, "password_verify": pw,
                                            "show_nsfw": False})
assert r.get("jwt"), "registration did not return a token"

pool = os.path.expanduser("~/LoginTest/pools/com.jerboa")
os.makedirs(pool, exist_ok=True)
old = os.umask(0o077)
with open(os.path.join(pool, "valid_pairs.csv"), "w") as f:
    f.write("username,password\nlifttest,%s\n" % pw)
os.umask(old)
os.chmod(os.path.join(pool, "valid_pairs.csv"), 0o600)
check = call("POST", "/api/v3/user/login", {"username_or_email": "lifttest", "password": pw})
print("user lifttest created; login ok:", bool(check.get("jwt")))
