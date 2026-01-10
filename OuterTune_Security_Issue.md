# Security Issue: Authentication Tokens Stored in Plaintext

## Description
All authentication tokens (YouTube session token, visitor data, DataSync ID) are stored in plaintext in DataStore without encryption.

## Expected Behaviour
Tokens should be encrypted using EncryptedSharedPreferences or Android Keystore before storage.

## Actual Behaviour
Tokens are stored in plaintext at `/data/data/com.dd3boh.outertune/files/datastore/settings.preferences_pb` and can be extracted with root or ADB access.

## Steps to Reproduce
1. Sign in with Google account in the app
2. Run `adb pull /data/data/com.dd3boh.outertune/files/datastore/settings.preferences_pb`
3. Open the file and observe all tokens visible in plaintext

## Affected Code
- `LoginScreen.kt#69`: `innerTubeCookie = CookieManager.getInstance().getCookie(url)`
- `LoginScreen.kt#91,97`: JavaScript interface stores tokens without validation
- `DataStore.kt#68`: `it[key] = value` (no encryption)

## Security Impact
Any malicious app with storage access or backup extraction can steal authentication tokens and hijack user accounts.

## Additional Issue
App crashes when screen is rotated on login page due to improper WebView state management (`LoginScreen.kt#123-125`).
