"""R2-9 job list: every (repetition, app, configuration); repetition-major so partial results are usable early."""
A = ["com.standardnotes_3003169.apk", "app.organicmaps_25080604.apk", "jp.nonbili.nora_v0.4.4.apk", "com.newsblur_240.apk",
     "com.aurora.store_4.7.5.apk", "com.zionhuang.music_26.apk", "com.dd3boh.outertune_v0.10.0.apk",
     "com.streetwriters.notesnook_3.0.20-official.apk", "org.tasks_140712.apk"]
B = ["dataset_b/com.jerboa_50.apk", "dataset_b/de.astubenbord.paperless_mobile_4.0.6.apk", "dataset_b/findroid-v0.15.3-libre-x86_64.apk",
     "dataset_b/com.mattermost.rnbeta_48204.apk", "dataset_b/com.tombursch.kitchenowl_106.apk", "dataset_b/chat.fluffy.fluffychat_3564.apk"]
GMS = {"org.tasks_140712.apk"}
n = 0
with open("jobs.txt", "w") as f:
    for rep in (1, 2, 3):
        for apk in A + B:
            for cfg in ("c0", "c1", "c2", "c3", "c4"):
                n += 1
                f.write(f"r{rep}_{cfg}_{apk.split('/')[-1].removesuffix('.apk')}|{cfg}|{apk}|{1 if apk in GMS else 0}\n")
print(n, "jobs")
