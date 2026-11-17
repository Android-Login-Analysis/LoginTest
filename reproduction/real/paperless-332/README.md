# Paperless Mobile #332: no feedback when the server cannot be reached during login

- Issue (filed by the maintainer, closed 2025-12-08): "when server is not reachable, the request ... will just time out"
  and the app gives no direct feedback.
- Paperless Mobile 4.0.6 (released 2026-03-07, after the issue was closed) still shows the behaviour:
  with no network route, Sign In keeps spinning with no message (`offline_t10s.png`, `offline_t120s.png`;
  manual check on a second device with the same "offline" condition LIFTDroid uses).
- LIFTDroid round 4 (offline, valid credentials): `LOGIN_FAILURE_WITHOUT_FEEDBACK` (`evidence.txt`).
