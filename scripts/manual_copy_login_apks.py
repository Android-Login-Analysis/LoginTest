import os
import shutil
import json
from known_login_apps import known_login_ids

APK_SAVE_DIR = "apks"
APK_LOGIN_DIR = "apks_with_login"
TOP100_JSON = "top100_packages.json"
OUTPUT_JSON = "login_apps.json"

os.makedirs(APK_LOGIN_DIR, exist_ok=True)

with open(TOP100_JSON) as f:
    top100 = json.load(f)

# Filter metadata for apps in known_login_ids
login_apps = []
copied = 0

for app in top100:
    if app["id"] in known_login_ids:
        src_path = os.path.join(APK_SAVE_DIR, f"{app['id']}.apk")
        dest_path = os.path.join(APK_LOGIN_DIR, f"{app['id']}.apk")
        if os.path.exists(src_path):
            shutil.copy(src_path, dest_path)
            print(f"[✓] Copied {app['id']}.apk to {APK_LOGIN_DIR}/")
            login_apps.append(app)
            copied += 1
        else:
            print(f"[-] APK not found: {app['id']}")


with open(OUTPUT_JSON, "w") as f:
    json.dump(login_apps, f, indent=2)

print(f"\n[✓] Done. {copied} APKs copied to {APK_LOGIN_DIR}/ and saved in {OUTPUT_JSON}")
