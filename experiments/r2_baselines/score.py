"""R2-9 scoring: per job, whether each target bug was detected, time to first detection, actions and tokens.

Usage: python3 score.py ~/r2_results > scores.csv
Tool configurations (c0 LIFTDroid, c1 Monkey+LIFTDroid, c2 agent+LIFTDroid) are matched automatically against the
evidence strings used for the reproductions (reproduction/README.md). Agent-only configurations (c3, c4) report
free text; their unique BUG lines are written to judge_input.jsonl for judging (detected = blank here).
"""
import csv, glob, json, os, re, sys
from datetime import datetime

# Round schedule: 1 normal+valid, 2 normal+invalid, 3 limited+valid, 4 offline+valid, 5 unresponsive+valid.
# A target matches either a regex on the run log ("log", rx) or a finding type in given rounds' reports ("bug", type, rounds).
TARGETS = {
    "com.standardnotes": [("standardnotes/forum#4030", ("log", r"ROTATION_INPUT_LOST")),
                          ("standardnotes/forum#4032", ("log", r"MFA_AFTER_INVALID_CREDENTIALS"))],
    "app.organicmaps": [("organicmaps#11668", ("log", r"ROTATION_ERROR_MESSAGE_LOST")),
                        ("organicmaps#11669", ("log", r"ROTATION_LOGIN_STATE_RESET")),
                        ("organicmaps#11670", ("log", r"Same message for wrong credentials and network failure"))],
    "jp.nonbili.nora": [("nonbili/Nora#106", ("log", r"ROTATION_LOGIN_STATE_RESET"))],
    "com.newsblur": [("samuelclay/NewsBlur#1996", ("log", r"PASSWORD_IN_INTENT_EXTRA"))],
    "com.aurora.store": [("AuroraStore#1435", ("log", r"PREFERENCE_AUTH_DATA")),
                         ("AuroraStore#1436", ("log", r"Typed identifier lost on rotation"))],
    "com.zionhuang.music": [("z-huang/InnerTune#1861", ("log", r"innerTubeCookie"))],
    "com.dd3boh.outertune": [("OuterTune/OuterTune#965", ("log", r"innerTubeCookie"))],
    "com.streetwriters.notesnook": [("streetwriters/notesnook#6647", ("log", r"MFA_PROMPT_NOT_DISMISSABLE")),
                                    ("streetwriters/notesnook#6640", ("log", r"MFA_CODE_PROMPT_WITHOUT_DELIVERY"))],
    "org.tasks": [("tasks/tasks#3962", ("log", r"LOGIN_FAILURE_WITHOUT_FEEDBACK"))],
    "com.jerboa": [("LemmyNet/jerboa#1298", ("log", r"Crash recorded: FATAL_EXCEPTION"))],
    "de.astubenbord.paperless_mobile": [("astubenbord/paperless-mobile#572", ("bug", "LOGIN_TIMEOUT", {1})),
                                        ("astubenbord/paperless-mobile#332", ("log", r"LOGIN_FAILURE_WITHOUT_FEEDBACK - Network 'offline'"))],
    "findroid": [("jarnedemeulemeester/findroid#877", ("log", r"VALID_CREDENTIALS_REJECTED"))],
    "com.mattermost.rnbeta": [("mattermost/mattermost-mobile#7524", ("log", r"MFA_PROMPT_NOT_DISMISSABLE|VALID_CREDENTIALS_REJECTED"))],
    "com.tombursch.kitchenowl": [("TomBursch/kitchenowl#626", ("bug", "LOGIN_TIMEOUT|VALID_CREDENTIALS_REJECTED", {1}))],
    "chat.fluffy.fluffychat": [("krille-chan/fluffychat#3589", ("bug", "LOGIN_TIMEOUT|VALID_CREDENTIALS_REJECTED", {1})),
                               ("krille-chan/fluffychat#2996", ("log", r"LOGIN_FAILURE_WITHOUT_FEEDBACK - Network 'limited'"))],
}
ROUND_DONE_RE = re.compile(r"Detected \d+ potential bug\(s\) in Round (\d+)|ROUND (\d+) COMPLETED")

def round_findings(d):
    """round number -> set of finding types from the per-round reports"""
    out = {}
    for f in glob.glob(os.path.join(d, "bugs", "bugs_round_*.txt")):
        m = re.search(r"bugs_round_(\d+)_", f)
        if m:
            out.setdefault(int(m.group(1)), set()).update(re.findall(r"^Type: (\S+)", open(f, errors="replace").read(), re.M))
    return out

# tool actions counted from the run log (taps, typed fields, Monkey steps, key events sent by the tool)
# Tool UI actions, counted from the run log (approximate): field taps with typing, button clicks, entry taps,
# Monkey steps, server-step actions, WebView clicks/fills, TOTP entries
ACTION_RE = re.compile(r"\[INPUT\] Clicking at|Click element:|tapping login entry|Monkey step \d+ finished|Clicked login button at|"
                       r"\[SERVER\] (Submitting|Selecting|Ticked|Server-address step: (entered|typed))|Filled server field|"
                       r"\[WEBVIEW\] (trusted click on|Tapped web login entry|filled form)|\[MFA\] Authenticator prompt; entering")
TS_RE = re.compile(r"^\[(\d{4}-\d\d-\d\d \d\d:\d\d:\d\d\.\d{3})\]")

def appkey(job):
    k = re.sub(r"^r\d+_c\d_", "", job)
    return re.sub(r"[-_](v?\d[\d.]*.*)$", "", k)

def ts(line):
    m = TS_RE.match(line)
    return datetime.strptime(m.group(1), "%Y-%m-%d %H:%M:%S.%f") if m else None

def score_tool(d, key):
    log = os.path.join(d, "run.log")
    lines = open(log, errors="replace").read().splitlines() if os.path.exists(log) else []
    start, last_ts, first, round_end = None, None, {}, {}
    actions = 0
    for l in lines:
        t = ts(l)
        if t:
            start = start or t
            last_ts = t
        if ACTION_RE.search(l):
            actions += 1
        m = ROUND_DONE_RE.search(l)
        if m and last_ts:
            round_end.setdefault(int(m.group(1) or m.group(2)), last_ts)
        for issue, rule in TARGETS.get(key, []):
            if rule[0] == "log" and issue not in first and re.search(rule[1], l):
                first[issue] = last_ts
    rf = round_findings(d)
    for issue, rule in TARGETS.get(key, []):
        if rule[0] == "bug" and issue not in first:
            hits = sorted(r for r in rule[2] if any(re.fullmatch(rule[1], t) for t in rf.get(r, ())))
            if hits:
                first[issue] = round_end.get(hits[0], last_ts)
    ep = os.path.join(d, "agent_episodes.csv")
    req = pt = ct = 0
    if os.path.exists(ep):
        for r in csv.DictReader(open(ep)):
            actions += int(r["actions"]); req += int(r["requests"]); pt += int(r["prompt_tokens"]); ct += int(r["completion_tokens"])
    rows = []
    for issue, _ in TARGETS.get(key, []):
        t = first.get(issue)
        rows.append({"issue": issue, "detected": int(issue in first),
                     "time_to_bug_s": int((t - start).total_seconds()) if t and start else "",
                     "actions": actions, "requests": req, "prompt_tokens": pt, "completion_tokens": ct,
                     "run_seconds": int((last_ts - start).total_seconds()) if start and last_ts else "",
                     "completed": int(any(l.startswith("EXIT 0") for l in lines))})
    return rows

def score_agent(d, key, judge_out):
    s = json.load(open(os.path.join(d, "summary.json"))) if os.path.exists(os.path.join(d, "summary.json")) else {}
    bugs = []
    if os.path.exists(os.path.join(d, "bugs.txt")):
        for l in open(os.path.join(d, "bugs.txt"), errors="replace"):
            b = re.split(r"(?<=[.!?])\s", l.strip().removeprefix("BUG:").strip(), maxsplit=1)[0]   # first sentence: the bug
            if b and b not in bugs: bugs.append(b)
    acts = [json.loads(l) for l in open(os.path.join(d, "actions.jsonl"))] if os.path.exists(os.path.join(d, "actions.jsonl")) else []
    t0 = acts[0]["t"] if acts else None
    for issue, _ in TARGETS.get(key, []):
        judge_out.write(json.dumps({"job": os.path.basename(d), "issue": issue, "bug_reports": bugs}) + "\n")
    return [{"issue": issue, "detected": "", "time_to_bug_s": "", "actions": s.get("actions", ""),
             "requests": s.get("requests", ""), "prompt_tokens": s.get("prompt_tokens", ""),
             "completion_tokens": s.get("completion_tokens", ""),
             "run_seconds": int((acts[-1]["t"] - t0) / 1000) if acts else "", "completed": int(bool(s)),
             "unique_bug_reports": len(bugs)} for issue, _ in TARGETS.get(key, [])]

def main(root):
    w = csv.DictWriter(sys.stdout, ["job", "rep", "config", "app", "issue", "detected", "time_to_bug_s", "actions", "requests",
                                    "prompt_tokens", "completion_tokens", "run_seconds", "completed", "unique_bug_reports"])
    w.writeheader()
    with open(os.path.join(root, "judge_input.jsonl"), "w") as jo:
        for d in sorted(glob.glob(os.path.join(root, "r[0-9]_c[0-9]_*"))):
            job = os.path.basename(d); rep, cfg = job.split("_")[0], job.split("_")[1]; key = appkey(job)
            rows = score_tool(d, key) if cfg in ("c0", "c1", "c2") else score_agent(d, key, jo)
            for r in rows:
                w.writerow({"job": job, "rep": rep, "config": cfg, "app": key, **r})

if __name__ == "__main__":
    main(os.path.expanduser(sys.argv[1] if len(sys.argv) > 1 else "~/r2_results"))
