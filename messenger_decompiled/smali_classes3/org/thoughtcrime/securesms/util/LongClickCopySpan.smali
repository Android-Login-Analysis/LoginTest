.class public Lorg/thoughtcrime/securesms/util/LongClickCopySpan;
.super Landroid/text/style/ClickableSpan;
.source "LongClickCopySpan.java"


# static fields
.field private static final PREFIX_CMD:Ljava/lang/String; = "cmd:"

.field private static final PREFIX_MAILTO:Ljava/lang/String; = "mailto:"

.field private static final PREFIX_TEL:Ljava/lang/String; = "tel:"


# instance fields
.field private highlightColor:I

.field private isHighlighted:Z

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$onLongClick$1(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f1200d1

    .line 99
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private openChat(Landroid/app/Activity;Lcom/b44t/messenger/DcContact;)V
    .locals 2

    .line 37
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 38
    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->createChatByContactId(I)I

    move-result p2

    if-eqz p2, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_id"

    .line 41
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private prepareUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "mailto:"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "tel:"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method synthetic lambda$onClick$0$org-thoughtcrime-securesms-util-LongClickCopySpan(Landroid/app/Activity;Lcom/b44t/messenger/DcContact;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->openChat(Landroid/app/Activity;Lcom/b44t/messenger/DcContact;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    const-string v1, "cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationActivity;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->setDraftText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    :try_start_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->prepareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 60
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2, v0}, Lcom/b44t/messenger/DcContext;->createContact(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->isBlocked()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/b44t/messenger/DcContext;->getChatIdByContactId(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->openChat(Landroid/app/Activity;Lcom/b44t/messenger/DcContact;)V

    goto :goto_0

    .line 65
    :cond_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 66
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getNameNAddr()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f120061

    invoke-virtual {p1, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/util/LongClickCopySpan;Landroid/app/Activity;Lcom/b44t/messenger/DcContact;)V

    const p1, 0x104000a

    .line 67
    invoke-virtual {v1, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120097

    .line 70
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->isInviteURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;-><init>(Landroid/app/Activity;)V

    .line 78
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->handleQrData(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/IntentUtils;->showBrowserIntent(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method onLongClick(Landroid/view/View;)V
    .locals 5

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    const-string v1, "cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f1200d1

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->prepareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    const v4, 0x7f120239

    .line 95
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    new-instance v1, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120097

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method setHighlighted(ZI)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->isHighlighted:Z

    .line 115
    iput p2, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->highlightColor:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 109
    iget v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->highlightColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 110
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->isHighlighted:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
