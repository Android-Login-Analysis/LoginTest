.class Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;
.super Ljava/lang/Object;
.source "AudioSlidePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->notifyOnProgress(DJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

.field final synthetic val$millis:J

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;DJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    iput-wide p2, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;->val$progress:D

    iput-wide p4, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;->val$millis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 272
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$300(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;

    move-result-object v1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->access$1000(Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;)Lorg/thoughtcrime/securesms/mms/AudioSlide;

    move-result-object v2

    iget-wide v3, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;->val$progress:D

    iget-wide v5, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$5;->val$millis:J

    invoke-interface/range {v1 .. v6}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;->onProgress(Lorg/thoughtcrime/securesms/mms/AudioSlide;DJ)V

    return-void
.end method
