import os
import re
import time
import json
import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin

FDROID_BASE = "https://f-droid.org/en/packages/"
APK_SAVE_DIR = "apks"
GITHUB_API = "https://api.github.com/repos/"
TOP_N = 100
GITHUB_TOKEN = "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"
HEADERS = {"Authorization": f"token {GITHUB_TOKEN}"}

def crawl_fdroid_package_links():
    print("[+] Crawling F-Droid for package links...")
    base_url = "https://f-droid.org/en/packages/"
    res = requests.get(base_url)
    soup = BeautifulSoup(res.text, "html.parser")
    links = [urljoin(base_url, a['href']) for a in soup.select('a[href*="/packages/"]') if "/packages/" in a['href']]
    print(f"[+] Found {len(links)} packages.")
    return list(set(links))  # Remove duplicates

def extract_github_url(pkg_url):
    res = requests.get(pkg_url)
    if res.status_code != 200:
        return None, None, None
    soup = BeautifulSoup(res.text, "html.parser")
    app_id = pkg_url.rstrip('/').split('/')[-1]
    title_tag = soup.find("h3")
    name = title_tag.text.strip() if title_tag else app_id
    github_link = None
    for a in soup.find_all("a", href=True):
        href = a['href']
        if "github.com" in href:
            github_link = href
            break
    return app_id, name, github_link

def get_github_stars(github_url):
    match = re.search(r"github.com/([\w\-\.]+)/([\w\-\.]+)", github_url)
    if not match:
        return 0
    owner, repo = match.groups()
    api_url = f"{GITHUB_API}{owner}/{repo}"
    res = requests.get(api_url, headers=HEADERS)
    if res.status_code != 200:
        return 0
    return res.json().get("stargazers_count", 0)

def get_apk_url(pkg_url):
    res = requests.get(pkg_url)
    if res.status_code != 200:
        return None
    soup = BeautifulSoup(res.text, "html.parser")
    link = soup.find("a", href=re.compile(r"\.apk$"))
    return urljoin(pkg_url, link['href']) if link else None

def download_apk(apk_url, app_id):
    if not apk_url:
        print(f"[-] No APK found for {app_id}")
        return
    os.makedirs(APK_SAVE_DIR, exist_ok=True)
    filepath = os.path.join(APK_SAVE_DIR, f"{app_id}.apk")
    try:
        with requests.get(apk_url, stream=True) as r:
            r.raise_for_status()
            with open(filepath, "wb") as f:
                for chunk in r.iter_content(chunk_size=8192):
                    f.write(chunk)
        print(f"[+] Downloaded {app_id}.apk")
    except Exception as e:
        print(f"[-] Failed to download {app_id}: {e}")

def main():
    links = crawl_fdroid_package_links()
    data = []
    for link in links:
        app_id, name, github_url = extract_github_url(link)
        if github_url:
            stars = get_github_stars(github_url)
            data.append({
                "id": app_id,
                "url": link,
                "name": name,
                "github_url": github_url,
                "stars": stars
            })
            print(f"[+] {app_id}: {stars} stars")
        time.sleep(1)

    top_apps = sorted(data, key=lambda x: x['stars'], reverse=True)[:TOP_N]

    with open("top100_packages.json", "w") as f:
        json.dump(top_apps, f, indent=2)

    for app in top_apps:
        apk_url = get_apk_url(app['url'])
        download_apk(apk_url, app['id'])
        time.sleep(1)

    print("[✓] All Done.")

if __name__ == "__main__":
    main()
