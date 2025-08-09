import os
import requests
from urllib.parse import urljoin
from known_login_apps import known_login_ids

FDROID_PAGE_URL_TEMPLATE = "https://f-droid.org/en/packages/{}/"
APK_BASE_URL = "https://f-droid.org"
APK_SAVE_DIR = "known_login_apks"

os.makedirs(APK_SAVE_DIR, exist_ok=True)

def download_apk(package_id):
    page_url = FDROID_PAGE_URL_TEMPLATE.format(package_id)
    print(f"[*] Checking {page_url}")
    try:
        html = requests.get(page_url).text
        hrefs = [line.split('href="')[1].split('"')[0] for line in html.splitlines() if ".apk" in line and 'href="' in line]
        if not hrefs:
            print(f"[-] No APK link found for {package_id}")
            return

        apk_url = urljoin(APK_BASE_URL, hrefs[0])
        local_filename = os.path.join(APK_SAVE_DIR, f"{package_id}.apk")
        print(f"[+] Downloading {apk_url} -> {local_filename}")
        with requests.get(apk_url, stream=True) as r:
            with open(local_filename, "wb") as f:
                for chunk in r.iter_content(chunk_size=8192):
                    f.write(chunk)
        print(f"[✓] Downloaded {package_id}")
    except Exception as e:
        print(f"[!] Error downloading {package_id}: {e}")

def main():
    for package_id in known_login_ids:
        download_apk(package_id)

if __name__ == "__main__":
    main()