.class Lorg/thoughtcrime/securesms/ConversationActivity$1$1;
.super Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity$1;->onSuccess(Ljava/lang/Boolean;)V
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
.field final synthetic this$1:Lorg/thoughtcrime/securesms/ConversationActivity$1;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity$1;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$1$1;->this$1:Lorg/thoughtcrime/securesms/ConversationActivity$1;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$org-thoughtcrime-securesms-ConversationActivity$1$1()V
    .locals 2

    .line 228
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$1$1;->this$1:Lorg/thoughtcrime/securesms/ConversationActivity$1;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/ConversationFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$1$1;->this$1:Lorg/thoughtcrime/securesms/ConversationActivity$1;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$1$1;->this$1:Lorg/thoughtcrime/securesms/ConversationActivity$1;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->moveToLastSeen()V

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wanted to move to the last seen position, but the fragment was in an invalid state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    new-instance p1, Lorg/thoughtcrime/securesms/ConversationActivity$1$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$1$1$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity$1$1;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$1$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
