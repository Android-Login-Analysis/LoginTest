# Self-hosted backends for Dataset B

Held-out apps whose login talks to a self-hostable server are tested against our own instances, so that accounts,
server versions and MFA settings are under our control. Everything runs on the test machine with Docker.

## Layout
- `compose.yaml`: services behind one TLS reverse proxy (`nginx.conf`) for `*.liftdroid.test`, published only on the
  machine's LAN address (10.99.0.124:443). Currently: Lemmy 0.19.21 (+ lemmy-ui, pict-rs, PostgreSQL 16).
- `make_lemmy_config.sh`: generates random secrets (`.env`, mode 600) and `lemmy.hjson`. Secrets are never printed
  or committed.
- `lemmy_make_user.py`: opens registration on the instance and creates the test account `lifttest`; its password is
  written only to `~/LoginTest/pools/com.jerboa/valid_pairs.csv` (mode 600).
- `trust_device.sh <serial>`: makes a redroid (Android 14) device trust our test CA and resolve the
  `*.liftdroid.test` names to the server. The CA is copied with the system store into a tmpfs that is bind-mounted over
  `/apex/com.android.conscrypt/cacerts` in the init, zygote and app mount namespaces; `/system/etc/hosts` is
  bind-mounted the same way. Mounts are lost when the device restarts; `run_app2.sh` runs this script before every run.

## Certificates
`certs/` (not in the repository) holds a test CA (`LIFTDroid Test CA`, 10 years) and a wildcard certificate for
`*.liftdroid.test`. Apps that use the platform trust store (OkHttp, HttpURLConnection, WebView) accept it. Chrome does
not, because it uses its own Chrome Root Store; this does not affect the apps under test.

## Why the LAN address and not the Docker gateway
The devices reach 172.17.0.1 on-link, so removing the default route (LIFTDroid's `offline` condition) would not cut
them off from a service published there. Through 10.99.0.124 the traffic uses the default route and the network
conditions apply to the self-hosted servers exactly as to public ones.

## Bring-up (once)
```bash
cd ~/selfhost && ./make_lemmy_config.sh && sudo docker compose up -d
python3 -I ~/selfhost/lemmy_make_user.py
for s in 5555 5556 5557 5558; do ~/selfhost/trust_device.sh 127.0.0.1:$s; done
```
Lemmy 0.19 notes: the database key is `uri`; `site_name` is limited to 20 characters (a longer name breaks the first
start and leaves a half-created admin, which then fails every restart with a duplicate-key error).
