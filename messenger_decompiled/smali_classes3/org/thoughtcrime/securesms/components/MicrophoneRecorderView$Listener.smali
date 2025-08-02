.class public interface abstract Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;
.super Ljava/lang/Object;
.source "MicrophoneRecorderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onRecordCanceled()V
.end method

.method public abstract onRecordLocked()V
.end method

.method public abstract onRecordMoved(FF)V
.end method

.method public abstract onRecordPermissionRequired()V
.end method

.method public abstract onRecordPressed()V
.end method

.method public abstract onRecordReleased()V
.end method
