.class Lorg/thoughtcrime/securesms/components/AudioView$PauseClickedListener;
.super Ljava/lang/Object;
.source "AudioView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/AudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AudioView;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/AudioView;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PauseClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AudioView;Lorg/thoughtcrime/securesms/components/AudioView$1;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AudioView$PauseClickedListener;-><init>(Lorg/thoughtcrime/securesms/components/AudioView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 285
    invoke-static {}, Lorg/thoughtcrime/securesms/components/AudioView;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pausebutton onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PauseClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$400(Lorg/thoughtcrime/securesms/components/AudioView;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PauseClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$900(Lorg/thoughtcrime/securesms/components/AudioView;)V

    .line 288
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PauseClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$400(Lorg/thoughtcrime/securesms/components/AudioView;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->stop()V

    :cond_0
    return-void
.end method
