# Findroid #877 (#928 is a duplicate): "Unknown error" at login with Jellyfin 10.10.0

- App: Findroid 0.15.3 (GitHub x86_64 release, the version in both issues); server: Jellyfin 10.10.0.
- The server accepts the credentials (`POST /Users/AuthenticateByName` 200, "Authentication request ... has succeeded",
  the device's previous access token is logged out and a new one created), but the app shows "Unknown error".
  The maintainer traced it to jellyfin/jellyfin#12948 (fixed in 10.10.2); the first login after a server restart
  works, later ones fail, which matches the first run on a fresh server succeeding and every later login failing.
- LIFTDroid (0a4ffca4), round 1 (normal network, the app's own verified account): `VALID_CREDENTIALS_REJECTED`
  with message 'Unknown error'.
