#!/bin/bash
# Undo LIFTDroid's per-round network conditions on a device (a run stopped mid-round leaves them in place).
# Usage: netreset.sh <adb-serial>
S=${1:?serial}; source ~/lt_env.sh; A="adb -s $S shell"
$A "iptables -D OUTPUT -j LIFT_BLOCK 2>/dev/null; iptables -F LIFT_BLOCK 2>/dev/null; iptables -X LIFT_BLOCK 2>/dev/null; tc qdisc del dev eth0 root 2>/dev/null; svc data enable 2>/dev/null; svc wifi enable 2>/dev/null"
if [ -z "$($A ip route show table all | grep '^default')" ]; then
  $A "cat /data/local/tmp/lift_saved_routes 2>/dev/null" | while read -r r; do [ -n "$r" ] && $A "ip route add $r" 2>/dev/null; done
  [ -z "$($A ip route show table all | grep '^default')" ] && $A "ip route add default via 172.17.0.1 dev eth0 table eth0 proto static"
fi
echo "$S: network reset ($($A ip route show table all | grep -c '^default') default route(s))"
