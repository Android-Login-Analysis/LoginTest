# Paperless Mobile #572: endless loading screen after sign-in

- App: Paperless Mobile 4.0.6 (official GitHub x86_64 APK); server: paperless-ngx 2.14.5 (as in the issue), API version 6.
- After `POST /api/token/` (200) the app requests `GET /api/users/<id>/?full_perms=true`, which this server answers with
  406 (the maintainer's diagnosis in the issue: the app only supports API 9). The app never handles the failure and
  shows a full-screen spinner indefinitely (`spinner_t10s.png`, still at `spinner_t400s.png`; manual check on a second device).
- LIFTDroid (commit bcd330d5): round 1 (normal network, valid credentials) reports `LOGIN_TIMEOUT`.
  Before that commit the blank Flutter loading screen (its progress indicator is not in the accessibility tree) was
  taken for the post-login screen and the round counted as a successful login.
- `evidence.txt`: app log (the app masks the server name itself), proxy log, LIFTDroid log lines.
