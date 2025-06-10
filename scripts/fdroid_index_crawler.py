import os
import json
import time
import requests
import xml.etree.ElementTree as ET
from urllib.parse import urljoin

# === CONFIG ===
FDROID_INDEX_URL = "https://f-droid.org/repo/index.xml"
APK_BASE_URL = "https://f-droid.org"
APK_SAVE_DIR = "apks"
TOP_N = 100
GITHUB_TOKEN = "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"
HEADERS = {"Authorization": f"token {GITHUB_TOKEN}"}

# 1: Parse index.xml
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

        apps.append({
            "id": package_id,
            "name": name,
            "source_url": source_url
        })

    print(f"[+] Extracted {len(apps)} apps with GitHub links.")
    return apps

# 2: Get GitHub stars
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

# 3: Download APK
def download_apk(package_id):
    apk_url = f"https://f-droid.org/en/packages/{package_id}/"
    print(f"[*] Checking {apk_url}")

    html = requests.get(apk_url).text
    hrefs = [line.split('href="')[1].split('"')[0]
             for line in html.splitlines()
             if ".apk" in line and 'href="' in line]

    if not hrefs:
        print(f"[-] No APK link found for {package_id}")
        return

    final_apk_url = urljoin(APK_BASE_URL, hrefs[0])
    os.makedirs(APK_SAVE_DIR, exist_ok=True)
    local_filename = os.path.join(APK_SAVE_DIR, f"{package_id}.apk")

    print(f"[+] Downloading {final_apk_url} -> {local_filename}")
    with requests.get(final_apk_url, stream=True) as r:
        with open(local_filename, "wb") as f:
            for chunk in r.iter_content(chunk_size=8192):
                f.write(chunk)

# MAIN
def main():
    apps = parse_fdroid_index()
    apps_with_stars = []

    for app in apps:
        stars = get_github_stars(app["source_url"])
        app["stars"] = stars
        apps_with_stars.append(app)  # FIX: Add the app to the list
        print(f"[✓] {app['id']} - {stars} stars")
        time.sleep(1.5)  # avoid GitHub rate limit

    # Save all apps with stars
    with open("all_packages.json", "w") as f:
        json.dump(apps_with_stars, f, indent=2)

    # Get top 100 apps and save them
    top_apps = sorted(apps_with_stars, key=lambda x: x["stars"], reverse=True)[:TOP_N]
    with open("top100_packages.json", "w") as f:
        json.dump(top_apps, f, indent=2)

    # Download APKs for top 100 apps
    for app in top_apps:
        download_apk(app["id"])
        time.sleep(2)

    print("[✓] Done. Top 100 APKs downloaded.")

if __name__ == "__main__":
    main()