#!/bin/bash
# Generates secrets (.env) and lemmy.hjson; never prints secrets.
set -e
cd ~/selfhost
umask 077
if [ ! -f .env ]; then
  rnd() { python3 -c "import secrets,string; a=string.ascii_letters+string.digits; print(''.join(secrets.choice(a) for _ in range($1)))"; }
  {
    echo "LEMMY_DB_PASSWORD=$(rnd 28)"
    echo "PICTRS_API_KEY=$(rnd 32)"
    echo "LEMMY_ADMIN_PASSWORD=Lift$(rnd 20)9x"
  } > .env
fi
# secrets added after the first bring-up (one per service)
grep -q "^PAPERLESS_SECRET_KEY=" .env || echo "PAPERLESS_SECRET_KEY=$(python3 -c "import secrets;print(secrets.token_urlsafe(48))")" >> .env
grep -q "^PAPERLESS_ADMIN_PASSWORD=" .env || echo "PAPERLESS_ADMIN_PASSWORD=Lift$(python3 -c "import secrets,string;a=string.ascii_letters+string.digits;print(''.join(secrets.choice(a) for _ in range(20)))")9x" >> .env
set -a; . ./.env; set +a
cat > lemmy.hjson <<EOF
{
  hostname: "lemmy.liftdroid.test"
  bind: "0.0.0.0"
  port: 8536
  tls_enabled: true
  database: {
    uri: "postgres://lemmy:${LEMMY_DB_PASSWORD}@postgres:5432/lemmy"
  }
  pictrs: {
    url: "http://pictrs:8080/"
    api_key: "${PICTRS_API_KEY}"
  }
  setup: {
    admin_username: "liftadmin"
    admin_password: "${LEMMY_ADMIN_PASSWORD}"
    site_name: "LIFTDroid test"
  }
}
EOF
chmod 644 lemmy.hjson nginx.conf compose.yaml 2>/dev/null || true
chmod 600 .env
echo "config written"
