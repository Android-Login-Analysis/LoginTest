.class public Lorg/thoughtcrime/securesms/connect/FetchWorker;
.super Landroidx/work/Worker;
.source "FetchWorker.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 19
    iput-object p1, p0, Lorg/thoughtcrime/securesms/connect/FetchWorker;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 4

    const-string v0, "++++++++++++++++++ FetchWorker.doWork() started ++++++++++++++++++"

    const-string v1, "DeltaChat"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/FetchWorker;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->startIo()V

    const-wide/32 v2, 0xea60

    .line 36
    invoke-static {v2, v3}, Lorg/thoughtcrime/securesms/util/Util;->sleep(J)V

    const-string v0, "++++++++++++++++++ FetchWorker.doWork() will return ++++++++++++++++++"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
