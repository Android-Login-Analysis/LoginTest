.class public Lcom/github/penfeizhou/animation/loader/FileLoader;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/github/penfeizhou/animation/loader/Loader;


# instance fields
.field private final mFile:Ljava/io/File;

.field private mReader:Lcom/github/penfeizhou/animation/io/Reader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/loader/FileLoader;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public declared-synchronized obtain()Lcom/github/penfeizhou/animation/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 26
    :try_start_0
    new-instance v0, Lcom/github/penfeizhou/animation/io/FileReader;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/loader/FileLoader;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
