#!/bin/bash
# Make a redroid (Android 14) device trust the LIFTDroid test CA and resolve *.liftdroid.test to the test server.
# Mounts do not survive a device restart: run again after the container restarts.
# Usage: trust_device.sh <adb-serial>
set -e
S=${1:?usage: trust_device.sh <adb-serial>}
CA=~/selfhost/certs/ca.crt
HOST_IP=10.99.0.124
NAMES="lemmy paperless jellyfin mattermost seafile matrix vaultwarden kitchenowl freshrss"
HASH=$(openssl x509 -in $CA -noout -subject_hash_old)
source ~/lt_env.sh
adb -s $S root >/dev/null 2>&1 || true
sleep 2
adb -s $S wait-for-device
adb -s $S push $CA /data/local/tmp/$HASH.0 >/dev/null

# hosts file: the device's own entries plus our names
adb -s $S shell cat /system/etc/hosts | grep -vE "liftdroid.test|joinmatrix.org" > /tmp/lift_hosts.$$
for n in $NAMES; do echo "$HOST_IP $n.liftdroid.test" >> /tmp/lift_hosts.$$; done
# public endpoints that apps call during login while egress is limited to the test server: refuse them locally
# (connection refused at once) instead of letting the dropped packets time out
for n in servers.joinmatrix.org; do echo "127.0.0.1 $n" >> /tmp/lift_hosts.$$; done
adb -s $S push /tmp/lift_hosts.$$ /data/local/tmp/lift_hosts.new >/dev/null
rm -f /tmp/lift_hosts.$$

adb -s $S push ~/selfhost/device_mounts.sh /data/local/tmp/lift_device_mounts.sh >/dev/null
timeout 900 adb -s $S shell sh /data/local/tmp/lift_device_mounts.sh $HASH || echo "$S: WARN mount setup timed out"
echo "$S: CA $HASH trusted, $(adb -s $S shell grep -c liftdroid.test /system/etc/hosts) host names"
