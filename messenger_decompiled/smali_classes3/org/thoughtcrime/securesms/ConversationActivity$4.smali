.class Lorg/thoughtcrime/securesms/ConversationActivity$4;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;->initializeDraft()Lcom/b44t/messenger/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

.field final synthetic val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 758
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$4;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$4;->val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/ConversationActivity$4;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/concurrent/ExecutionException;)V
    .locals 1

    .line 767
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$4;->val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$4;->val$text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 768
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$4;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$600(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 761
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$4;->val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$4;->val$text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 762
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$4;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$600(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 758
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$4;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
