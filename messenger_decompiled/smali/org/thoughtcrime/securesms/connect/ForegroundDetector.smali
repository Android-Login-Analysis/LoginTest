.class public Lorg/thoughtcrime/securesms/connect/ForegroundDetector;
.super Ljava/lang/Object;
.source "ForegroundDetector.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static Instance:Lorg/thoughtcrime/securesms/connect/ForegroundDetector;


# instance fields
.field private final application:Lorg/thoughtcrime/securesms/ApplicationContext;

.field private refs:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/thoughtcrime/securesms/ApplicationContext;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->refs:I

    .line 23
    sput-object p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->Instance:Lorg/thoughtcrime/securesms/connect/ForegroundDetector;

    .line 24
    iput-object p1, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->application:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 25
    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static getInstance()Lorg/thoughtcrime/securesms/connect/ForegroundDetector;
    .locals 1

    .line 19
    sget-object v0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->Instance:Lorg/thoughtcrime/securesms/connect/ForegroundDetector;

    return-object v0
.end method


# virtual methods
.method public isBackground()Z
    .locals 1

    .line 33
    iget v0, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->refs:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForeground()Z
    .locals 1

    .line 29
    iget v0, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->refs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$onActivityStarted$0$org-thoughtcrime-securesms-connect-ForegroundDetector()V
    .locals 2

    .line 0
    const-string v0, "calling maybeNetwork()"

    const-string v1, "DeltaChat"

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->application:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->maybeNetwork()V

    const-string v0, "maybeNetwork() returned"

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 38
    iget p1, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->refs:I

    if-nez p1, :cond_0

    const-string p1, "DeltaChat"

    const-string v0, "++++++++++++++++++ first ForegroundDetector.onActivityStarted() ++++++++++++++++++"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->application:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcAccounts;->startIo()V

    .line 41
    iget-object p1, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->application:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/connect/ForegroundDetector$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/connect/ForegroundDetector;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 50
    :cond_0
    iget p1, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->refs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->refs:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 56
    iget p1, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->refs:I

    const-string v0, "DeltaChat"

    if-gtz p1, :cond_0

    const-string p1, "invalid call to ForegroundDetector.onActivityStopped()"

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 61
    iput p1, p0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->refs:I

    if-nez p1, :cond_1

    const-string p1, "++++++++++++++++++ last ForegroundDetector.onActivityStopped() ++++++++++++++++++"

    .line 64
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
