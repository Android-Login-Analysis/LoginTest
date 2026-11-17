#!/bin/bash
# Second batch of self-hosted services: secrets, Synapse config, start containers. Prints no secrets.
set -e
cd ~/selfhost
umask 077
add() { grep -q "^$1=" .env || echo "$1=$(openssl rand -hex 24)" >> .env; }
for k in MM_DB_PASSWORD KITCHENOWL_JWT_SECRET SEAFILE_DB_ROOT_PASSWORD SEAFILE_DB_PASSWORD SEAFILE_ADMIN_PASSWORD SEAFILE_JWT_KEY LIFT_SVC_PASSWORD; do add $k; done
umask 022
mkdir -p data/jellyfin/config data/jellyfin/cache data/mattermost/{config,data,logs,plugins,client-plugins} data/kitchenowl data/freshrss/{data,extensions} data/synapse data/seafile
sudo chown -R 2000:2000 data/mattermost
if [ ! -f data/synapse/homeserver.yaml ]; then
  sudo docker run --rm -v ~/selfhost/data/synapse:/data -e SYNAPSE_SERVER_NAME=matrix.liftdroid.test -e SYNAPSE_REPORT_STATS=no matrixdotorg/synapse:v1.120.2 generate >/dev/null
  echo 'public_baseurl: "https://matrix.liftdroid.test/"' | sudo tee -a data/synapse/homeserver.yaml >/dev/null
fi
sudo docker compose -p liftsvc pull -q
sudo docker compose -p liftsvc up -d 2>&1 | tail -3
