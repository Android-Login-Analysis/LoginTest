.class Lorg/thoughtcrime/securesms/ConversationActivity$7;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;->onRecorderCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
        "Landroid/util/Pair<",
        "Landroid/net/Uri;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$7;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/concurrent/ExecutionException;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1270
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationActivity$7$1;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$7$1;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity$7;Landroid/util/Pair;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1276
    invoke-virtual {v0, p1, v1}, Lorg/thoughtcrime/securesms/ConversationActivity$7$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1267
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$7;->onSuccess(Landroid/util/Pair;)V

    return-void
.end method
