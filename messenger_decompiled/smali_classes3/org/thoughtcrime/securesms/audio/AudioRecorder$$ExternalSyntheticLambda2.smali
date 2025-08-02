.class public final synthetic Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/audio/AudioRecorder;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/audio/AudioRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->lambda$startRecording$0$org-thoughtcrime-securesms-audio-AudioRecorder()V

    return-void
.end method
