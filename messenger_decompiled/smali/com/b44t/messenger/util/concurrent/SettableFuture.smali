.class public Lcom/b44t/messenger/util/concurrent/SettableFuture;
.super Ljava/lang/Object;
.source "SettableFuture.java"

# interfaces
.implements Lcom/b44t/messenger/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private canceled:Z

.field private completed:Z

.field private volatile exception:Ljava/lang/Throwable;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->listeners:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->result:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    return-void
.end method

.method private notifyAllListeners()V
    .locals 2

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;

    .line 128
    invoke-direct {p0, v1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->notifyListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private notifyListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
            "TT;>;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;->onFailure(Ljava/util/concurrent/ExecutionException;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->result:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
            "TT;>;)V"
        }
    .end annotation

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-boolean v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 115
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-direct {p0, p1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->notifyListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 115
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 0

    monitor-enter p0

    .line 27
    :try_start_0
    iget-boolean p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->canceled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return p1

    .line 32
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deferTo(Lcom/b44t/messenger/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/b44t/messenger/util/concurrent/SettableFuture$1;

    invoke-direct {v0, p0}, Lcom/b44t/messenger/util/concurrent/SettableFuture$1;-><init>(Lcom/b44t/messenger/util/concurrent/SettableFuture;)V

    invoke-interface {p1, v0}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    return-void
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 91
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    :goto_0
    iget-boolean v2, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 102
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 105
    :cond_0
    iget-boolean p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 105
    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->canceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->result:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-direct {p0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->notifyAllListeners()V

    return p1

    .line 47
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->canceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->exception:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture;->completed:Z

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-direct {p0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->notifyAllListeners()V

    return p1

    .line 61
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
