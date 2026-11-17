"""Check the Paperless test account and write the Paperless Mobile pool (no secrets printed)."""
import json, os, ssl, urllib.parse, urllib.request

ctx = ssl.create_default_context(cafile=os.path.expanduser("~/selfhost/certs/ca.crt"))
ctx.check_hostname = False
env = dict(l.strip().split("=", 1) for l in open(os.path.expanduser("~/selfhost/.env")) if "=" in l)
pw = env["PAPERLESS_ADMIN_PASSWORD"]
req = urllib.request.Request("https://10.99.0.124/api/token/",
                             data=urllib.parse.urlencode({"username": "lifttest", "password": pw}).encode(),
                             headers={"Host": "paperless.liftdroid.test"}, method="POST")
with urllib.request.urlopen(req, context=ctx, timeout=30) as r:
    ok = bool(json.load(r).get("token"))
print("paperless login ok:", ok)

pool = os.path.expanduser("~/LoginTest/pools/de.astubenbord.paperless_mobile")
os.makedirs(pool, exist_ok=True)
old = os.umask(0o077)
with open(os.path.join(pool, "valid_pairs.csv"), "w") as f:
    f.write("username,password\nlifttest,%s\n" % pw)
with open(os.path.join(pool, "server.txt"), "w") as f:
    f.write("https://paperless.liftdroid.test\n")
os.umask(old)
print("pool written:", sorted(os.listdir(pool)))
