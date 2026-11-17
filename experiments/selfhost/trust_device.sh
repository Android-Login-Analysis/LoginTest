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
adb -s $S push /tmp/lift_hosts.$$ /data/local/tmp/lift_hosts >/dev/null
rm -f /tmp/lift_hosts.$$

timeout 120 adb -s $S shell sh -s <<EOF || echo "$S: WARN mount propagation timed out"
set -e
# --- CA: copy the system store into a tmpfs, add ours, bind it over the conscrypt APEX store ---
if ! ls /system/etc/security/cacerts/$HASH.0 >/dev/null 2>&1 || ! grep -q tmpfs /proc/mounts; then
  mkdir -p -m 700 /data/local/tmp/lift-ca-copy
  cp /apex/com.android.conscrypt/cacerts/* /data/local/tmp/lift-ca-copy/
  mount -t tmpfs tmpfs /system/etc/security/cacerts
  mv /data/local/tmp/lift-ca-copy/* /system/etc/security/cacerts/
  rmdir /data/local/tmp/lift-ca-copy
fi
cp /data/local/tmp/$HASH.0 /system/etc/security/cacerts/
chown root:root /system/etc/security/cacerts/*
chmod 644 /system/etc/security/cacerts/*
chcon u:object_r:system_file:s0 /system/etc/security/cacerts/*
mount --bind /system/etc/security/cacerts /apex/com.android.conscrypt/cacerts 2>/dev/null || true
# --- hosts ---
chmod 644 /data/local/tmp/lift_hosts
chcon u:object_r:system_file:s0 /data/local/tmp/lift_hosts
umount /system/etc/hosts 2>/dev/null || true   # re-runs: drop the old bind (its source file was replaced)
mount --bind /data/local/tmp/lift_hosts /system/etc/hosts
# --- propagate into zygote and every running app's mount namespace ---
ZP="\$(pidof zygote || true) \$(pidof zygote64 || true)"
for P in \$ZP; do
  timeout 5 nsenter --mount=/proc/\$P/ns/mnt -- /bin/mount --bind /system/etc/security/cacerts /apex/com.android.conscrypt/cacerts || true
  timeout 5 nsenter --mount=/proc/\$P/ns/mnt -- /bin/umount /system/etc/hosts 2>/dev/null || true
  timeout 5 nsenter --mount=/proc/\$P/ns/mnt -- /bin/mount --bind /data/local/tmp/lift_hosts /system/etc/hosts || true
done
for Z in \$ZP; do
  for P in \$(ps -o PID -P \$Z | grep -v PID); do
    timeout 5 nsenter --mount=/proc/\$P/ns/mnt -- /bin/mount --bind /system/etc/security/cacerts /apex/com.android.conscrypt/cacerts 2>/dev/null || true
    timeout 5 nsenter --mount=/proc/\$P/ns/mnt -- /bin/umount /system/etc/hosts 2>/dev/null || true
    timeout 5 nsenter --mount=/proc/\$P/ns/mnt -- /bin/mount --bind /data/local/tmp/lift_hosts /system/etc/hosts 2>/dev/null || true
  done
done
EOF
echo "$S: CA $HASH trusted, $(adb -s $S shell grep -c liftdroid.test /system/etc/hosts) host names"
