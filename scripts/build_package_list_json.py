import json
import requests
from bs4 import BeautifulSoup

FDROID_URL_BASE = "https://f-droid.org/en/packages/"
INPUT_FILE = "last_segments.txt"
OUTPUT_FILE = "package_list.json"

def build_package_entry(pkg_id):
    url = FDROID_URL_BASE + pkg_id + "/"
    try:
        r = requests.get(url, timeout=10)
        if r.status_code != 200:
            return None
        soup = BeautifulSoup(r.text, "html.parser")
        name_tag = soup.select_one(".package-header h3")
        name = name_tag.text.strip() if name_tag else pkg_id
        github_url = None
        for a in soup.select("a.package-link"):
            href = a.get("href", "")
            if "github.com" in href:
                github_url = href
                break
        return {
            "id": pkg_id,
            "url": url,
            "name": name,
            "github_url": github_url
        }
    except Exception as e:
        print(f"[-] Failed to process {pkg_id}: {e}")
        return None

def main():
    with open(INPUT_FILE) as f:
        package_ids = [line.strip() for line in f.readlines() if line.strip()]

    print(f"[+] Processing {len(package_ids)} packages...")
    results = []
    for i, pkg_id in enumerate(package_ids):
        entry = build_package_entry(pkg_id)
        if entry:
            results.append(entry)
        if i % 100 == 0 and i > 0:
            print(f"[✓] Processed {i} packages")

    with open(OUTPUT_FILE, "w") as f:
        json.dump(results, f, indent=2)

    print(f"[✓] Saved {len(results)} entries to {OUTPUT_FILE}")

if __name__ == "__main__":
    main()
