.class Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;
.super Ljava/lang/Object;
.source "AudioSlidePlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->requestDuration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPlayerStateChanged$0$org-thoughtcrime-securesms-audio-AudioSlidePlayer$1()V
    .locals 4

    .line 88
    invoke-static {}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request duration "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$200(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$300(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$200(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;->onReceivedDuration(I)V

    .line 90
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$200(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 91
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$200(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 92
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$202(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 87
    new-instance p1, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$1;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method
