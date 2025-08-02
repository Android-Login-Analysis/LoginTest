.class Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;
.super Ljava/lang/Object;
.source "ConversationItem.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/mms/SlideClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationItem;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationItem;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationItem;Lorg/thoughtcrime/securesms/ConversationItem$1;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$org-thoughtcrime-securesms-ConversationItem$ThumbnailClickListener(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    const/4 p2, 0x0

    .line 906
    :try_start_0
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p3, p3, Lorg/thoughtcrime/securesms/ConversationItem;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    invoke-virtual {p3, v0, p1}, Lcom/b44t/messenger/rpc/Rpc;->importVcard(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 907
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 908
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p3, p3, Lorg/thoughtcrime/securesms/ConversationItem;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/b44t/messenger/DcContext;->createChatByContactId(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 910
    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "chat_id"

    .line 911
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 917
    invoke-static {}, Lorg/thoughtcrime/securesms/ConversationItem;->access$300()Ljava/lang/String;

    move-result-object p3

    const-string v0, "failed to import vCard"

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p3, p3, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f120135

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 4

    .line 894
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object v0, p1, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->shouldInterceptClicks(Lcom/b44t/messenger/DcMsg;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 896
    :cond_0
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->isWebxdcDocument()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 897
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->openWebxdcActivity(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    goto/16 :goto_1

    .line 898
    :cond_1
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->isVcard()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 900
    :try_start_0
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getRealPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 901
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/ConversationItem;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/rpc/Rpc;->parseVcard(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/b44t/messenger/rpc/VcardContact;

    .line 902
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object v3, v3, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object v3, v3, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    new-array v0, v0, [Ljava/lang/Object;

    .line 903
    invoke-virtual {p2}, Lcom/b44t/messenger/rpc/VcardContact;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const p2, 0x7f120061

    invoke-virtual {v3, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;Ljava/lang/String;)V

    const p1, 0x104000a

    .line 904
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120097

    const/4 v0, 0x0

    .line 921
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 922
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 924
    invoke-static {}, Lorg/thoughtcrime/securesms/ConversationItem;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "failed to parse vCard"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120135

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 927
    :cond_2
    invoke-static {p2}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->isTypeSupported(Lorg/thoughtcrime/securesms/mms/Slide;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 928
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object v2, v2, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    const-class v3, Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "dc_msg_id"

    .line 930
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getDcMsgId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 931
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/ConversationItem;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getAddress()Lorg/thoughtcrime/securesms/database/Address;

    move-result-object p2

    const-string v0, "address"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 932
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p2

    const-string v0, "outgoing"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "left_is_recent"

    .line 933
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 935
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 936
    :cond_3
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 937
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getDcMsgId()I

    move-result p2

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1, p2, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openForViewOrShare(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 895
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationItem;->performClick()Z

    :cond_5
    :goto_1
    return-void
.end method
