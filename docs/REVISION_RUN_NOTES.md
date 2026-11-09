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

Items 2, 3 and 9-11 change the tool's behaviour in ways that matter for the paper's numbers (instrumentation
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
