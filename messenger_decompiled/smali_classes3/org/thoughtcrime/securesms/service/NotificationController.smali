.class public final Lorg/thoughtcrime/securesms/service/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final id:I

.field private indeterminate:Z

.field private message:Ljava/lang/String;

.field private percent:J

.field private progress:I

.field private progressMax:I

.field private final service:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/thoughtcrime/securesms/service/GenericForegroundService;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->message:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->percent:J

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->service:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    iput-object p1, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->context:Landroid/content/Context;

    .line 34
    iput p2, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->id:I

    .line 36
    new-instance p2, Lorg/thoughtcrime/securesms/service/NotificationController$1;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/service/NotificationController$1;-><init>(Lorg/thoughtcrime/securesms/service/NotificationController;)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/service/GenericForegroundService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/service/NotificationController;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 17
    iget-object p0, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->service:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/service/NotificationController;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/service/NotificationController;->updateProgressOnService()V

    return-void
.end method

.method private declared-synchronized setProgress(IIZLjava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    mul-int/lit8 v0, p2, 0x64

    .line 78
    :try_start_0
    div-int/2addr v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    :goto_0
    int-to-long v0, v0

    .line 80
    iget-wide v2, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->percent:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->indeterminate:Z

    if-ne v2, p3, :cond_1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->message:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 82
    :goto_1
    iput-wide v0, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->percent:J

    .line 83
    iput p2, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->progress:I

    .line 84
    iput p1, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->progressMax:I

    .line 85
    iput-boolean p3, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->indeterminate:Z

    .line 86
    iput-object p4, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->message:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/service/NotificationController;->updateProgressOnService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateProgressOnService()V
    .locals 7

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->service:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/thoughtcrime/securesms/service/GenericForegroundService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 96
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_1
    iget v2, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->id:I

    iget v3, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->progressMax:I

    iget v4, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->progress:I

    iget-boolean v5, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->indeterminate:Z

    iget-object v6, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->message:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->replaceProgress(IIIZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->context:Landroid/content/Context;

    iget v1, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->id:I

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->stopForegroundTask(Landroid/content/Context;I)V

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getId()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->id:I

    return v0
.end method

.method public setIndeterminateProgress()V
    .locals 3

    const/4 v0, 0x1

    .line 70
    iget-object v1, p0, Lorg/thoughtcrime/securesms/service/NotificationController;->message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lorg/thoughtcrime/securesms/service/NotificationController;->setProgress(IIZLjava/lang/String;)V

    return-void
.end method

.method public setProgress(JJLjava/lang/String;)V
    .locals 0

    long-to-int p2, p1

    long-to-int p1, p3

    const/4 p3, 0x0

    .line 74
    invoke-direct {p0, p2, p1, p3, p5}, Lorg/thoughtcrime/securesms/service/NotificationController;->setProgress(IIZLjava/lang/String;)V

    return-void
.end method
