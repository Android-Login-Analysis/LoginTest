.class Lorg/thoughtcrime/securesms/ConversationActivity$5;
.super Landroid/os/AsyncTask;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;->processComposeControls(ILjava/lang/String;Lorg/thoughtcrime/securesms/mms/SlideDeck;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

.field final synthetic val$action:I

.field final synthetic val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;ILcom/b44t/messenger/util/concurrent/SettableFuture;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iput p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->val$action:I

    iput-object p3, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1074
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$5;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    .line 1077
    aget-object v0, p1, v0

    check-cast v0, Lcom/b44t/messenger/DcMsg;

    const/4 v1, 0x1

    .line 1078
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    .line 1079
    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->val$action:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v2

    const/16 v4, 0x50

    if-eq v2, v4, :cond_1

    .line 1084
    :cond_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1300(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object v2

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v4}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcChat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/b44t/messenger/DcContext;->setDraft(ILcom/b44t/messenger/DcMsg;)V

    :cond_1
    if-eqz v0, :cond_5

    .line 1090
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x32

    if-ne p1, v2, :cond_2

    .line 1091
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v1

    invoke-static {p1, v1, v0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->prepareVideo(Landroid/content/Context;ILcom/b44t/messenger/DcMsg;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    .line 1095
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1300(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/b44t/messenger/DcContext;->sendMsg(ILcom/b44t/messenger/DcMsg;)I

    move-result p1

    if-nez p1, :cond_3

    .line 1096
    new-instance p1, Lorg/thoughtcrime/securesms/ConversationActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$5$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity$5;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-object v3

    .line 1101
    :cond_3
    new-instance p1, Lorg/thoughtcrime/securesms/ConversationActivity$5$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$5$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity$5;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1105
    :cond_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1300(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/b44t/messenger/DcContext;->setDraft(ILcom/b44t/messenger/DcMsg;)V

    :cond_5
    :goto_0
    return-object v3
.end method

.method synthetic lambda$doInBackground$0$org-thoughtcrime-securesms-ConversationActivity$5()V
    .locals 3

    .line 1096
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1300(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getLastError()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$doInBackground$1$org-thoughtcrime-securesms-ConversationActivity$5()V
    .locals 2

    .line 1101
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->sendComplete(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1074
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1112
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$5;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1400(Lorg/thoughtcrime/securesms/ConversationActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
