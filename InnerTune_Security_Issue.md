# Security Issue: Authentication Tokens Stored in Plaintext

## Description
All authentication tokens (YouTube session token, Discord OAuth token, visitor data) are stored in plaintext in DataStore without encryption.

## Expected Behaviour
Tokens should be encrypted using EncryptedSharedPreferences or Android Keystore before storage.

## Actual Behaviour
Tokens are stored in plaintext at `/data/data/com.zionhuang.music/files/datastore/settings.preferences_pb` and can be extracted with root or ADB access.

## Steps to Reproduce
1. Sign in with Google account in the app
2. Run `adb pull /data/data/com.zionhuang.music/files/datastore/settings.preferences_pb`
3. Open the file and observe all tokens visible in plaintext

## Affected Code
- `LoginScreen.kt#62`: `innerTubeCookie = CookieManager.getInstance().getCookie(url)`
- `DiscordLoginScreen.kt#88`: `discordToken = token`
- `DataStore.kt#64`: `it[key] = value` (no encryption)

## Security Impact
Any malicious app with storage access or backup extraction can steal authentication tokens and hijack user accounts.
