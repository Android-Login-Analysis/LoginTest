#!/bin/bash
# Waits up to $1 minutes; returns early on an anomaly. Prints the health summary at the end.
MAX=${1:-60}; start_done=$(wc -l < ~/r2/done.txt)
for i in $(seq 1 $((MAX/2))); do
  sleep 120
  n=$(pgrep -fc "^/bin/bash /home/ubuntu/r2/worker.sh"); [ "$n" -lt 4 ] && { echo "ANOMALY: only $n workers alive"; break; }
  now=$(date +%s)
  for p in 5555 5556 5557 5558; do
    l=$(tail -n1 ~/r2/worker_$p.log); case "$l" in *" start "*) ;; *) continue;; esac
    id=$(echo $l | awk '{print $3}'); el=$(( (now - $(date -d "$(echo $l | awk '{print $1}')" +%s) + 86400) % 86400 / 60 ))
    lim=150; [[ $id == *_c2_* ]] && lim=260; [[ $id == *_c[34]_* ]] && lim=130
    [ $el -gt $lim ] && { echo "ANOMALY: $id running ${el} min on $p"; ANOM=1; }
  done
  [ -n "$ANOM" ] && break
  quick=$(tail -n +$((start_done+1)) ~/r2/done.txt | awk '{gsub("s","",$2); if ($2<120) c++} END {print c+0}')
  [ "$quick" -ge 3 ] && { echo "ANOMALY: $quick jobs finished in under 2 minutes"; break; }
done
~/r2/health.sh; echo "new done: $(( $(wc -l < ~/r2/done.txt) - start_done ))"; tail -n +$((start_done+1)) ~/r2/done.txt | cut -c1-70
