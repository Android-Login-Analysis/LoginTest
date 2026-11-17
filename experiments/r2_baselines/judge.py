"""R2-9: judge whether an agent-only run (c3/c4) reported a target bug.

Input: <results>/judge_input.jsonl (written by score.py). Output: <results>/judge_output.jsonl, one verdict per
(job, issue) with the judge's reason. A different model than the agent under test is used. Verdicts are reviewed by
hand before they are used (manual_verdict column in the final table).
Usage: python3 judge.py ~/r2_results [model]
"""
import json, os, sys, time, urllib.request

ISSUES = {
    "standardnotes/forum#4030": "Text typed into the sign-in form is lost when the screen is rotated.",
    "standardnotes/forum#4032": "Signing in with a wrong password still leads to the two-factor (MFA) code prompt instead of an error.",
    "organicmaps#11668": "The login error message disappears when the screen is rotated.",
    "organicmaps#11669": "Rotating the screen while a login is in progress resets the login (the in-flight login is lost).",
    "organicmaps#11670": "The same error message is shown for wrong credentials and for a network failure.",
    "nonbili/Nora#106": "Rotating the screen during login resets the login page / loses the in-progress login.",
    "samuelclay/NewsBlur#1996": "The password is passed between screens in plaintext (Intent extra), a credential-handling flaw.",
    "AuroraStore#1435": "Authentication data (tokens/credentials) are stored in plaintext in the app's preferences.",
    "AuroraStore#1436": "The typed account identifier (email) on the Google sign-in page is lost when the screen is rotated.",
    "z-huang/InnerTune#1861": "The login cookie is stored in plaintext in the app's storage.",
    "OuterTune/OuterTune#965": "The login cookie is stored in plaintext in the app's storage.",
    "streetwriters/notesnook#6647": "The two-factor (MFA) code prompt cannot be closed or cancelled; the user is stuck on it.",
    "streetwriters/notesnook#6640": "Without network the app says a two-factor code was sent / keeps asking for it, without reporting the failure.",
    "tasks/tasks#3962": "Signing in fails on a poor/limited network without any error message to the user.",
    "LemmyNet/jerboa#1298": "The app crashes when attempting to log in.",
    "astubenbord/paperless-mobile#572": "After entering valid credentials the app shows a loading screen forever and never finishes logging in.",
    "astubenbord/paperless-mobile#332": "When the server cannot be reached, the login gives no useful feedback (keeps loading, no error).",
    "jarnedemeulemeester/findroid#877": "Logging in with valid credentials fails with 'Unknown error'.",
    "mattermost/mattermost-mobile#7524": "The MFA token cannot be entered during login.",
    "TomBursch/kitchenowl#626": "Login with valid credentials does not work; the login screen reloads without an error.",
    "krille-chan/fluffychat#3589": "Login with valid credentials is cancelled and the user is kicked back to the login screen.",
    "krille-chan/fluffychat#2996": "Login fails on a restricted network connection.",
}

PROMPT = """You are judging an automated GUI testing run of an Android app.

Target bug (from the app's issue tracker): {issue_text}

Bug reports written by the testing agent during the run:
{reports}

Did the agent report the target bug, i.e. the same symptom (wording may differ)? Reports of other problems do not count,
and a report of the same symptom with a wrong explanation of the cause still counts. Answer with JSON only:
{{"reported": true or false, "matching_report": "<the matching report or empty>", "reason": "<one sentence>"}}"""


def ask(base, key, model, prompt):
    body = json.dumps({"model": model, "messages": [{"role": "user", "content": prompt}], "temperature": 0}).encode()
    for attempt in range(6):
        try:
            req = urllib.request.Request(base.rstrip("/") + "/chat/completions", data=body,
                                         headers={"Content-Type": "application/json", "Authorization": "Bearer " + key})
            with urllib.request.urlopen(req, timeout=180) as r:
                return json.load(r)["choices"][0]["message"]["content"]
        except Exception as e:
            time.sleep(10 * (attempt + 1))
    return '{"reported": null, "matching_report": "", "reason": "judge request failed"}'


def main(root, model):
    base, key = os.environ["OPENAI_BASE_URL"], os.environ["OPENAI_API_KEY"]
    out_path = os.path.join(root, "judge_output.jsonl")
    done = set()
    if os.path.exists(out_path):
        for l in open(out_path):
            j = json.loads(l); done.add((j["job"], j["issue"]))
    with open(out_path, "a") as out:
        for l in open(os.path.join(root, "judge_input.jsonl")):
            item = json.loads(l)
            if (item["job"], item["issue"]) in done:
                continue
            if not item["bug_reports"]:
                verdict = {"reported": False, "matching_report": "", "reason": "no bug reports"}
            else:
                reports = "\n".join(f"- {b}" for b in item["bug_reports"][:40])
                raw = ask(base, key, model, PROMPT.format(issue_text=ISSUES[item["issue"]], reports=reports))
                try:
                    verdict = json.loads(raw[raw.index("{"): raw.rindex("}") + 1])
                except Exception:
                    verdict = {"reported": None, "matching_report": "", "reason": "unparseable: " + raw[:200]}
            out.write(json.dumps({"job": item["job"], "issue": item["issue"], "judge_model": model, **verdict}) + "\n")
            out.flush()


if __name__ == "__main__":
    main(os.path.expanduser(sys.argv[1] if len(sys.argv) > 1 else "~/r2_results"),
         sys.argv[2] if len(sys.argv) > 2 else "gpt-6.1-sol")
