# LIFTDroid revision run notes (TSE major revision)

Branch: `revision/linux-run` (based on `feature/staticanalysis`, which holds the full tool; `master` is a skeleton).

## Environment that works

| Item | Setting |
|---|---|
| Host | Ubuntu 24.04 x86_64 VM (`multi-agent`), 48 cores, 244 GB RAM |
| Android | **redroid** Android 14 container (`redroid/redroid:14.0.0_64only-latest`), adb on `127.0.0.1:5555` only |
| Why not the emulator | the host is itself a VM without working nested virtualization (`KVM_CREATE_VM: EBUSY`) |
| Kernel | `binder_linux` from `linux-modules-extra-$(uname -r)` |
| Frida | 16.7.19 (paper version), Python venv `.fvenv`, x86_64 frida-server |
| Java | OpenJDK 17, Maven 3.8 |
| Env vars | `ANDROID_SERIAL=127.0.0.1:5555`, `LIFT_RESET_MODE=app` |
| Scripts (server `~`) | `run_app.sh <apk> [rounds] [timeout]`, `run_batch.sh <rounds> <apk...>`, `stop_all.sh`, `ui.sh` |

GitHub LFS budget for this repository is exhausted; clone with LFS smudge disabled and download
frida-server from the Frida releases page.

## Static analysis

Reproduces Table V exactly (Standard Notes: 98,531 methods, 3,974 hooked, 96.0% reduction, ~40-56 s).

## Bugs found and fixed in the tool

| # | Symptom | Root cause | Fix |
|---|---|---|---|
| 1 | App crashes as soon as hooks are installed (every platform) | Hooks called the generic dispatcher instead of the hooked overload and leaked JS errors into the app | Call the exact overload; isolate hook logic in try/catch |
| 2 | `JNI DETECTED ERROR: obj == null` abort | Build-time code shaded into the APK (`de.undercouch.gradle...GGSSchemeBase`) references missing `org.ietf.jgss` classes; Frida's method enumeration aborts | Reflection pre-flight per class; skip build-tool packages |
| 3 | `global reference table overflow (51200)` abort | Hot library internals (okhttp `Huffman$Node`) hooked; millions of calls leak JNI refs | Skip `okhttp3.internal.*`, `okio.*`; auto-unhook any method after 2,000 calls |
| 4 | App SIGSEGV when Frida restarts each round | Frida cannot safely unload ~2k ART hooks from a live process | In app-reset mode stop the app before detaching; controller unloads/detaches on SIGTERM |
| 5 | Launcher/dialer treated as login page | No foreground check; UI elements of other packages matched | Foreground check + relaunch; ignore nodes from other packages |
| 6 | Home screen with a "Sign in" link treated as login page | 2-of-4 vote without a password field | Require a password field (uiautomator `password="true"`) or SSO button, as in paper V-B |
| 7 | WebView/Compose password fields not found | Password detection only by text/id keywords | Use the `password` attribute; form-aware username/button lookup |
| 8 | Login screens behind menus never reached | Random Monkey only | Tap "Sign in"/"Account" entries (<=2 hops); launch manifest login activities directly; 8-min exploration cap |
| 9 | Valid logins almost never happened | Username and password sampled independently; `valid_pairs.csv` never read | Use a valid pair in 50% of attempts |
| 10 | Spurious `EXCESSIVE_LOGIN_DELAY` | Timer covered credential typing and stopped when input returned | Measure login click -> login page gone (paper V-C); ignore rejected invalid credentials |
| 11 | Spurious `STUCK_ON_LOGIN_SCREEN` | "Credentials typed" recorded as "login succeeded" | Success only if the login page disappears or a valid pair was used |
| 12 | App not relaunched after reset; permission dialogs block UI | `monkey -p` fails when another app owns focus | `AppLauncher`: resolve launcher activity, `am start`, allow permission dialogs |
| 13 | Emulator snapshots unavailable on redroid | `adb emu avd snapshot` only exists on the emulator | `LIFT_RESET_MODE=app`: force-stop, `pm clear`, re-grant permissions, relaunch |
| 14 | Stale logged-in session hides the login page | Round 1 started without a reset | App-level reset at every round |
| 15 | Exploration never ends | Up to 1,000 Monkey steps at ~20-80 s each | 8-minute cap per round |
| 16 | Invalid-credential rejections reported as login success + delay (Organic Maps) | The "Login error." dialog hides the form from uiautomator, so the form looked gone | Error dialog/snackbar = rejection; message text logged |
| 17 | Intermediate progress screen counted as login completion (NewsBlur) | Completion = first poll without a password field | Ignore screens with a ProgressBar; require two consecutive polls |
| 18 | Sign-up forms treated as login forms (Notesnook, R2-1) | Any screen with a password field counted | Two password inputs or a sign-up heading = registration; follow "Already have an account? Login" |
| 19 | Two-step logins (identifier, then password) stall | Tool expected both fields on one screen | Fill the identifier screen, continue, then enter the password |
| 20 | Network disruption had no effect on redroid | netem hard-coded to `wlan0`, never removed; "disable data" relied on `svc` | Interface from routing table; iptables `DROP` (adb port kept); netem on a prio band excluding adb; cleanup on restore. Host needs `sch_netem sch_prio cls_u32 iptable_filter` loaded |
| 21 | Credentials containing `'` could not be typed | `Runtime.exec(String)` and a bare single quote | Device-shell single-quote escaping (verified for all 51 special characters in the pools) |
| 23 | Native crash during text input reported as an app bug (Notesnook) | The SIGSEGV was raised through Frida hook trampolines (31 `frida-agent` frames in the crashing thread) | Exclude crashes whose crashing-thread backtrace (tombstone) or Java trace contains Frida frames; worth stating as a threat (instrumentation can perturb the app, R2-4) |
| 22 | Crash oracle reported other processes (system search app); ANR never detected; stack traces cut to 2 lines | No package filter; logcat filter dropped `ActivityManager`; continuation check assumed tab-prefixed lines | Filter by `Process:`/`ANR in`/native process name; listen to `ActivityManager:E` and `libc:F`; keep full traces |

### Fixes made during the targeted per-bug runs (2026-11-09)

| # | Symptom | Root cause | Fix |
|---|---|---|---|
| 24 | Invalid round never reached server-side handling (SN #4031/#4032) | One random special-character username per round; most are rejected client-side | Email-shaped special-character usernames, retried (up to 4) while the app rejects them |
| 25 | MFA after invalid credentials missed (SN #4032) | The MFA screen is a native React Native view over the WebView, or an MFA form inside the page; DOM-only wait | Web login wait checks native UI and page text for MFA prompts (`security key`, `two-factor`, ...) |
| 26 | Rejected Facebook login reported as accepted (Nora) | Page without password field / failed load counted as success | Login/challenge/error URLs and unreachable WebViews are not a completed login |
| 27 | Offline round never reached the form (Nora) | WebView error page does not reload after the network returns | Relaunch the app when loading the page on a normal network |
| 28 | Onboarding blocked (Aurora "Permissions") | Special access (install packages, all-files) is an app-op, not a runtime permission | Grant declared special app-ops on reset; `finish/accept/agree` onboarding entries |
| 29 | Credential-free login unsupported (Aurora Anonymous) | Only credential forms were tested | Guest/anonymous option used as the login method in odd rounds; judged like a valid login |
| 30 | Google sign-in page treated as registration form | "Create account" link | Sign-up text only counts without a sign-in heading |
| 31 | Login entry behind an unlabeled settings icon (OuterTune) | Entries found by text only; dead entries re-tapped | Unlabeled toolbar icon as last resort; tapped entries are not retried; settings/account entries |
| 32 | Username typed into search boxes (OuterTune native, SN web) | Any single input / any text input before the password | Identifier step requires an identifier hint and excludes search fields |
| 33 | App crashes in `GenericJniMethodEnd` after a few thousand calls (OuterTune, likely Notesnook/Tasks/InnerTune earlier) | Auto-unhook of hot methods raced with calls inside the hook trampoline | Hot methods pass through instead of being unhooked; crash-derived hook blacklist |
| 34 | Rotation never tested on Google identifier screens (Aurora #1436) | Navigation filled the identifier and moved on | Rotation phase stops at identifier-only web forms |

### Per-bug detection status (targeted runs, current code)

| App | Issue | Status | Oracle / evidence |
|---|---|---|---|
| Standard Notes | #4030 | detected (every round) | DOM rotation: input 23/12 -> 0/0 |
| Standard Notes | #4032 | detected | MFA_AFTER_INVALID_CREDENTIALS: "Please authenticate with your hardware security key." for `$0\`(X{M,]8@@`; also reproduced manually with `^=+.%*('gLR@` |
| Standard Notes | #4031, #3908, #3909 | open | "already signed in" / ANR not observed yet |
| Organic Maps | #11668, #11669, #11670 | detected | rotation A/B, differential error message |
| Nora | #106 | detected | DOM rotation B (submit busy -> idle) |
| Nora | #107 | blocked | Facebook now answers wrong passwords with a captcha from this IP |
| NewsBlur | #1996 | detected | |
| AuroraStore | #1435 | detected | plaintext `auth` / `PREFERENCE_AUTH_DATA` in SharedPreferences after Anonymous login |
| AuroraStore | #1436 | detected | typed Google identifier lost on rotation |
| AuroraStore | #1437 | pending | limited/offline Anonymous login rounds |
| OuterTune | #964 | partial | rotation reloads the Google login WebView (password -> identifier step, input lost); no crash in release 0.10.0 (issue used a debug build) |
| OuterTune | #965 | needs Google login | |
| Notesnook | #6640, #6647 | not reproducible | both fixed upstream; 3.0.18 (affected version) logs in but its post-login sync never finishes against today's server, blocking the 2FA settings flow; the login MFA prompt is dismissable |
| InnerTune | #1830 | pending | |
| InnerTune | #1831, #1860, #1861 | need Google login | |
| Tasks | #3962 | needs Google Play services image | |
| OpenTune | #345, #346 | unavailable | repository taken down (HTTP 451) |

Items 2, 3, 9-11, 16-18 and 20-22 change the tool's behaviour in ways that matter for the paper's numbers (instrumentation
scope, credential policy, oracle definitions). Table V and the precision figures must be recomputed with this code.

## Observations relevant to reviewer comments

- **R2-4 (obfuscation):** NewsBlur's F-Droid build is R8-obfuscated (`l1.Y.a0`), yet login states were still
  reconstructed (27 API calls / round, `Authenticating -> CredentialInput -> Authenticating -> NetworkError`).
- **R2-8 (oracle FPs):** bugs 10 and 11 were systematic FP sources in the original oracles.
- **WebView apps:** Standard Notes authenticates inside a WebView (JS `fetch`), so Java hooks see ~2 calls per
  round. This is a real limitation to state in the paper.
- About 3,543 of Standard Notes' 3,974 "auth-related" methods come from the `IR_LoginEvidence` category, many of
  them library internals.

## Open items needing the authors

1. **Valid test accounts**: only NewsBlur has `valid_pairs.csv`. Other apps cannot reach post-login states.
2. **APK versions**: OuterTune 0.10.0 (tested commit 2025-11-05), AuroraStore 4.7.5 (tested commit 2025-10-26,
   between 4.7.5 and 4.8.1), Twire 2.12.3. OpenTune's GitHub repository returns HTTP 451 (taken down); Nora's
   repository is unidentified.
3. Rotate the passwords committed under `pools/` and purge them from history before publishing.
