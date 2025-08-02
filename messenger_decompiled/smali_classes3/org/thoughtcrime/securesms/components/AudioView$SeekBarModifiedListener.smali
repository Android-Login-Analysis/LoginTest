.class Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;
.super Ljava/lang/Object;
.source "AudioView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/AudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarModifiedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AudioView;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/AudioView;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AudioView;Lorg/thoughtcrime/securesms/components/AudioView$1;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;-><init>(Lorg/thoughtcrime/securesms/components/AudioView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    monitor-enter p0

    .line 299
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$400(Lorg/thoughtcrime/securesms/components/AudioView;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$800(Lorg/thoughtcrime/securesms/components/AudioView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 300
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$400(Lorg/thoughtcrime/securesms/components/AudioView;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    monitor-enter p0

    .line 307
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$400(Lorg/thoughtcrime/securesms/components/AudioView;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$800(Lorg/thoughtcrime/securesms/components/AudioView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 308
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$400(Lorg/thoughtcrime/securesms/components/AudioView;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/AudioView;->access$700(Lorg/thoughtcrime/securesms/components/AudioView;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->play(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 311
    :try_start_1
    invoke-static {}, Lorg/thoughtcrime/securesms/components/AudioView;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
