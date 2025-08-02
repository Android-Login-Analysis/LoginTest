.class Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;
.super Ljava/lang/Object;
.source "AudioSlidePlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->play(DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field started:Z

.field final synthetic this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    iput-wide p2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->started:Z

    return-void
.end method


# virtual methods
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

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 177
    invoke-static {}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaPlayer Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    monitor-enter p1

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 181
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$402(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 182
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$800(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    .line 185
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$700(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->getAudioSlide()Lorg/thoughtcrime/securesms/mms/AudioSlide;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->getDcMsgId()I

    move-result p1

    .line 189
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$900(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v0, p1, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openForViewOrShare(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 182
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 6

    const-string v0, "DURATION: "

    .line 133
    invoke-static {}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPlayerStateChanged("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    const/4 v1, 0x0

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 162
    :cond_0
    invoke-static {}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onComplete"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    monitor-enter p1

    .line 164
    :try_start_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$300(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;

    move-result-object p2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;->onReceivedDuration(I)V

    .line 165
    iget-object p2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 166
    iget-object p2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$402(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 167
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->keepScreenOn(Z)V

    .line 170
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$800(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    .line 171
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$700(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception p2

    .line 167
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 137
    :cond_1
    invoke-static {}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "onPrepared() "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "% buffered"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    monitor-enter p1

    .line 139
    :try_start_2
    iget-object p2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p2

    if-nez p2, :cond_2

    monitor-exit p1

    return-void

    .line 140
    :cond_2
    invoke-static {}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->started:Z

    if-eqz p2, :cond_3

    .line 143
    invoke-static {}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Already started. Ignoring."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit p1

    return-void

    :cond_3
    const/4 p2, 0x1

    .line 147
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->started:Z

    .line 149
    iget-wide v2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->val$progress:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    .line 150
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$400(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->val$progress:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-long v2, v2

    :try_start_3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 153
    :cond_4
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$500(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    .line 154
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->keepScreenOn(Z)V

    .line 157
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$600(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)V

    .line 158
    iget-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$2;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$700(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :catchall_1
    move-exception p2

    .line 154
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
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
