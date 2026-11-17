#!/bin/bash
# R2 progress: done/taken counts and the current job per device with its elapsed time
echo "done $(wc -l < ~/r2/done.txt) / taken $(wc -l < ~/r2/taken.txt) / 225"
now=$(date +%s)
for p in 5555 5556 5557 5558; do
  l=$(grep " start " ~/r2/worker_$p.log | tail -1); id=$(echo $l | awk '{print $3}'); t=$(echo $l | awk '{print $1}')
  el=$(( (now - $(date -d "$t" +%s) + 86400) % 86400 / 60 ))
  tail -n1 ~/r2/worker_$p.log | grep -q " done " && st=idle || st="${el}min"
  echo "$p $id $st"
done
