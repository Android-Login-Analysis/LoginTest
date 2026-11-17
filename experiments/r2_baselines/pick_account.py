"""Pick the app's test account the way LIFTDroid does and build the prompt fields (stdout: JSON)."""
import glob, json, os, sys
pkg, pool_override = sys.argv[1], (sys.argv[2] if len(sys.argv) > 2 else "")
pools = os.path.expanduser("~/LoginTest/pools")
d = os.path.join(pools, pool_override or pkg)
if not os.path.isdir(d):
    c = sorted(glob.glob(os.path.join(pools, pkg + "_*")))
    d = c[0] if c else ""
def rows(f):
    p = os.path.join(d, f)
    if not d or not os.path.exists(p): return []
    out = []
    for l in open(p):
        l = l.strip()
        if not l or l.startswith("#") or l.lower().replace(" ", "") in ("username,password", "email,password"): continue
        if "," in l: out.append(l.split(",", 1))
    return out
user = pw = provider = None
for f, prov in (("valid_pairs.csv", "own"), ("google_valid_pairs.csv", "google"), ("facebook_valid_pairs.csv", "facebook")):
    r = rows(f)
    if r: user, pw, provider = r[0][0], r[0][1], prov; break
server = ""
if d and os.path.exists(os.path.join(d, "server.txt")): server = open(os.path.join(d, "server.txt")).read().strip()
if user:
    acct = f"A valid test account is: username {user}, password {pw}" + (f" (a {provider.capitalize()} account)." if provider != "own" else ".")
else:
    acct = "Sign in with the Google account that is already set up on this device (no password needed)."
if provider in ("google", "facebook") or not user:
    invalid = "use a username that does not exist, e.g. nonexistent.user.liftdroid@example.com; never enter a wrong password for the valid account"
else:
    invalid = "for example a wrong password, or a username with special characters such as & < '"
print(json.dumps({"pool": d, "user": user or "", "password": pw or "", "provider": provider or "device", "server": server,
                  "account_line": acct, "invalid_line": invalid}))
