#!/bin/bash
# Restrict a test device's outbound traffic to the self-hosted test server (plus adb and loopback), so an app that
# defaults to a public server can never send the test credentials there.
# Usage: egress.sh <adb-serial> on|off
S=${1:?serial}; MODE=${2:?on|off}; HOST_IP=10.99.0.124
source ~/lt_env.sh
A="adb -s $S shell"
$A "iptables -D OUTPUT -j LIFT_EGRESS 2>/dev/null; iptables -F LIFT_EGRESS 2>/dev/null; iptables -X LIFT_EGRESS 2>/dev/null"
$A "settings delete global private_dns_mode; settings delete global private_dns_specifier" >/dev/null 2>&1
if [ "$MODE" = on ]; then
  # public names fail at once: strict private DNS to a test-server port where nothing listens (names in the hosts
  # file still resolve); otherwise dropped DNS packets make every public lookup hang for ~25 s
  $A "settings put global private_dns_specifier dns.liftdroid.test; settings put global private_dns_mode hostname"
  $A "iptables -N LIFT_EGRESS; iptables -A LIFT_EGRESS -o lo -j ACCEPT; iptables -A LIFT_EGRESS -p tcp --sport 5555 -j ACCEPT; \
      iptables -A LIFT_EGRESS -d $HOST_IP -j ACCEPT; iptables -A LIFT_EGRESS -j DROP; iptables -A OUTPUT -j LIFT_EGRESS"
  # no IPv6 filter table on redroid: there must be no IPv6 route out either
  [ -n "$($A ip -6 route show default 2>/dev/null)" ] && { echo "$S: IPv6 default route present; cannot restrict egress"; exit 1; }
  $A "toybox nc -w 3 1.1.1.1 443 </dev/null" >/dev/null 2>&1 && { echo "$S: public host still reachable"; exit 1; }
  $A "toybox nc -w 3 $HOST_IP 443 </dev/null" >/dev/null 2>&1 || { echo "$S: test server not reachable"; exit 1; }
fi
echo "$S: egress $MODE ($($A iptables -S LIFT_EGRESS 2>/dev/null | wc -l) rules)"
