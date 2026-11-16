# tasks/tasks#3962 — Google login under a limited network (manual reproduction)

Issue: "No timeout for google login under limited network" (reported 2025-11-06).

Setup (2026-11-10):
- Tasks.org 14.7.4, official APK (`org.tasks_140712.apk`), on the Google Play redroid device
  (`redroid/redroid:14.0.0_64only_mindthegapps`, 127.0.0.1:5558) with the Google test account added to the device.
- Network shaping identical to LIFTDroid's `limited` round: `tc netem delay 2500ms 500ms loss 25%` on eth0
  (adb traffic exempt).

Steps and observations:
1. Sign-in screen → "Google Tasks" → system account chooser → device account → OK.
2. `th_10.png`: "Authenticating…" progress dialog.
3. The Google consent page took over a minute to load under the limited network; "Continue" was tapped.
4. `ti_60.png`, `ti_240.png`: within 60 s the app returned to the "Sign in" screen. No account was added and
   no error or network message was shown; the screen stayed unchanged for 4 minutes.
5. Control on a normal network (same steps): `tj_30.png`, signed in to "My Tasks" within 10 s.

Notes:
- The symptom observed is a silent failure (no feedback) rather than the indefinite "getting info" screen in the
  issue; both are missing timeout/error handling for the Google login on a degraded network.
- The failure needs the first-time Google authorization (consent). Once consent is granted, Play services
  serves the token from its cache and the login succeeds even offline, so later automated rounds do not
  trigger it. Automated detection (`LOGIN_FAILURE_WITHOUT_FEEDBACK`) requires revoking Tasks.org's access in the
  Google account before the run.
- The screenshot of the consent page is not included because it shows the test account's e-mail address.
