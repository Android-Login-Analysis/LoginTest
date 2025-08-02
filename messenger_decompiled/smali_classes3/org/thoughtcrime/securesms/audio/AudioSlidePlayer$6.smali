.class Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$6;
.super Ljava/lang/Object;
.source "AudioSlidePlayer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->getListener()Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;
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

    .line 281
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$6;->this$0:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lorg/thoughtcrime/securesms/mms/AudioSlide;DJ)V
    .locals 0

    return-void
.end method

.method public onReceivedDuration(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
