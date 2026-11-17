#!/bin/bash
# R2-9 worker: one per device. Usage: worker.sh <port> <checkout dir name> <has_gms 0|1>
P=$1; D=$2; GMS=$3; R=~/r2; RES=~/r2_results; mkdir -p $RES
S=127.0.0.1:$P
appkey() { echo "$1" | sed -E 's/^r[0-9]+_c[0-9]_//; s/[-_](v?[0-9][0-9.]*.*)$//'; }
claim() {   # next job for this device whose app is not running elsewhere (under a lock)
  exec 9>$R/.lock; flock 9
  local line id cfg apk gms
  while IFS='|' read -r id cfg apk gms; do
    grep -qx "$id" $R/taken.txt 2>/dev/null && continue
    [ "$gms" = 1 ] && [ "$GMS" != 1 ] && continue
    key=$(appkey $id); grep -q " $key\$" $R/running.txt 2>/dev/null && continue
    echo "$id" >> $R/taken.txt; echo "$P $key" >> $R/running.txt
    echo "$id|$cfg|$apk"; flock -u 9; return 0
  done < $R/jobs.txt
  flock -u 9; return 1
}
release() { exec 9>$R/.lock; flock 9; grep -v "^$P " $R/running.txt > $R/running.tmp 2>/dev/null; mv $R/running.tmp $R/running.txt; flock -u 9; }
while true; do
  J=$(claim)
  if [ -z "$J" ]; then   # nothing for this device right now (app busy elsewhere) or everything is taken
    [ "$(wc -l < $R/taken.txt 2>/dev/null || echo 0)" -ge "$(wc -l < $R/jobs.txt)" ] && { echo "$(date +%T) $P no jobs left" >> $R/worker_$P.log; break; }
    sleep 60; continue
  fi
  IFS='|' read -r ID CFG APK <<< "$J"
  OUT=$RES/$ID; mkdir -p $OUT; BASE=$(basename ${APK%.apk}); T0=$(date +%s); touch $OUT/.start
  echo "$(date +%T) start $ID" >> $R/worker_$P.log
  case $CFG in
    c0|c1|c2)
      NAV=""; [ $CFG = c1 ] && NAV=monkey; [ $CFG = c2 ] && NAV=agent
      rm -f ~/$D/logs/agent_episodes.csv; rm -rf ~/$D/logs/agent
      TO=7200; [ $CFG = c2 ] && TO=14400
      ANDROID_SERIAL=$S LT_DIR=~/$D RUN_TAG=${ID}_ LIFT_NAV=$NAV ~/run_app2.sh $APK 5 $TO > $OUT/driver.log 2>&1
      cp /tmp/run_${ID}_$BASE.log $OUT/run.log 2>/dev/null; cp /tmp/run_${ID}_$BASE.log.hdr $OUT/run.hdr 2>/dev/null; rm -f /tmp/run_${ID}_$BASE.log
      mkdir -p $OUT/bugs; find ~/$D/reports/bugs -newer $OUT/.start -type f -exec cp {} $OUT/bugs/ \; 2>/dev/null
      [ -f ~/$D/logs/agent_episodes.csv ] && cp ~/$D/logs/agent_episodes.csv $OUT/
      [ -d ~/$D/logs/agent ] && cp -r ~/$D/logs/agent $OUT/agent_logs   # agent console output and action logs per episode
      ;;
    c3|c4)
      V=plain; [ $CFG = c4 ] && V=informed
      ANDROID_SERIAL=$S AGENT_OUT=$OUT ~/r2/run_agent_baseline.sh $APK $V 60 > $OUT/driver.log 2>&1
      ;;
  esac
  echo "$ID $(( $(date +%s)-T0 ))s $(tail -1 $OUT/driver.log | cut -c1-80)" >> $R/done.txt
  echo "$(date +%T) done $ID" >> $R/worker_$P.log
  release
done
