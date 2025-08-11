# scripts/download_known_login_apks.py  (stdlib only: no bs4 needed)
import os, re, time
import requests
from html.parser import HTMLParser
from urllib.parse import urljoin
from known_login_apps import known_login_ids

FDROID_PAGE_URL_TEMPLATE = "https://f-droid.org/en/packages/{}/"
APK_BASE_URL = "https://f-droid.org"
APK_SAVE_DIR = "known_login_apks"
os.makedirs(APK_SAVE_DIR, exist_ok=True)

SESSION = requests.Session()
SESSION.headers.update({"User-Agent": "apk-fetcher/1.0"})
TIMEOUT = 25

APK_RE = re.compile(r'/((repo|archive))/([A-Za-z0-9._-]+)\.apk$')   # …/repo/<name>.apk or …/archive/<name>.apk
VC_RE  = re.compile(r'_(\d+)\.apk$')                                # versionCode suffix

class LinkCollector(HTMLParser):
    def __init__(self): super().__init__(); self.hrefs = []
    def handle_starttag(self, tag, attrs):
        if tag != "a": return
        href = dict(attrs).get("href")
        if href: self.hrefs.append(href)

def pick_best_apk(hrefs, package_id):
    """Choose APK link under /repo or /archive that matches the exact package; prefer max versionCode."""
    candidates = []
    for href in hrefs:
        m = APK_RE.search(href)
        if not m: 
            continue
        filename = m.group(3) # e.g., com.example.app_12345
        if not (filename.startswith(package_id + "_") or filename == package_id):
            continue
        vc_match = VC_RE.search(filename)
        vc = int(vc_match.group(1)) if vc_match else -1
        candidates.append((vc, href, filename + ".apk"))
    if not candidates:
        return None
    candidates.sort(key=lambda x: x[0], reverse=True)
    return candidates[0]  # (versionCode, href, filename.apk)

def download_apk(package_id):
    page_url = FDROID_PAGE_URL_TEMPLATE.format(package_id)
    print(f"[*] Checking {page_url}")
    try:
        r = SESSION.get(page_url, timeout=TIMEOUT)
        r.raise_for_status()
        parser = LinkCollector()
        parser.feed(r.text)
        choice = pick_best_apk(parser.hrefs, package_id)
        if not choice:
            print(f"[-] No matching APK link found for {package_id} (page may not list direct APKs)")
            return
        _, href, filename = choice
        apk_url = urljoin(APK_BASE_URL, href)
        local_path = os.path.join(APK_SAVE_DIR, filename)
        print(f"[+] Downloading {apk_url} -> {local_path}")
        with SESSION.get(apk_url, stream=True, timeout=TIMEOUT) as d:
            d.raise_for_status()
            with open(local_path, "wb") as f:
                for chunk in d.iter_content(128 * 1024):
                    if chunk: f.write(chunk)
        print(f"[✓] Downloaded {package_id} as {filename}")
        time.sleep(0.3)
    except Exception as e:
        print(f"[!] Error downloading {package_id}: {e}")

def main():
    for pkg in known_login_ids:
        download_apk(pkg)

if __name__ == "__main__":
    main()
