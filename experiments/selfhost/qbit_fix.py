import base64, hashlib, os, re, subprocess
HOME = os.path.expanduser("~")
env = dict(l.strip().split("=", 1) for l in open(f"{HOME}/selfhost/.env") if "=" in l)
PW = env["LIFT_SVC_PASSWORD"]
conf = f"{HOME}/selfhost/data/qbittorrent/qBittorrent/qBittorrent.conf"
salt = os.urandom(16)
dk = hashlib.pbkdf2_hmac("sha512", PW.encode(), salt, 100000, 64)
val = '@ByteArray(' + base64.b64encode(salt).decode() + ':' + base64.b64encode(dk).decode() + ')'
subprocess.run(["sudo", "docker", "compose", "-p", "liftsvc", "stop", "qbittorrent"], cwd=f"{HOME}/selfhost", capture_output=True)
t = subprocess.run(["sudo", "cat", conf], capture_output=True, text=True).stdout
lines = [l for l in t.splitlines() if not re.match(r"WebUI\\(Password_PBKDF2|HostHeaderValidation|CSRFProtection)=", l)]
out, done = [], False
for l in lines:
    out.append(l)
    if l.strip() == "[Preferences]":
        out += [f"WebUI\\Password_PBKDF2=\"{val}\"", "WebUI\\HostHeaderValidation=false", "WebUI\\CSRFProtection=false"]
        done = True
if not done:
    out += ["[Preferences]", f"WebUI\\Password_PBKDF2=\"{val}\"", "WebUI\\HostHeaderValidation=false", "WebUI\\CSRFProtection=false"]
subprocess.run(["sudo", "tee", conf], input="\n".join(out) + "\n", text=True, capture_output=True)
subprocess.run(["sudo", "docker", "compose", "-p", "liftsvc", "start", "qbittorrent"], cwd=f"{HOME}/selfhost", capture_output=True)
print("qbittorrent config written")
