.class public Lorg/thoughtcrime/securesms/util/ListenableFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ListenableFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final identifier:Ljava/lang/Object;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/util/FutureTaskListener<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask$1;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 30
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->listeners:Ljava/util/List;

    .line 64
    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->identifier:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 66
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->run()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 30
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->listeners:Ljava/util/List;

    .line 48
    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->identifier:Ljava/lang/Object;

    .line 49
    iput-object p3, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/util/ListenableFutureTask;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/util/ListenableFutureTask;Lorg/thoughtcrime/securesms/util/FutureTaskListener;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->callback(Lorg/thoughtcrime/securesms/util/FutureTaskListener;)V

    return-void
.end method

.method private callback()V
    .locals 2

    .line 87
    new-instance v0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask$2;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask$2;-><init>(Lorg/thoughtcrime/securesms/util/ListenableFutureTask;)V

    .line 96
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private callback(Lorg/thoughtcrime/securesms/util/FutureTaskListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/FutureTaskListener<",
            "TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/thoughtcrime/securesms/util/FutureTaskListener;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-interface {p1, v0}, Lorg/thoughtcrime/securesms/util/FutureTaskListener;->onFailure(Ljava/util/concurrent/ExecutionException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 105
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lorg/thoughtcrime/securesms/util/FutureTaskListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/FutureTaskListener<",
            "TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->callback(Lorg/thoughtcrime/securesms/util/FutureTaskListener;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized done()V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->callback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 114
    instance-of v0, p1, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->identifier:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 117
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->identifier:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 124
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized removeListener(Lorg/thoughtcrime/securesms/util/FutureTaskListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/FutureTaskListener<",
            "TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
