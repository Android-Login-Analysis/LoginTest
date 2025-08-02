.class Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$ProgressEventHandler;
.super Landroid/os/Handler;
.source "AudioSlidePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressEventHandler"
.end annotation


# instance fields
.field private final playerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V
    .locals 1

    .line 329
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 330
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$ProgressEventHandler;->playerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$ProgressEventHandler;-><init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    return-void
.end method

.method private isPlayerActive(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z
    .locals 2

    .line 347
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

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


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 335
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$ProgressEventHandler;->playerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    if-eqz p1, :cond_1

    .line 337
    invoke-static {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$ProgressEventHandler;->isPlayerActive(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$1100(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Landroid/util/Pair;

    move-result-object v0

    .line 342
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    invoke-static {p1, v1, v2, v3, v4}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$1200(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;DJ)V

    const/4 p1, 0x0

    const-wide/16 v0, 0x32

    .line 343
    invoke-virtual {p0, p1, v0, v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$ProgressEventHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
