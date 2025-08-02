.class public final synthetic Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

.field public final synthetic f$1:Lcom/b44t/messenger/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/audio/AudioRecorder;Lcom/b44t/messenger/util/concurrent/SettableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda0;->f$1:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda0;->f$1:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->lambda$stopRecording$1$org-thoughtcrime-securesms-audio-AudioRecorder(Lcom/b44t/messenger/util/concurrent/SettableFuture;)V

    return-void
.end method
