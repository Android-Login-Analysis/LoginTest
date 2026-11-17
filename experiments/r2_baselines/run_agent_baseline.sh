#!/bin/bash
# R2-9 configurations 3 and 4: a GUI agent (AppAgent task executor) tests the login on its own.
# Usage: run_agent_baseline.sh <apk under ~/LoginTest/apps> <plain|informed> [max_actions]
# Env: ANDROID_SERIAL (device), AGENT_MODEL (default gpt-6.1-terra). No network conditions, no LIFTDroid oracles.
APK=$1; VARIANT=${2:?plain|informed}; MAXR=${3:-60}
source ~/lt_env.sh; S=${ANDROID_SERIAL:?}; A="adb -s $S"; HERE=$(cd $(dirname $0) && pwd)
PKG=$(aapt dump badging ~/LoginTest/apps/$APK | sed -n "s/^package: name=.\([^ ]*\). .*/\1/p" | tr -d "'")
ACC=$(python3 $HERE/pick_account.py $PKG "$LIFT_POOL")
U=$(echo "$ACC" | python3 -c "import json,sys; print(json.load(sys.stdin)['user'])"); P=$(echo "$ACC" | python3 -c "import json,sys; print(json.load(sys.stdin)['password'])")
SERVER=$(echo "$ACC" | python3 -c "import json,sys; print(json.load(sys.stdin)['server'])")
OUT=${AGENT_OUT:-~/r2_results/agent_${VARIANT}/$(basename ${APK%.apk})_$(date +%Y%m%d_%H%M%S)}; mkdir -p $OUT
~/selfhost/netreset.sh $S >/dev/null; ~/selfhost/trust_device.sh $S >/dev/null 2>&1
if [ -n "$SERVER" ]; then ~/selfhost/egress.sh $S on >/dev/null || exit 5; else ~/selfhost/egress.sh $S off >/dev/null; fi
$A uninstall $PKG >/dev/null 2>&1; $A install -g ~/LoginTest/apps/$APK | tail -1 | grep -q Success || { echo "install failed"; exit 6; }
$A shell input keyevent KEYCODE_WAKEUP; $A logcat -c
ACT=$($A shell cmd package resolve-activity --brief -c android.intent.category.LAUNCHER $PKG | tail -1 | tr -d "\r")
$A shell am start -W -n "$ACT" >/dev/null 2>&1; sleep 8
for i in 1 2 3; do   # permission dialogs first; the agent must start inside the app under test
  $A shell dumpsys activity activities | grep -m1 topResumedActivity | grep -q "$PKG" && break
  $A shell dumpsys activity activities | grep -m1 topResumedActivity | grep -q permissioncontroller && $A shell input keyevent KEYCODE_BACK
  $A shell am start -W -n "$ACT" >/dev/null 2>&1; sleep 5
done
$A shell dumpsys activity activities | grep -m1 topResumedActivity | grep -q "$PKG" || { echo "app not in foreground"; exit 7; }
HINT=""; [ -n "$SERVER" ] && HINT="If the app asks for a server or instance address, use $SERVER. "
TASK=$(python3 -c "import json,sys; a=json.loads(sys.argv[3]); t=open(sys.argv[1]).read(); print(t.replace('{SERVER_HINT}',sys.argv[2]).replace('{ACCOUNT}',a['account_line']).replace('{INVALID}',a['invalid_line']).strip())" $HERE/prompt_$VARIANT.txt "$HINT" "$ACC")
export AGENT_TASK="$TASK" AGENT_MAX_ROUNDS=$MAXR AGENT_ACTION_LOG=$OUT/actions.jsonl AGENT_USAGE_LOG=$OUT/usage.csv ANDROID_SERIAL=$S
t0=$(date +%s); timeout 7200 ~/baselines/agent_step.sh > $OUT/agent.out 2>&1; RC=$?
[ -n "$P" ] && python3 -c "import sys; p,f=sys.argv[1],sys.argv[2]; t=open(f,errors=\"replace\").read(); open(f,\"w\").write(t.replace(p,\"<password>\"))" "$P" $OUT/agent.out
sed -E "s/\x1b\[[0-9;]*m//g" $OUT/agent.out | grep -oE "BUG:.*" > $OUT/bugs.txt
$A logcat -d | grep -E "FATAL EXCEPTION|ANR in" > $OUT/logcat_crashes.txt   # kept for analysis only; not given to the agent
python3 - $OUT <<'PY'
import json, sys, os
d = sys.argv[1]; acts = [json.loads(l) for l in open(f"{d}/actions.jsonl")] if os.path.exists(f"{d}/actions.jsonl") else []
u = [l.split(",") for l in open(f"{d}/usage.csv")] if os.path.exists(f"{d}/usage.csv") else []
s = {"actions": sum(1 for a in acts if a["act"] != "FINISH"), "finished": any(a["act"] == "FINISH" for a in acts),
     "requests": len(u), "prompt_tokens": sum(int(x[1]) for x in u), "completion_tokens": sum(int(x[2]) for x in u),
     "bug_reports": sum(1 for _ in open(f"{d}/bugs.txt"))}
json.dump(s, open(f"{d}/summary.json", "w"), indent=1); print(s)
PY
echo "rc=$RC secs=$(( $(date +%s)-t0 )) out=$OUT"
