import os
import json
import time
import requests
import zipfile
import xml.etree.ElementTree as ET
from urllib.parse import urljoin

# === CONFIG ===
FDROID_INDEX_URL = "https://f-droid.org/repo/index.xml"
APK_BASE_URL = "https://f-droid.org"
APK_SAVE_DIR = "apks"
APK_LOGIN_DIR = "apks_with_login"
TOP_N = 100
GITHUB_TOKEN = "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"
HEADERS = {"Authorization": f"token {GITHUB_TOKEN}"}

# Parse index.xml
def parse_fdroid_index():
    print("[+] Downloading and parsing index.xml...")
    res = requests.get(FDROID_INDEX_URL)
    root = ET.fromstring(res.content)
    apps = []
    for app in root.findall("application"):
        package_id = app.findtext("id")
        name = app.findtext("name")
        source_url = app.findtext("source")
        if not source_url:
            continue
        apps.append({"id": package_id, "name": name, "source_url": source_url})
    print(f"[+] Extracted {len(apps)} apps with GitHub links.")
    return apps

# Get GitHub stars
def get_github_stars(repo_url):
    if "github.com" not in repo_url:
        return 0
    parts = repo_url.split("github.com/")[-1].strip("/").split("/")
    if len(parts) < 2:
        return 0
    owner, repo = parts[0], parts[1]
    api_url = f"https://api.github.com/repos/{owner}/{repo}"
    try:
        res = requests.get(api_url, headers=HEADERS)
        if res.status_code == 200:
            return res.json().get("stargazers_count", 0)
    except Exception:
        return 0
    return 0

# Download APK
def download_apk(package_id):
    apk_url = f"https://f-droid.org/en/packages/{package_id}/"
    print(f"[*] Checking {apk_url}")
    html = requests.get(apk_url).text
    hrefs = [line.split('href="')[1].split('"')[0] for line in html.splitlines() if ".apk" in line and 'href="' in line]
    if not hrefs:
        print(f"[-] No APK link found for {package_id}")
        return None
    final_apk_url = urljoin(APK_BASE_URL, hrefs[0])
    os.makedirs(APK_SAVE_DIR, exist_ok=True)
    local_filename = os.path.join(APK_SAVE_DIR, f"{package_id}.apk")
    print(f"[+] Downloading {final_apk_url} -> {local_filename}")
    with requests.get(final_apk_url, stream=True) as r:
        with open(local_filename, "wb") as f:
            for chunk in r.iter_content(chunk_size=8192):
                f.write(chunk)
    return local_filename

# Analyze APK for login
def analyze_apk_for_login(apk_path):
    if not apk_path or not os.path.exists(apk_path):
        return False, []

    indicators = []
    login_keywords = ["login", "signin", "auth", "token", "password"]
    try:
        with zipfile.ZipFile(apk_path, 'r') as apk:
            for file in apk.namelist():
                lower = file.lower()
                if any(k in lower for k in login_keywords):
                    indicators.append(f"Filename: {file}")
                if file.endswith(".xml"):
                    try:
                        content = apk.read(file).decode(errors="ignore")
                        if any(k in content.lower() for k in login_keywords):
                            indicators.append(f"Strings in: {file}")
                    except:
                        continue
    except Exception as e:
        print(f"[-] Error analyzing {apk_path}: {e}")
        return False, []

    return len(indicators) > 0, indicators

def main():
    apps = parse_fdroid_index()
    apps_with_stars = []

    for app in apps:
        stars = get_github_stars(app["source_url"])
        app["stars"] = stars
        apps_with_stars.append(app)
        print(f"[✓] {app['id']} - {stars} stars")
        time.sleep(1.5)

    with open("all_packages.json", "w") as f:
        json.dump(apps_with_stars, f, indent=2)

    top_apps = sorted(apps_with_stars, key=lambda x: x["stars"], reverse=True)[:TOP_N]
    with open("top100_packages.json", "w") as f:
        json.dump(top_apps, f, indent=2)

    login_apps = []
    os.makedirs(APK_LOGIN_DIR, exist_ok=True)

    for app in top_apps:
        apk_path = download_apk(app["id"])
        time.sleep(2)
        has_login, indicators = analyze_apk_for_login(apk_path)
        if has_login:
            login_apps.append({**app, "indicators": indicators})
            os.system(f"cp '{apk_path}' '{APK_LOGIN_DIR}/'")
            print(f"[✓] LOGIN DETECTED for {app['id']}")
        else:
            print(f"[-] No login for {app['id']}")

    with open("login_apps.json", "w") as f:
        json.dump(login_apps, f, indent=2)

    print("[✓] Done. Login apps extracted.")

if __name__ == "__main__":
    main()

