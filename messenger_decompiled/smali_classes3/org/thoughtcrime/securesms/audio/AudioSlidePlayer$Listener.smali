.class public interface abstract Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;
.super Ljava/lang/Object;
.source "AudioSlidePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onProgress(Lorg/thoughtcrime/securesms/mms/AudioSlide;DJ)V
.end method

.method public abstract onReceivedDuration(I)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
