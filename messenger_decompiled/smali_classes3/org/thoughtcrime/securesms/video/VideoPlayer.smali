.class public Lorg/thoughtcrime/securesms/video/VideoPlayer;
.super Landroid/widget/FrameLayout;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/video/VideoPlayer$ExoPlayerListener;
    }
.end annotation


# instance fields
.field private exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private final exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/video/VideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/video/VideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0c010d

    .line 68
    invoke-static {p1, p2, p0}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0903d5

    .line 70
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    return-void
.end method

.method private setExoViewSource(Lorg/thoughtcrime/securesms/mms/VideoSlide;Z)V
    .locals 10

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    .line 97
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 99
    new-instance v1, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 101
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 102
    new-instance v1, Lorg/thoughtcrime/securesms/video/VideoPlayer$ExoPlayerListener;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->window:Landroid/view/Window;

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/video/VideoPlayer$ExoPlayerListener;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 104
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "GenericUserAgent"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 107
    new-instance v6, Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSourceFactory;

    invoke-direct {v6, v0}, Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;)V

    .line 108
    new-instance v7, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/VideoSlide;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 112
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 113
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public setVideoSource(Lorg/thoughtcrime/securesms/mms/VideoSlide;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->setExoViewSource(Lorg/thoughtcrime/securesms/mms/VideoSlide;Z)V

    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/thoughtcrime/securesms/video/VideoPlayer;->window:Landroid/view/Window;

    return-void
.end method
