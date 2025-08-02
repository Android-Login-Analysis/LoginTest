.class Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;
.super Ljava/lang/Thread;
.source "JobConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobConsumer"


# instance fields
.field private final jobQueue:Lorg/thoughtcrime/securesms/jobmanager/JobQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/thoughtcrime/securesms/jobmanager/JobQueue;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;->jobQueue:Lorg/thoughtcrime/securesms/jobmanager/JobQueue;

    return-void
.end method

.method private canRetry(Lorg/thoughtcrime/securesms/jobmanager/Job;)Z
    .locals 7

    .line 87
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getRetryCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 88
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getRunIteration()I

    move-result v0

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getRetryCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 90
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getRetryUntil()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private runJob(Lorg/thoughtcrime/securesms/jobmanager/Job;)Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;
    .locals 2

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;->canRetry(Lorg/thoughtcrime/securesms/jobmanager/Job;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->onRun()V

    .line 67
    sget-object p1, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->SUCCESS:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 69
    sget-object v1, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 72
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;->onShouldRetry(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    sget-object p1, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->FAILURE:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    return-object p1

    .line 76
    :cond_1
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->onRetry()V

    .line 77
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->isRequirementsMet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object p1, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->DEFERRED:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    return-object p1

    .line 71
    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 83
    :cond_3
    sget-object p1, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->FAILURE:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 42
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;->jobQueue:Lorg/thoughtcrime/securesms/jobmanager/JobQueue;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->getNext()Lorg/thoughtcrime/securesms/jobmanager/Job;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;->runJob(Lorg/thoughtcrime/securesms/jobmanager/Job;)Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    move-result-object v1

    .line 45
    sget-object v2, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->DEFERRED:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    if-ne v1, v2, :cond_1

    .line 46
    iget-object v1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;->jobQueue:Lorg/thoughtcrime/securesms/jobmanager/JobQueue;

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->push(Lorg/thoughtcrime/securesms/jobmanager/Job;)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object v2, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->FAILURE:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    if-ne v1, v2, :cond_2

    .line 49
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;->onCanceled()V

    .line 52
    :cond_2
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getWakeLockTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 53
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 56
    :cond_3
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;->jobQueue:Lorg/thoughtcrime/securesms/jobmanager/JobQueue;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->setGroupIdAvailable(Ljava/lang/String;)V

    goto :goto_0
.end method
