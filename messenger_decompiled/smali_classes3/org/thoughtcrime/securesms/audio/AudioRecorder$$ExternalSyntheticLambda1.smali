.class public final synthetic Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/b44t/messenger/util/concurrent/SettableFuture;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda1;->f$0:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda1;->f$0:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioRecorder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->lambda$sendToFuture$2(Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/Exception;)V

    return-void
.end method
