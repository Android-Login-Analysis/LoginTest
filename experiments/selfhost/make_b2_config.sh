#!/bin/bash
# Secrets and Lemmy configs for the Dataset B2 backends; prints no secrets.
set -e
cd ~/selfhost
umask 077
grep -q "^VIKUNJA_JWT=" .env || echo "VIKUNJA_JWT=$(openssl rand -hex 32)" >> .env
set -a; . ./.env; set +a
cat > lemmy2.hjson <<EOC
{
  hostname: "lemmy2.liftdroid.test"
  bind: "0.0.0.0"
  port: 8536
  tls_enabled: true
  database: { uri: "postgres://lemmy:${LEMMY_DB_PASSWORD}@lemmy2-db:5432/lemmy" }
  setup: { admin_username: "liftadmin", admin_password: "${LEMMY_ADMIN_PASSWORD}", site_name: "LIFTDroid private" }
}
EOC
cat > lemmy3.hjson <<EOC
{
  hostname: "lemmy3.liftdroid.test"
  bind: "0.0.0.0"
  port: 8536
  tls_enabled: true
  database: { user: "lemmy", password: "${LEMMY_DB_PASSWORD}", host: "lemmy3-db", port: 5432, database: "lemmy", pool_size: 5 }
  setup: { admin_username: "liftadmin", admin_password: "${LEMMY_ADMIN_PASSWORD}", site_name: "LIFTDroid 017" }
}
EOC
chmod 644 lemmy2.hjson lemmy3.hjson
mkdir -p data/vikunja/files data/vikunja/db data/gotify data/navidrome data/music data/paperless2/data data/paperless2/media data/lemmy2-db data/lemmy3-db data/nextcloud data/memos data/jellyfin2/config data/jellyfin2/cache data/gitea
sudo chown -R 1000:1000 data/vikunja
echo "b2 config written"
