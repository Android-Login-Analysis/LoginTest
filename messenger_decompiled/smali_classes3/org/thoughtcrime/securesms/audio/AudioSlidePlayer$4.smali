.class Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$4;
.super Ljava/lang/Object;
.source "AudioSlidePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->notifyOnStop()V
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

    .line 260
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$4;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$4;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$300(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;->onStop()V

    return-void
.end method
