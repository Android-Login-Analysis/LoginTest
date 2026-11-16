# Experiment datasets for the TSE revision (R2-8a recall, R2-9 LLM-agent baseline)

Built on 2026-11-16. Nothing here has been run yet; these files only fix *which* apps, APKs and issues the
experiments will use. Nothing has been committed.

| File | Content |
|---|---|
| `dataset_a_bugs.csv` | Dataset A: the 15 reported login bugs reproduced so far, with the exact APK (server path, version, SHA-256), oracle and evidence |
| `dataset_b_candidates.csv` | Dataset B: 14 candidate apps that were not used in the paper (8 marked `RECOMMENDED`, 5 `backup`, 1 `not recommended`) |
| `dataset_b_issues.csv` | The 46 candidate login issues behind `dataset_b_candidates.csv` (one row per issue: state, date, affected version, APK for that version, matching oracle, reproducibility estimate) |

## Dataset A (reproduced bugs)

Sources: `reproduction/README.md`, `reproduction/apks.sha256` and `docs/REVISION_RUN_NOTES.md` (branch
`revision/linux-run`), plus read-only checks on `multi-agent`:

- APK package and version: `aapt dump badging` (build-tools 34.0.0) on `~/LoginTest/reproduction/apks/*.apk`,
  `apps/org.tasks_140712.apk`, `apps/seeded/com.zionhuang.music_0.5.10.apk`.
- SHA-256: copied from `reproduction/apks.sha256`. Computed with `sha256sum` on the server for the three APKs
  not listed there (Tasks 14.7.4 official, seeded InnerTune 0.5.10). The Notesnook 3.0.20 hash matches the file.
- `account_in_pool`: from file names in `~/LoginTest/pools/<package>*/` only (`valid_pairs.csv`,
  `google_valid_pairs.csv`, `totp_secrets.csv`). File contents were not read.
- Issue titles, states and dates: checked through the GitHub and GitLab APIs. All 15 issue URLs resolve.

Points to check:

1. **Tasks.org #3962 (manual)**: no written record of the manual reproduction exists in the repo or on the
   server. The tool runs on the GApps device (`/tmp/run_gapps_org.tasks_140712*.log`) record no finding for
   #3962. Please write down the steps, device (`redroid_gapps`, 5558), date and observed time. The APK
   (`apps/org.tasks_140712.apk`, 14.7.4) does not record whether it came from Play or F-Droid.
2. **InnerTune #1830 (seeded)**: the ANR evidence is only in
   `multi-agent:/tmp/run_seededC_com.zionhuang.music_0.5.10.log` (code `da10beb4`). `/tmp` does not survive a
   reboot, so copy it to `reproduction/seeded/` (that folder does not exist yet, although the README mentions it).
   The seeded APK hash (`43bbfe…`) differs from the official 0.5.10 (`e30fac…`), as expected.
3. **Notesnook #6640/#6647**: `reproduction/README.md` reports them as detected on official 3.0.20, but the
   "Per-bug detection status" table in `REVISION_RUN_NOTES.md` still says "not reproducible" (that table
   reflects the earlier 3.0.18 runs). Update the run notes.
4. **Nora #106**: there is no valid Nora/Facebook account in the pool (`account_in_pool = no`). #106 does not
   need one. #107 does.

## Dataset B (unseen apps for recall)

### Selection criteria (applied per app, recorded in the CSVs)

- Open source on GitHub, with an official APK from F-Droid (`f-droid.org/repo` or `/archive`) or GitHub
  releases. The URL and version are recorded.
- A login flow of a kind LIFTDroid supports: native form, WebView form, or SSO. The login type is recorded,
  including whether the login page leaves the app's package (a Custom Tab or external browser).
- A tester can get an account for free: self-hosted server (Docker), public instance, or free sign-up.
- Runs on Android 14 x86_64: `minSdkVersion` at most 34 and `nativecode` containing `x86_64` or no native
  libraries. Taken from the F-Droid index. Bitwarden's APK was downloaded and its `lib/` folder listed.
- Login-related issues in the tracker (crash, hang/timeout, misleading error, MFA, state loss, session,
  credential storage). An issue is counted only if it concerns the Android app's login flow.
- No overlap with the paper (see the exclusion list below). Variety across categories and activity (stars
  and last push checked through the GitHub search API; all repos were pushed in 2026, none archived).

Sources (2026-11-16): the F-Droid `index-v1.json` and `archive/index-v1.json`, and the GitHub REST API
(unauthenticated: issue search with `login in:title` per repo, plus issue bodies for affected versions).
`dataset_b_issues.csv` marks rows whose body was read (`issue body read`). Rows marked
`title/state/date only` still need their version checked. APK URLs marked "unverified" (Bitwarden tags,
Paperless 4.0.6, Immich 1.96.0, Findroid 0.8.0) are inferred and have not been checked.

### Recommended (8 apps, 31 candidate issues, of which about 17–18 are rated high/medium)

| App | Category | Login | Account | Strongest issues |
|---|---|---|---|---|
| Paperless Mobile | documents | Flutter form + (missing) TOTP | self-hosted paperless-ngx | #478 (2FA stuck), #572 (endless loading), #332 (no error feedback) |
| Jerboa | social (Lemmy) | native form + TOTP | public instance / self-hosted | #1298 (crash on valid login, 0.0.50), #931 (logged-in state after failure) |
| StreetComplete | maps | OSM OAuth page in app | free OSM account (maybe already in Organic Maps pool) | #5724 (login page crash, exact steps) |
| Bitwarden | security | native two-step + 2FA | free cloud / Vaultwarden | #7022 (error message, open), #6501 (stuck after login), #7054 (2FA loop) |
| Mattermost | team chat | RN form + MFA, SSO | self-hosted Team Edition | #7524 (MFA input), #6993 (hang after SSO) |
| Findroid | media | native form | self-hosted Jellyfin 10.10.0 | #928/#877 ("Unknown error" for valid credentials), #235 |
| FluffyChat | messaging (Matrix) | Flutter form, SSO | self-hosted homeserver | #2996 (restricted network), #489 (crash, SSO config) |
| Seafile (Seadroid) | file sync | native form + 2FA | self-hosted Seafile CE | #1112 (blank screen after submit), #1167 (state lost) |

Backups: Immich (strong offline-login issue #7506, but its APK version must match the server version, and 1.96.0
is not on F-Droid), Tuta (WebView, but its issues have no versions), Read You, KitchenOwl, Voyager. Mastodon is
listed but not recommended: its login runs in a Custom Tab in another package, which LIFTDroid ignores.

Why self-hosted servers matter: most Dataset B issues depend on the server version (Lemmy 0.19, Jellyfin
10.10.0, paperless-ngx 2.14, Mattermost 7.x). With Docker on `multi-agent`, the server can be pinned to the
version in the issue and accounts, MFA and SSO can be created without third parties.

### Paper apps excluded from Dataset B

- **Empirical study (44 repositories, `LoginTest/Empirical Study/Refined Dataset(Extraction Process)/t_repos.csv`)**:
  WordPress-Android, nextcloud/android, element-android, thunderbird-android, PocketHub, supertokens-core,
  AmazeFileManager, FirebaseUI-Android, owncloud/android, DuckDuckGo Android, Twidere-Android, phimpme-android
  (listed twice), orgzly-android, Android-Password-Store, pocket-casts-android, connectbot, realm-java,
  firebase/quickstart-android, Anki-Android, LibreTube, Aegis, microG GmsCore, facebook-android-sdk,
  kickstarter/android-oss, AntennaPod, cloudstream, keepass2android, Infinity-For-Reddit,
  react-native-google-signin, Tusky, open-event-attendee-android, Parse-SDK-Android, home-assistant/android,
  jellyfin-android, davx5-ose, apps-android-commons, element-x-android, wallabag/android-app,
  mozilla-mobile/reference-browser, tindroid, appcenter-sdk-android, woocommerce-android, amplify-android.
- **Evaluation (Table V)**: Standard Notes, InnerTune, Organic Maps, AuroraStore, OuterTune, OpenTune, Nora,
  Notesnook, Tasks, NewsBlur, Twire.
- **Named as filtered evaluation apps**: LessPass, Logseq.
- **Apps with pools on the server (probably part of the 20-app held-out state-machine set)**: Status
  (`im.status.ethereum`), Ente Auth, Ente Photos.
- Forks of excluded apps were avoided (e.g. Pachli is a Tusky fork; SchildiChat is an Element fork; CoMaps is
  an Organic Maps fork).

Jerboa, StreetComplete, Read You, Mastodon, Findroid and Voyager (`adrielcafe/voyager`, a different project)
appear in the 2,675-repository *search pool* (`Raw Dataset/searched_repos.txt`). None of them is among the
44 analyzed repositories or in the 640-row issue table.

## Open questions and human actions for the authors

1. **The 20 held-out apps** (Section V-A, state-machine generalization) are not listed in the paper or the
   repository. Please send the list so Dataset B can exclude them. If any recommended app is among them, swap
   in a backup.
2. **Accounts (to be created by a person, not by the agent)**:
   - Self-hosted Docker servers on `multi-agent` (paperless-ngx 2.14.x, Jellyfin 10.10.0, Mattermost TE 7.x/9.x,
     Seafile CE, Synapse/Conduit, optional Vaultwarden and Lemmy). Users, TOTP secrets and SSO (GitLab/OIDC for
     Mattermost #6993) need to be set up.
   - Public accounts: Lemmy instance (Jerboa/Voyager), OpenStreetMap (check whether the Organic Maps pool account is
     an OSM account that can be reused), Bitwarden cloud (new-device e-mail OTP needs a mailbox the tester can read).
   - Add the credentials to untracked `pools/<package>*/valid_pairs.csv` files. Do not commit them.
3. **Which APK version per app**: the recall experiment needs the issue's affected version (column
   `affected_apk_url`), while the LLM-agent baseline can share the same APK. Several apps need two or three
   versions (Mattermost 2.0.0/2.7.0/2.21.0, Jerboa 0.0.37/0.0.50). Decide whether one version per app is enough.
4. **Scope decisions**: issues that need conditions LIFTDroid does not create (font scaling for Mattermost #8291,
   permission revocation for Seadroid #1167, token expiry for Jerboa #1424, an external-browser SSO). Count them
   as expected false negatives, which is useful for R2-8a, or drop them.
5. **Flutter / React Native apps** (FluffyChat, Paperless, Mattermost, Immich, KitchenOwl): Java-level hooks
   will see little of the login logic, as with Standard Notes' WebView. This is good for the recall discussion,
   but decide whether at least half of the apps should be native Kotlin/Java (Jerboa, StreetComplete, Bitwarden,
   Findroid and Seadroid are native).
6. **Finance**: no open-source finance app with a password login and Android login issues was found (Firefly III
   clients use access tokens). The category is left out.
7. **Duplicates**: Findroid #877 is probably a duplicate of #928, and Jerboa #1306/#1296 duplicate #1298 (they are
   not listed). Count each duplicate group once in the recall denominator.
