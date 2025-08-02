.class public Lorg/thoughtcrime/securesms/audio/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioRecorder"

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private audioCodec:Lorg/thoughtcrime/securesms/audio/AudioCodec;

.field private final blobProvider:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

.field private captureUri:Landroid/net/Uri;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lorg/thoughtcrime/securesms/util/ThreadUtil;->newDynamicSingleThreadedExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->context:Landroid/content/Context;

    .line 35
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->blobProvider:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    return-void
.end method

.method static synthetic lambda$sendToFuture$2(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Exception;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method static synthetic lambda$sendToFuture$3(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Object;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendToFuture(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b44t/messenger/util/concurrent/SettableFuture<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda1;-><init>(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Exception;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendToFuture(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b44t/messenger/util/concurrent/SettableFuture<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda3;-><init>(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$startRecording$0$org-thoughtcrime-securesms-audio-AudioRecorder()V
    .locals 7

    .line 42
    sget-object v0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Running startRecording() + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->audioCodec:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->blobProvider:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->context:Landroid/content/Context;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const-string v4, "audio/aac"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->create(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->captureUri:Landroid/net/Uri;

    .line 52
    new-instance v1, Lorg/thoughtcrime/securesms/audio/AudioCodec;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/audio/AudioCodec;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->audioCodec:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    .line 54
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->start(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "We can only record once at a time."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 56
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method synthetic lambda$stopRecording$1$org-thoughtcrime-securesms-audio-AudioRecorder(Lcom/b44t/messenger/util/concurrent/SettableFuture;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->audioCodec:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MediaRecorder was never initialized successfully!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->sendToFuture(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Exception;)V

    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->stop()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->captureUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getMediaSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 76
    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->captureUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->sendToFuture(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->sendToFuture(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->audioCodec:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    .line 83
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->captureUri:Landroid/net/Uri;

    return-void
.end method

.method public startRecording()V
    .locals 2

    .line 39
    sget-object v0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "startRecording()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/audio/AudioRecorder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopRecording()Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 62
    sget-object v0, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    .line 66
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/audio/AudioRecorder;Lcom/b44t/messenger/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
