.class public Lorg/thoughtcrime/securesms/jobmanager/JobManager;
.super Ljava/lang/Object;
.source "JobManager.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final eventExecutor:Ljava/util/concurrent/Executor;

.field private final jobQueue:Lorg/thoughtcrime/securesms/jobmanager/JobQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->jobQueue:Lorg/thoughtcrime/securesms/jobmanager/JobQueue;

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->eventExecutor:Ljava/util/concurrent/Executor;

    .line 23
    iput-object p1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->context:Landroid/content/Context;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 26
    new-instance v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JobConsumer-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->jobQueue:Lorg/thoughtcrime/securesms/jobmanager/JobQueue;

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;-><init>(Ljava/lang/String;Lorg/thoughtcrime/securesms/jobmanager/JobQueue;)V

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;->start()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/jobmanager/JobManager;)Lorg/thoughtcrime/securesms/jobmanager/JobQueue;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->jobQueue:Lorg/thoughtcrime/securesms/jobmanager/JobQueue;

    return-object p0
.end method

.method private acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;
    .locals 2

    const-string v0, "power"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public add(Lorg/thoughtcrime/securesms/jobmanager/Job;)V
    .locals 4

    .line 36
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->needsWakeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getWakeLockTimeout()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->eventExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/thoughtcrime/securesms/jobmanager/JobManager$1;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/jobmanager/JobManager$1;-><init>(Lorg/thoughtcrime/securesms/jobmanager/JobManager;Lorg/thoughtcrime/securesms/jobmanager/Job;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
