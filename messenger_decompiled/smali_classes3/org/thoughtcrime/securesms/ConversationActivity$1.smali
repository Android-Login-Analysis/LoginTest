.class Lorg/thoughtcrime/securesms/ConversationActivity$1;
.super Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;->onCreate(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/ConversationActivity$1$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$1$1;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity$1;)V

    invoke-interface {p1, v0}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 220
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
