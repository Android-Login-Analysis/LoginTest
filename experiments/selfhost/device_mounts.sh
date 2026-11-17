#!/system/bin/sh
# Runs ON the device (root), pushed and started by trust_device.sh.  Usage: sh device_mounts.sh <ca-hash>
# Mounts propagate between the init and zygote mount namespaces (shared subtree): binding in both doubled the
# stack on every run (thousands of stacked binds). So: remove stacked binds, then bind once where missing.
# hosts is rewritten in place (same inode), so existing binds see the new content.
HASH=$1
CA=/apex/com.android.conscrypt/cacerts
HOSTS=/system/etc/hosts

unstack() { # <pid|self> <mountpoint>
  n=0
  while grep -q " $2 " /proc/$1/mounts && [ $n -lt 5000 ]; do
    if [ "$1" = self ]; then umount "$2" 2>/dev/null || break
    else nsenter --mount=/proc/$1/ns/mnt -- /bin/umount "$2" 2>/dev/null || break; fi
    n=$((n + 1))
  done
}
bindonce() { # <pid|self> <src> <dst>
  grep -q " $3 " /proc/$1/mounts && return 0
  if [ "$1" = self ]; then mount --bind "$2" "$3"
  else timeout 5 nsenter --mount=/proc/$1/ns/mnt -- /bin/mount --bind "$2" "$3"; fi
}

ZP="$(pidof zygote) $(pidof zygote64)"
unstack self $CA; unstack self $HOSTS
for P in $ZP; do unstack $P $CA; unstack $P $HOSTS; done

# CA store: the system certificates plus ours, in a tmpfs
if ! grep -q " /system/etc/security/cacerts tmpfs" /proc/mounts; then
  mkdir -p -m 700 /data/local/tmp/lift-ca-copy
  cp $CA/* /data/local/tmp/lift-ca-copy/
  mount -t tmpfs tmpfs /system/etc/security/cacerts
  mv /data/local/tmp/lift-ca-copy/* /system/etc/security/cacerts/
  rmdir /data/local/tmp/lift-ca-copy
fi
cp /data/local/tmp/$HASH.0 /system/etc/security/cacerts/
chown root:root /system/etc/security/cacerts/*
chmod 644 /system/etc/security/cacerts/*
chcon u:object_r:system_file:s0 /system/etc/security/cacerts/*

# hosts: same file (inode) every time
touch /data/local/tmp/lift_hosts
cat /data/local/tmp/lift_hosts.new > /data/local/tmp/lift_hosts
chmod 644 /data/local/tmp/lift_hosts
chcon u:object_r:system_file:s0 /data/local/tmp/lift_hosts

bindonce self /system/etc/security/cacerts $CA
bindonce self /data/local/tmp/lift_hosts $HOSTS
APPS=""
for Z in $ZP; do APPS="$APPS $(ps -o PID -P $Z | grep -v PID)"; done
for P in $ZP $APPS; do
  bindonce $P /system/etc/security/cacerts $CA 2>/dev/null
  bindonce $P /data/local/tmp/lift_hosts $HOSTS 2>/dev/null
done
echo "mounts: $(grep -c " $CA " /proc/self/mounts) ca, $(grep -c " $HOSTS " /proc/self/mounts) hosts (self)"
