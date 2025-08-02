.class public Lorg/thoughtcrime/securesms/connect/DcEventCenter;
.super Ljava/lang/Object;
.source "DcEventCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;
    }
.end annotation


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final context:Lorg/thoughtcrime/securesms/ApplicationContext;

.field private final currentAccountObservers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lastErrorLock:Ljava/lang/Object;

.field private final multiAccountObservers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private showNextErrorAsToast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->currentAccountObservers:Ljava/util/Hashtable;

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->multiAccountObservers:Ljava/util/Hashtable;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->LOCK:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->lastErrorLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->showNextErrorAsToast:Z

    .line 33
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    return-void
.end method

.method private addObserver(Ljava/util/Hashtable;ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;",
            ">;>;I",
            "Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;",
            ")V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleError(ILjava/lang/String;)V
    .locals 2

    const-string v0, "DeltaChat"

    .line 142
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p2, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->lastErrorLock:Ljava/lang/Object;

    monitor-enter p2

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->showNextErrorAsToast:Z

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->showNextErrorAsToast:Z

    .line 146
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    new-instance p2, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/connect/DcEventCenter;ZI)V

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic lambda$sendToObservers$0(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;Lcom/b44t/messenger/DcEvent;)V
    .locals 0

    .line 103
    :try_start_0
    invoke-interface {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;->handleEvent(Lcom/b44t/messenger/DcEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$sendToObservers$1(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;Lcom/b44t/messenger/DcEvent;)V
    .locals 0

    .line 112
    :try_start_0
    invoke-interface {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;->handleEvent(Lcom/b44t/messenger/DcEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sendToCurrentAccountObservers(Lcom/b44t/messenger/DcEvent;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->currentAccountObservers:Ljava/util/Hashtable;

    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->sendToObservers(Ljava/util/Hashtable;Lcom/b44t/messenger/DcEvent;)V

    return-void
.end method

.method private sendToMultiAccountObservers(Lcom/b44t/messenger/DcEvent;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->multiAccountObservers:Ljava/util/Hashtable;

    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->sendToObservers(Ljava/util/Hashtable;Lcom/b44t/messenger/DcEvent;)V

    return-void
.end method

.method private sendToObservers(Ljava/util/Hashtable;Lcom/b44t/messenger/DcEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;",
            ">;>;",
            "Lcom/b44t/messenger/DcEvent;",
            ")V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-virtual {p2}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;

    .line 100
    invoke-interface {v1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;->runOnMain()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    new-instance v2, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p2}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;Lcom/b44t/messenger/DcEvent;)V

    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v2, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p2}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;Lcom/b44t/messenger/DcEvent;)V

    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 121
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public addMultiAccountObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->multiAccountObservers:Ljava/util/Hashtable;

    invoke-direct {p0, v0, p1, p2}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(Ljava/util/Hashtable;ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->currentAccountObservers:Ljava/util/Hashtable;

    invoke-direct {p0, v0, p1, p2}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(Ljava/util/Hashtable;ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public captureNextError()V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->lastErrorLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 129
    :try_start_0
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->showNextErrorAsToast:Z

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endCaptureNextError()V
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->lastErrorLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 135
    :try_start_0
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->showNextErrorAsToast:Z

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleEvent(Lcom/b44t/messenger/DcEvent;)J
    .locals 7

    .line 166
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getAccountId()I

    move-result v0

    .line 167
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v1

    .line 169
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->sendToMultiAccountObservers(Lcom/b44t/messenger/DcEvent;)V

    const/16 v2, 0x7d5

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x803

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->sendToCurrentAccountObservers(Lcom/b44t/messenger/DcEvent;)V

    return-wide v3

    .line 177
    :cond_1
    iget-object v2, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->removeNotifications(II)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v2, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v5

    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Int()I

    move-result v6

    invoke-virtual {v2, v0, v5, v6}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->addNotification(III)V

    .line 185
    :goto_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    iget-object v2, v2, Lorg/thoughtcrime/securesms/ApplicationContext;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v2

    if-eq v0, v2, :cond_3

    return-wide v3

    :cond_3
    const/16 v0, 0x64

    const-string v2, "DeltaChat"

    if-eq v1, v0, :cond_7

    const/16 v0, 0x12c

    if-eq v1, v0, :cond_6

    const/16 v0, 0x190

    if-eq v1, v0, :cond_5

    const/16 v0, 0x19a

    if-eq v1, v0, :cond_4

    .line 207
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->sendToCurrentAccountObservers(Lcom/b44t/messenger/DcEvent;)V

    goto :goto_1

    .line 203
    :cond_4
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Str()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->handleError(ILjava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_5
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Str()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->handleError(ILjava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_6
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Str()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_7
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Str()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 p1, 0x7e4

    if-ne v1, p1, :cond_8

    .line 214
    iget-object p1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->triggerRefreshDirectShare(Landroid/content/Context;)V

    :cond_8
    return-wide v3
.end method

.method synthetic lambda$handleError$2$org-thoughtcrime-securesms-connect-DcEventCenter(ZI)V
    .locals 1

    .line 0
    if-eqz p1, :cond_2

    const/16 p1, 0x19a

    if-ne p2, p1, :cond_0

    .line 154
    iget-object p1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const p2, 0x7f12019b

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    :goto_0
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->getInstance()Lorg/thoughtcrime/securesms/connect/ForegroundDetector;

    move-result-object p2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 158
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;->isForeground()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 159
    :cond_1
    iget-object p2, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public removeObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->currentAccountObservers:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->multiAccountObservers:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V
    .locals 4

    .line 68
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->currentAccountObservers:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 70
    iget-object v3, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->currentAccountObservers:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->multiAccountObservers:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 76
    iget-object v3, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->multiAccountObservers:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
