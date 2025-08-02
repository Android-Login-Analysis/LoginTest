.class public Lorg/thoughtcrime/securesms/NewConversationActivity;
.super Lorg/thoughtcrime/securesms/ContactSelectionActivity;
.source "NewConversationActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "NewConversationActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 4

    .line 63
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 70
    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/MailtoUtil;->isMailto(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/MailtoUtil;->getText(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/MailtoUtil;->getRecipients(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "draft_text"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 v1, 0x0

    .line 77
    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->onContactSelected(ILjava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/thoughtcrime/securesms/ShareActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TEXT"

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lorg/thoughtcrime/securesms/NewConversationActivity;->TAG:Ljava/lang/String;

    const-string v2, "start activity from external \'mailto:\' link failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private openConversation(I)V
    .locals 3

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "draft_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 149
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->acquireRelayMessageContent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 153
    :cond_0
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->finish()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onContactSelected$0$org-thoughtcrime-securesms-NewConversationActivity(Lcom/b44t/messenger/DcContext;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 116
    invoke-virtual {p1, p2}, Lcom/b44t/messenger/DcContext;->lookupContactIdByAddr(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 118
    invoke-virtual {p1, p3, p2}, Lcom/b44t/messenger/DcContext;->createContact(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_0

    const p1, 0x7f120088

    const/4 p2, 0x1

    .line 120
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1, p3}, Lcom/b44t/messenger/DcContext;->createChatByContactId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/NewConversationActivity;->openConversation(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 132
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0xc0de

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p1

    .line 136
    new-instance p2, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;-><init>(Landroid/app/Activity;)V

    .line 137
    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->onScanPerformed(Lcom/google/zxing/integration/android/IntentResult;)V

    :goto_0
    return-void
.end method

.method public onContactSelected(ILjava/lang/String;)V
    .locals 5

    .line 95
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    .line 97
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/NewConversationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 99
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "group_create_broadcast"

    .line 100
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/NewConversationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const/4 v1, -0x4

    if-ne p1, v1, :cond_2

    .line 103
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    const-class p2, Lorg/thoughtcrime/securesms/qr/QrActivity;

    invoke-virtual {p1, p2}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->lookupContactIdByAddr(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getChatIdByContactId(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getChatIdByContactId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/NewConversationActivity;->openConversation(I)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    move-object p1, p2

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getNameNAddr()Ljava/lang/String;

    move-result-object p1

    .line 111
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f120061

    .line 112
    invoke-virtual {p0, p1, v3}, Lorg/thoughtcrime/securesms/NewConversationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lorg/thoughtcrime/securesms/NewConversationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Lorg/thoughtcrime/securesms/NewConversationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/NewConversationActivity;Lcom/b44t/messenger/DcContext;Ljava/lang/String;)V

    const p2, 0x104000a

    .line 115
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Z)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->onCreate(Landroid/os/Bundle;Z)V

    .line 58
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/NewConversationActivity;->handleIntent()V

    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 164
    invoke-super {p0, p2}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method
