import os
import re
import time
import json
import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin, urlparse
import zipfile
import tempfile
from pathlib import Path

# Configuration
GITHUB_TOKEN = "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"
HEADERS = {"Authorization": f"token {GITHUB_TOKEN}"}
FDROID_BASE = "https://f-droid.org"
APK_SAVE_DIR = "apks"
TOP_N = 100
ANALYSIS_DIR = "analysis_results"

class FDroidCrawler:
    def __init__(self):
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        })

    def get_fdroid_packages(self):
        """Get package links from F-Droid browse page"""
        print("[+] Crawling F-Droid for packages...")
        packages = []

        # Try different approaches to get packages
        urls_to_try = [
            f"{FDROID_BASE}/packages/",
            f"{FDROID_BASE}/en/packages/",
            f"{FDROID_BASE}/browse/"
        ]

        for base_url in urls_to_try:
            try:
                response = self.session.get(base_url, timeout=10)
                if response.status_code == 200:
                    packages = self._parse_package_list(response.text, base_url)
                    if packages:
                        print(f"[+] Successfully found packages using {base_url}")
                        break
            except Exception as e:
                print(f"[-] Failed to access {base_url}: {e}")
                continue

        # Fallback: Use F-Droid API
        if not packages:
            packages = self._get_packages_from_api()

        print(f"[+] Found {len(packages)} packages total")
        return packages

    def _parse_package_list(self, html_content, base_url):
        """Parse HTML to extract package information"""
        soup = BeautifulSoup(html_content, 'html.parser')
        packages = []

        # Try multiple selectors for different F-Droid layouts
        selectors = [
            'a[href*="/packages/"]',
            '.package-header a',
            '.packagelink',
            'a[href^="/en/packages/"]'
        ]

        for selector in selectors:
            links = soup.select(selector)
            if links:
                print(f"[+] Using selector: {selector}")
                for link in links:
                    href = link.get('href')
                    if href and '/packages/' in href:
                        full_url = urljoin(FDROID_BASE, href)
                        package_id = self._extract_package_id(href)
                        if package_id:
                            packages.append({
                                'id': package_id,
                                'url': full_url,
                                'name': link.get_text(strip=True) or package_id
                            })
                break

        return packages

    def _get_packages_from_api(self):
        """Fallback: Get packages from F-Droid index API"""
        print("[+] Trying F-Droid API as fallback...")
        try:
            api_url = "https://f-droid.org/api/v1/packages"
            response = self.session.get(api_url, timeout=15)
            if response.status_code == 200:
                data = response.json()
                packages = []
                for pkg in data[:500]:  # Limit to first 500
                    packages.append({
                        'id': pkg.get('packageName', ''),
                        'url': f"{FDROID_BASE}/packages/{pkg.get('packageName', '')}",
                        'name': pkg.get('name', pkg.get('packageName', ''))
                    })
                return packages
        except Exception as e:
            print(f"[-] API fallback failed: {e}")
        return []

    def _extract_package_id(self, href):
        """Extract package ID from URL"""
        match = re.search(r'/packages/([^/]+)', href)
        return match.group(1) if match else None

    def get_github_info(self, package_url):
        """Extract GitHub URL and get star count"""
        try:
            response = self.session.get(package_url, timeout=10)
            if response.status_code != 200:
                return None, 0

            soup = BeautifulSoup(response.text, 'html.parser')

            # Look for GitHub links
            github_patterns = [
                r'https?://github\.com/[^/\s]+/[^/\s]+',
                r'github\.com/[^/\s]+/[^/\s]+'
            ]

            github_url = None
            for link in soup.find_all('a', href=True):
                href = link['href']
                for pattern in github_patterns:
                    if re.search(pattern, href):
                        github_url = href if href.startswith('http') else f"https://{href}"
                        break
                if github_url:
                    break

            if not github_url:
                return None, 0

            # Get GitHub stars
            stars = self._get_github_stars(github_url)
            return github_url, stars

        except Exception as e:
            print(f"[-] Error processing {package_url}: {e}")
            return None, 0

    def _get_github_stars(self, repo_url):
        """Get star count from GitHub API"""
        try:
            match = re.search(r'github\.com/([^/]+)/([^/]+)', repo_url)
            if not match:
                return 0

            owner, repo = match.groups()
            repo = repo.rstrip('/')  # Remove trailing slash

            api_url = f"https://api.github.com/repos/{owner}/{repo}"
            response = self.session.get(api_url, headers=HEADERS, timeout=10)

            if response.status_code == 200:
                return response.json().get('stargazers_count', 0)
            else:
                print(f"[-] GitHub API error for {owner}/{repo}: {response.status_code}")
                return 0

        except Exception as e:
            print(f"[-] Error getting stars for {repo_url}: {e}")
            return 0

    def get_apk_download_url(self, package_url):
        """Find APK download URL"""
        try:
            response = self.session.get(package_url, timeout=10)
            if response.status_code != 200:
                return None

            soup = BeautifulSoup(response.text, 'html.parser')

            # Look for APK download links
            for link in soup.find_all('a', href=True):
                href = link['href']
                if href.endswith('.apk') or 'download' in href.lower():
                    return urljoin(package_url, href)

            return None

        except Exception as e:
            print(f"[-] Error finding APK for {package_url}: {e}")
            return None

    def download_apk(self, apk_url, package_name):
        """Download APK file"""
        if not apk_url:
            return None

        try:
            os.makedirs(APK_SAVE_DIR, exist_ok=True)
            filename = os.path.join(APK_SAVE_DIR, f"{package_name}.apk")

            print(f"[+] Downloading {package_name}...")
            response = self.session.get(apk_url, stream=True, timeout=30)
            response.raise_for_status()

            with open(filename, 'wb') as f:
                for chunk in response.iter_content(chunk_size=8192):
                    f.write(chunk)

            return filename

        except Exception as e:
            print(f"[-] Failed to download {package_name}: {e}")
            return None

    def analyze_apk_for_login(self, apk_path):
        """Analyze APK for login functionality"""
        if not apk_path or not os.path.exists(apk_path):
            return False, []

        login_indicators = []

        try:
            with zipfile.ZipFile(apk_path, 'r') as apk:
                # Check AndroidManifest.xml for permissions
                try:
                    manifest = apk.read('AndroidManifest.xml')
                    # Look for authentication-related permissions
                    auth_permissions = [
                        'android.permission.AUTHENTICATE_ACCOUNTS',
                        'android.permission.GET_ACCOUNTS',
                        'android.permission.USE_CREDENTIALS',
                        'android.permission.MANAGE_ACCOUNTS'
                    ]

                    manifest_str = str(manifest)
                    for perm in auth_permissions:
                        if perm in manifest_str:
                            login_indicators.append(f"Permission: {perm}")
                except:
                    pass

                # Check for common login-related files/strings
                login_keywords = [
                    'login', 'signin', 'authenticate', 'password',
                    'credentials', 'oauth', 'token', 'session'
                ]

                for file_info in apk.filelist:
                    filename = file_info.filename.lower()

                    # Check filenames
                    for keyword in login_keywords:
                        if keyword in filename:
                            login_indicators.append(f"File: {file_info.filename}")
                            break

                    # Check string resources
                    if filename.endswith('.xml') and 'res/values' in filename:
                        try:
                            content = apk.read(file_info.filename).decode('utf-8', errors='ignore')
                            for keyword in login_keywords:
                                if keyword in content.lower():
                                    login_indicators.append(f"String resource: {keyword}")
                                    break
                        except:
                            continue

            has_login = len(login_indicators) > 0
            return has_login, login_indicators

        except Exception as e:
            print(f"[-] Error analyzing {apk_path}: {e}")
            return False, []

def main():
    crawler = FDroidCrawler()

    # 1: Get all packages
    packages = crawler.get_fdroid_packages()
    if not packages:
        print("[-] No packages found. Exiting.")
        return

    # 2: Get GitHub info and filter by stars
    print("[+] Getting GitHub information...")
    enriched_packages = []

    for i, pkg in enumerate(packages[:500]):  # Limit to avoid rate limits
        print(f"[+] Processing {i+1}/{min(500, len(packages))}: {pkg['name']}")

        github_url, stars = crawler.get_github_info(pkg['url'])
        if github_url and stars > 0:
            pkg['github_url'] = github_url
            pkg['stars'] = stars
            enriched_packages.append(pkg)
            print(f"    ✓ {stars} stars")

        time.sleep(1)  # Rate limiting

    # Sort by stars and get top 100 apps
    enriched_packages.sort(key=lambda x: x['stars'], reverse=True)
    top_packages = enriched_packages[:TOP_N]

    print(f"[+] Top {len(top_packages)} packages by GitHub stars:")
    for pkg in top_packages[:10]:  # Show top 10
        print(f"    {pkg['name']}: {pkg['stars']} stars")

    # Save package info
    with open('top_packages.json', 'w') as f:
        json.dump(top_packages, f, indent=2)

    # Download APKs and analyze for login
    os.makedirs(ANALYSIS_DIR, exist_ok=True)
    analysis_results = []

    print(f"\n[+] Downloading and analyzing top {len(top_packages)} APKs...")

    for i, pkg in enumerate(top_packages):
        print(f"\n[+] Processing {i+1}/{len(top_packages)}: {pkg['name']}")

        # Get APK download URL
        apk_url = crawler.get_apk_download_url(pkg['url'])
        if not apk_url:
            print(f"    [-] No APK download found")
            continue

        # Download APK
        apk_path = crawler.download_apk(apk_url, pkg['id'])
        if not apk_path:
            continue

        # Analyze for login functionality
        has_login, indicators = crawler.analyze_apk_for_login(apk_path)

        result = {
            'package_id': pkg['id'],
            'name': pkg['name'],
            'stars': pkg['stars'],
            'github_url': pkg['github_url'],
            'fdroid_url': pkg['url'],
            'has_login': has_login,
            'login_indicators': indicators,
            'apk_path': apk_path
        }

        analysis_results.append(result)

        if has_login:
            print(f"    ✓ LOGIN DETECTED - {len(indicators)} indicators")
            for indicator in indicators[:3]:  # Show first 3
                print(f"      - {indicator}")
        else:
            print(f"    - No clear login functionality detected")

        time.sleep(2)  # Rate limiting

    # Step 5: Save results
    login_apps = [app for app in analysis_results if app['has_login']]

    with open(os.path.join(ANALYSIS_DIR, 'all_analysis.json'), 'w') as f:
        json.dump(analysis_results, f, indent=2)

    with open(os.path.join(ANALYSIS_DIR, 'login_apps.json'), 'w') as f:
        json.dump(login_apps, f, indent=2)

    # Summary
    print(f"\n{'='*50}")
    print(f"ANALYSIS COMPLETE")
    print(f"{'='*50}")
    print(f"Total apps analyzed: {len(analysis_results)}")
    print(f"Apps with login functionality: {len(login_apps)}")
    print(f"Success rate: {len(login_apps)/len(analysis_results)*100:.1f}%")

    print(f"\nTop apps with login functionality:")
    for app in login_apps[:10]:
        print(f"  • {app['name']} ({app['stars']} stars)")
        print(f"    Indicators: {len(app['login_indicators'])}")

    print(f"\nResults saved to:")
    print(f"  • {ANALYSIS_DIR}/all_analysis.json")
    print(f"  • {ANALYSIS_DIR}/login_apps.json")
    print(f"  • APKs in {APK_SAVE_DIR}/")

if __name__ == "__main__":
    print("F-Droid APK Crawler with Login Detection")
    print("="*50)
    main()