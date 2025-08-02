.class public Lorg/thoughtcrime/securesms/videochat/VideochatUtil;
.super Ljava/lang/Object;
.source "VideochatUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invite(Landroid/app/Activity;I)V
    .locals 5

    .line 18
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p2

    .line 21
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 22
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f12042e

    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12042d

    .line 23
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120097

    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2, p1}, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/videochat/VideochatUtil;Lcom/b44t/messenger/DcContext;Lcom/b44t/messenger/DcChat;Landroid/app/Activity;)V

    const p1, 0x7f1202d8

    .line 25
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public join(Landroid/app/Activity;I)V
    .locals 1

    .line 35
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getVideochatUrl()Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/IntentUtils;->showBrowserIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$invite$0$org-thoughtcrime-securesms-videochat-VideochatUtil(Lcom/b44t/messenger/DcContext;Lcom/b44t/messenger/DcChat;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 26
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/b44t/messenger/DcContext;->sendVideochatInvitation(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0, p3, p1}, Lorg/thoughtcrime/securesms/videochat/VideochatUtil;->join(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
