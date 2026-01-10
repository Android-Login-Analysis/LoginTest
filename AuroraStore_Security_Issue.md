# Security Issue: Authentication Tokens Stored in Plaintext

## Description

Critical security vulnerability: all authentication credentials (email, AAS token, Auth token, and complete AuthData JSON) are stored in **plaintext** in SharedPreferences without any encryption.

**Affected Code:**
- `AccountProvider.kt` line 67-74
- `AuthProvider.kt` line 144

```kotlin
// AccountProvider.kt
Preferences.putString(context, Constants.ACCOUNT_EMAIL_PLAIN, email)
if (tokenType == AuthHelper.Token.AAS) {
    Preferences.putString(context, Constants.ACCOUNT_AAS_PLAIN, token)  // ⚠️ Plaintext
} else {
    Preferences.putString(context, Constants.ACCOUNT_AUTH_PLAIN, token)  // ⚠️ Plaintext
}

// AuthProvider.kt
Preferences.putString(context, PREFERENCE_AUTH_DATA, json.encodeToString(authData))  // ⚠️ Plaintext JSON
```

**Security Impact:**
- Any app with root access can read these credentials
- Backup files expose authentication tokens
- ADB access allows credential extraction
- Tokens remain valid until explicitly revoked

## Expected Behaviour

All authentication data should be stored using **Android Keystore** or **EncryptedSharedPreferences**:
- Tokens encrypted at rest
- Hardware-backed encryption when available
- Protection against unauthorized access

## Actual Behaviour

Authentication tokens are stored in plaintext XML files at:
```
/data/data/com.aurora.store/shared_prefs/PREFERENCE_DEFAULT.xml
```

Anyone with file system access can read:
- User email
- Google AAS/Auth tokens
- Complete AuthData including deviceConfigToken

## Steps to Reproduce

1. Install AuroraStore and sign in with Google account (or use Anonymous login)
2. On rooted device or with ADB access, run:
   ```bash
   adb shell
   su
   cat /data/data/com.aurora.store/shared_prefs/PREFERENCE_DEFAULT.xml
   ```
3. Observe all authentication tokens visible in plaintext
4. Alternative: Use Frida to hook `SharedPreferences.Editor.putString()` and monitor stored values

## Recommended Fix

Replace `Preferences.putString()` with encrypted storage:

```kotlin
// Use EncryptedSharedPreferences
val masterKey = MasterKey.Builder(context)
    .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
    .build()

val encryptedPrefs = EncryptedSharedPreferences.create(
    context,
    "secure_prefs",
    masterKey,
    EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
    EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
)

encryptedPrefs.edit()
    .putString(Constants.ACCOUNT_AAS_PLAIN, token)
    .apply()
```

## Environment
- AuroraStore version: [latest from repo]
- Android version: All versions affected
- Device: Any device (issue is in app code)
