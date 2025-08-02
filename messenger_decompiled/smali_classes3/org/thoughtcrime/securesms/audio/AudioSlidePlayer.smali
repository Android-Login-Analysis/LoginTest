.class public Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;
.super Ljava/lang/Object;
.source "AudioSlidePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;,
        Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$ProgressEventHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSlidePlayer"

.field private static playing:Lorg/thoughtcrime/securesms/util/guava/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private durationCalculator:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private final progressEventHandler:Landroid/os/Handler;

.field private final slide:Lorg/thoughtcrime/securesms/mms/AudioSlide;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/AudioSlide;Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->slide:Lorg/thoughtcrime/securesms/mms/AudioSlide;

    .line 74
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->listener:Ljava/lang/ref/WeakReference;

    .line 75
    new-instance p1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$ProgressEventHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$ProgressEventHandler;-><init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->progressEventHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lorg/thoughtcrime/securesms/mms/AudioSlide;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->slide:Lorg/thoughtcrime/securesms/mms/AudioSlide;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Landroid/util/Pair;
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->getProgress()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;DJ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->notifyOnProgress(DJ)V

    return-void
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->durationCalculator:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$202(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->durationCalculator:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->getListener()Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$402(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->setPlaying(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    return-void
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->notifyOnStart()V

    return-void
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->progressEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->notifyOnStop()V

    return-void
.end method

.method static synthetic access$900(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized createFor(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/AudioSlide;Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;
    .locals 2

    const-class v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->getAudioSlide()Lorg/thoughtcrime/securesms/mms/AudioSlide;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->setListener(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;)V

    .line 62
    sget-object p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 64
    :cond_0
    :try_start_1
    new-instance v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-direct {v1, p0, p1, p2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/AudioSlide;Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 4

    .line 195
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->context:Landroid/content/Context;

    const-string v2, "GenericUserAgent"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 196
    new-instance v1, Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSourceFactory;

    invoke-direct {v1, v0}, Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;)V

    .line 197
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setConstantBitrateSeekingEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    move-result-object v0

    .line 199
    new-instance v2, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 200
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1
.end method

.method private getListener()Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;

    if-eqz v0, :cond_0

    return-object v0

    .line 281
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$6;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$6;-><init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    return-object v0
.end method

.method private getProgress()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object v3, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 246
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 243
    :cond_1
    :goto_0
    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private notifyOnProgress(DJ)V
    .locals 7

    .line 269
    new-instance v6, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;-><init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;DJ)V

    invoke-static {v6}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyOnStart()V
    .locals 1

    .line 251
    new-instance v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$3;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$3;-><init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyOnStop()V
    .locals 1

    .line 260
    new-instance v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$4;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$4;-><init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private play(DZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->slide:Lorg/thoughtcrime/securesms/mms/AudioSlide;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->startTime:J

    .line 121
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->slide:Lorg/thoughtcrime/securesms/mms/AudioSlide;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 122
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 123
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x2

    if-eqz p3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    .line 124
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v2

    if-eqz p3, :cond_2

    const/4 v1, 0x2

    .line 125
    :cond_2
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object p3

    .line 126
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object p3

    .line 123
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 127
    iget-object p3, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;-><init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;D)V

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void

    .line 114
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Slide has no URI!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized removePlaying(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V
    .locals 2

    const-class v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    monitor-enter v0

    .line 313
    :try_start_0
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 314
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p0

    sput-object p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized setPlaying(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V
    .locals 2

    const-class v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    monitor-enter v0

    .line 304
    :try_start_0
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 305
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->notifyOnStop()V

    .line 306
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->stop()V

    .line 309
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->of(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p0

    sput-object p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static stopAll()V
    .locals 2

    .line 219
    sget-object v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const-class v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    monitor-enter v0

    .line 221
    :try_start_0
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->playing:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->stop()V

    .line 224
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAudioSlide()Lorg/thoughtcrime/securesms/mms/AudioSlide;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->slide:Lorg/thoughtcrime/securesms/mms/AudioSlide;

    return-object v0
.end method

.method public keepScreenOn(Z)V
    .locals 2

    .line 294
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/16 v1, 0x80

    if-eqz p1, :cond_0

    .line 296
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 298
    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public play(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->play(DZ)V

    return-void
.end method

.method public requestDuration()V
    .locals 5

    const/4 v0, 0x0

    .line 80
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    const v2, 0x7fffffff

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->context:Landroid/content/Context;

    new-instance v3, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->durationCalculator:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 82
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 83
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->durationCalculator:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v2, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;-><init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 97
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->durationCalculator:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->slide:Lorg/thoughtcrime/securesms/mms/AudioSlide;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 99
    sget-object v2, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->getListener()Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;->onReceivedDuration(I)V

    :goto_0
    return-void
.end method

.method public setListener(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;)V
    .locals 1

    .line 229
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->listener:Ljava/lang/ref/WeakReference;

    .line 231
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 232
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->notifyOnStart()V

    :cond_0
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 205
    :try_start_0
    sget-object v0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->TAG:Ljava/lang/String;

    const-string v1, "Stop called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->keepScreenOn(Z)V

    .line 208
    invoke-static {p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->removePlaying(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    .line 210
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 212
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->mediaPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
