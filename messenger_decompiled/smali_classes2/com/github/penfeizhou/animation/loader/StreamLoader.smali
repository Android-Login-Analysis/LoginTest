.class public abstract Lcom/github/penfeizhou/animation/loader/StreamLoader;
.super Ljava/lang/Object;
.source "StreamLoader.java"

# interfaces
.implements Lcom/github/penfeizhou/animation/loader/Loader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final declared-synchronized obtain()Lcom/github/penfeizhou/animation/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 19
    :try_start_0
    new-instance v0, Lcom/github/penfeizhou/animation/io/StreamReader;

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/loader/StreamLoader;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/io/StreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
