.class Lorg/thoughtcrime/securesms/jobmanager/JobQueue;
.super Ljava/lang/Object;
.source "JobQueue.java"


# instance fields
.field private final activeGroupIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/thoughtcrime/securesms/jobmanager/Job;",
            ">;"
        }
    .end annotation
.end field

.field private final jobQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/thoughtcrime/securesms/jobmanager/Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->activeGroupIds:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->jobQueue:Ljava/util/LinkedList;

    return-void
.end method

.method private getNextAvailableJob()Lorg/thoughtcrime/securesms/jobmanager/Job;
    .locals 4

    .line 72
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 75
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/jobmanager/Job;

    .line 78
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/jobmanager/Job;->isRequirementsMet()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->isGroupIdAvailable(Lorg/thoughtcrime/securesms/jobmanager/Job;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 80
    invoke-direct {p0, v2}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->setGroupIdUnavailable(Lorg/thoughtcrime/securesms/jobmanager/Job;)V

    return-object v2

    :cond_2
    return-object v1
.end method

.method private isGroupIdAvailable(Lorg/thoughtcrime/securesms/jobmanager/Job;)Z
    .locals 2

    .line 93
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->activeGroupIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->activeGroupIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/jobmanager/Job;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isJobActive(Lorg/thoughtcrime/securesms/jobmanager/Job;)Z
    .locals 5

    .line 89
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getRetryUntil()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getRunIteration()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private processJobAddition(Lorg/thoughtcrime/securesms/jobmanager/Job;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->isJobActive(Lorg/thoughtcrime/securesms/jobmanager/Job;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->isGroupIdAvailable(Lorg/thoughtcrime/securesms/jobmanager/Job;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->setGroupIdUnavailable(Lorg/thoughtcrime/securesms/jobmanager/Job;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->isGroupIdAvailable(Lorg/thoughtcrime/securesms/jobmanager/Job;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->activeGroupIds:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/jobmanager/Job;

    .line 42
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->resetRunStats()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setGroupIdUnavailable(Lorg/thoughtcrime/securesms/jobmanager/Job;)V
    .locals 2

    .line 98
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/jobmanager/Job;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->activeGroupIds:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized add(Lorg/thoughtcrime/securesms/jobmanager/Job;)V
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->processJobAddition(Lorg/thoughtcrime/securesms/jobmanager/Job;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getNext()Lorg/thoughtcrime/securesms/jobmanager/Job;
    .locals 2

    monitor-enter p0

    .line 54
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->getNextAvailableJob()Lorg/thoughtcrime/securesms/jobmanager/Job;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 60
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method declared-synchronized push(Lorg/thoughtcrime/securesms/jobmanager/Job;)V
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setGroupIdAvailable(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->activeGroupIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 69
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
