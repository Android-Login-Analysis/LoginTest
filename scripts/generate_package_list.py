import zipfile

# Path to the APK you want to test
apk_path = "apks/org.jitsi.meet.apk"

# Keywords to search for (can expand later)
keywords = [
    "login", "sign in", "signin", "sign-in", "auth", "authentication",
    "username", "password", "email", "token", "user", "credentials", "account"
]

print(f"[*] Scanning {apk_path} for login-related keywords...\n")

with zipfile.ZipFile(apk_path, 'r') as zip_ref:
    matches = []
    for file in zip_ref.namelist():
        if any(file.endswith(ext) for ext in [".xml", ".json", ".txt", ".html", ".smali"]):
            try:
                content = zip_ref.read(file).decode(errors="ignore").lower()
                if any(k in content for k in keywords):
                    matches.append(file)
                    print(f"[✓] Keyword match in: {file}")
            except Exception:
                continue

if not matches:
    print("[-] No login-related keywords found.")
else:
    print(f"\n[✓] Found login keywords in {len(matches)} file(s).")
