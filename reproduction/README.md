# Reproduction of the reported login bugs

This folder holds the evidence for every reported issue that the current LIFTDroid code detects on an
unmodified (official) build of the app.

- `real/<app>.log` — one representative run log per app (current code, 4–5 rounds). Credentials are redacted.
  The `grep` column below finds the evidence line in that log.
- `apks.sha256` — the APKs that were tested, with checksums and version names. The APK files themselves are kept
  in `reproduction/apks/` on the test machine and are distributed with the artifact (they are not committed:
  the repository has no LFS quota).
- `seeded/` — runs on fault-seeded builds. These are a separate experiment and are **not** counted as
  reproductions of the reported issues.

| Issue | App / version (APK) | Oracle | `grep` in `real/<app>.log` |
|---|---|---|---|
| standardnotes/forum#4030 | Standard Notes 3.198.14 (`com.standardnotes_3003169.apk`) | rotation: input retention (DOM) | `ROTATION_INPUT_LOST` |
| standardnotes/forum#4032 | Standard Notes 3.198.14 | invalid credentials reach MFA | `MFA_AFTER_INVALID_CREDENTIALS` |
| organicmaps#11668 | Organic Maps 2025.08.06 (`app.organicmaps_25080604.apk`) | rotation: error message retention | `ROTATION_ERROR_MESSAGE_LOST` |
| organicmaps#11669 | Organic Maps 2025.08.06 | rotation: in-flight login reset | `ROTATION_LOGIN_STATE_RESET` |
| organicmaps#11670 | Organic Maps 2025.08.06 | differential error message | `Same message for wrong credentials and network failure` |
| nonbili/Nora#106 | Nora 0.4.4 (`jp.nonbili.nora_v0.4.4.apk`) | rotation: in-flight login reset (DOM) | `ROTATION_LOGIN_STATE_RESET` |
| newsblur#1996 | NewsBlur 13.5.3 (`com.newsblur_240.apk`) | password in Intent extra | `PASSWORD_IN_INTENT_EXTRA` |
| AuroraStore#1435 | AuroraStore 4.7.5 (`com.aurora.store_4.7.5.apk`) | plaintext auth data in storage | `PREFERENCE_AUTH_DATA` |
| AuroraStore#1436 | AuroraStore 4.7.5 | rotation: identifier retention (Google WebView) | `Typed identifier lost on rotation` |
| InnerTune#1861 | InnerTune 0.5.10 (`com.zionhuang.music_26.apk`) | plaintext auth data in storage (DataStore) | `innerTubeCookie` |
| OuterTune#965 | OuterTune 0.10.0 (`com.dd3boh.outertune_v0.10.0.apk`) | plaintext auth data in storage (DataStore) | `innerTubeCookie` |

## Running one app

```bash
# on the test machine (redroid device on 127.0.0.1:5555, see docs/REVISION_RUN_NOTES.md)
ANDROID_SERIAL=127.0.0.1:5555 LIFT_RESET_MODE=app ~/run_app.sh <apk-name> 5
```

Rounds follow a fixed schedule: (normal, valid), (normal, invalid special-character username), (limited, valid),
(offline, valid), (unresponsive, valid). Apps that need a real account read it from `pools/<package>*/`
(`valid_pairs.csv`, `google_accounts.txt`, ...); those files are not part of the artifact.
