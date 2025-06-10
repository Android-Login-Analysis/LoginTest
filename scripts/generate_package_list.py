import requests

def fetch_fdroid_packages():
    url = "https://f-droid.org/repo/index-v1.json"
    try:
        response = requests.get(url)
        response.raise_for_status()
        data = response.json()
        packages = data.get("packages", {}).keys()

        with open("last_segments.txt", "w") as f:
            for pkg in packages:
                f.write(pkg + "\n")

        print(f"[✓] Extracted {len(packages)} packages to last_segments.txt")

    except Exception as e:
        print(f"[-] Failed to fetch packages: {e}")

if __name__ == "__main__":
    print("Generating package list from F-Droid index...")
    fetch_fdroid_packages()
