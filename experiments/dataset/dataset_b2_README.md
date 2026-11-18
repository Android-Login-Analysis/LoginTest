# Dataset B2: extra held-out login-bug candidates

Built on 2026-11-18. Nothing has been run. This is a ranked list of candidate issues for the recall
experiment, to be checked by a person. File: `dataset_b2_candidates.csv`, 42 rows, ranked by how likely
the bug is to reproduce (rank 1 is the most likely).

## Sources

- **F-Droid**: `repo/index-v1.json` and `archive/index-v1.json`, downloaded on 2026-11-18. Used for package
  names, version codes, dates, `nativecode` and `targetSdkVersion`, and to map source repositories to
  F-Droid packages.
- **GitHub REST search API**, unauthenticated:
  - `login in:title` searches in about 45 app repositories.
  - Multi-repo keyword searches: rotation, plain text, crash, sign in, 2FA/TOTP, spinner/loading, error message.
  - 20 global queries (rotation/orientation, plaintext password/token, special characters, crash on login,
    unknown error, stuck/infinite loading, 2FA). Global hits were kept only when the repo maps to an F-Droid
    package.
- **Codeberg (Forgejo) API**: GitNex, Eternity and Conversations, searched for login, sign in and crash.
- **Issue threads**: for the top candidates, comments were read through the Codeberg API or a web fetch to get
  the root cause, the fixed version and the reproduction conditions. These are summarised in
  `why_likely_reproducible` and `risk_notes`.
- **APK check**: each of the 41 distinct `apk_url`s was verified with an HTTP HEAD request plus a ranged GET
  of the ZIP central directory, which lists the `lib/<abi>/` folders. All 41 returned HTTP 200. Every APK
  either has no native libraries or contains `lib/x86_64`. The `apk_checked` column records the size and ABIs.
  - The package id of the Bitwarden beta-flavour APKs (rows 7 and 8) was not read from the manifest.

## Selection rules

1. **Symptom**: the symptom must match one of the eight LIFTDroid oracles. The oracle number is in
   `liftdroid_oracle`. If two oracles apply, the main one is given and the other is mentioned in the notes.
2. **App**: open source, with a public tracker on GitHub or Codeberg.
3. **APK**: the APK for the affected version (or the last release before the fix) must be on the F-Droid
   repo or archive, or in GitHub/Codeberg releases, and must run on x86_64.
4. **Account**: obtainable through a Docker-hostable backend, or a free account with no phone verification.
   The backend is in `backend`.
5. **No overlap**: no issue from `dataset_a_bugs.csv` or `dataset_b_issues.csv`. This was checked by script:
   0 overlaps. Known duplicates of excluded issues were left out (Jerboa #1296/#1306, Paperless #537/#547,
   qBitController #264).
6. **No paper apps**: apps from the paper's empirical-study list and Table V were avoided, as in Dataset B.
   That includes nextcloud/android, Tusky, Home Assistant, jellyfin-android, OuterTune and Twire.
   - Exception: rows 34 and 35 are Eternity, a fork of Infinity-for-Reddit. They are flagged in
     `risk_notes`; drop them if forks are excluded.
   - Nextcloud Talk and Nextcloud Notes are separate repositories from nextcloud/android.
7. **Rejected after reading the thread**:
   - KitchenOwl #253 (user typed the wrong password).
   - Tempus #1326 (playback, not login).
   - wger #1218 (bot protection on the hosted server).
   - KOReader #13049 (corrupted local state).
   - Nextcloud Cookbook #126 (IMAP auth backend).
   - Talk #1271 (not reproducible by the maintainer).
   - MoeMemos #175 (pre-release server).
   - Power Ampache #192 (data-specific).
   - Audiobookshelf #1151 (needs LAN without internet).

## Ranking

Bugs rank highest when the root cause is known and can be triggered on purpose:
- by a chosen credential (Gotify #161, Readrops #348, Subtracks #55, Bitwarden #3410),
- by a device property (Vikunja #102 on a non-GMS image),
- by an account property (Hacki #58),
- by a pinned server version or setting (Paperless #548, qBitController #263, Jerboa #1487 and #920,
  MoeMemos #295, Findroid #679, GitNex #1280),
- or by a LIFTDroid built-in action such as going offline or rotating (Talk #6329, AndStatus #551, DankChat #238).

Lower ranks are bugs that:
- were never root-caused,
- depend on the hosted service's behaviour at that time (Bitwarden cloud #6376),
- need an extra UI action (Delta Chat cancel), or
- were reported only on Android 11 (GitNex #1327).

## Counts

- **By oracle**:
  - 1 crash: 6
  - 2 plaintext: 1
  - 3 rotation: 3
  - 4 misleading error: 11
  - 5 valid credentials rejected: 10
  - 6 hang/silent: 5
  - 7 2FA: 3
  - 8 navigation: 3
- **By backend**:
  - 28 need only a self-hosted Docker server.
  - 11 can use either a self-hosted server or a free public account.
  - 3 need a free public account: Hacker News, Twitch, Bitwarden cloud.
- **Server families**:
  - Lemmy 6, Gitea/Forgejo 4, Bitwarden/Vaultwarden 4, Nextcloud 3.
  - FreshRSS, paperless-ngx, Jellyfin, Audiobookshelf and Gotify: 2 each.
  - One each: Navidrome, Ampache, qBittorrent, Memos, Vikunja, Mealie, Firefly III, Databag, Mattermost,
    Zulip, Mastodon/GoToSocial, chatmail, Discuz, Hacker News, Twitch.

## Points for the authors

- **Credential variants**: several bugs need special credentials in the pool:
  - Gotify #161: a password with `€`, `{` and `%`.
  - Readrops #348: a pair where md5("user:pass") starts with 0.
  - Subtracks #55: a password starting with `@`.
  - Bitwarden #3410: an upper-case variant of the e-mail.
  - Audiobookshelf #1900: a trailing space in the username.

  Decide whether giving LIFTDroid such a pool is fair for the recall experiment.
- **Pinned server versions**: Lemmy 0.17.4 and 0.19.3 (private), Gitea 1.20.1, Jellyfin 10.9.0, paperless-ngx
  2.20.x with `PAPERLESS_ENABLE_UPDATE_CHECK`, paperless-ngx 2.7.2, qBittorrent 5.2.0, Memos 0.25.3, Firefly III
  5.7.18, Mattermost 11.5.1.
- **Device**: Vikunja #102 must run on the redroid image without GApps.
- **Token logins**: MoeMemos (access token) and Firefly III (PAT) do not use a password. Check that LIFTDroid's
  form filler handles them.
- **Flutter / React Native / WebView apps**: Vikunja, Hacki, Paperless, Zulip, Databag, Subtracks, Mattermost,
  Audiobookshelf and Floccus are Flutter, React Native or Capacitor apps. Java-level hooks will see little of
  their logic, as in Dataset B.
