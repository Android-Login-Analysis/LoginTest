.class public Lorg/thoughtcrime/securesms/contacts/NewContactActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "NewContactActivity.java"


# static fields
.field public static final ADDR_EXTRA:Ljava/lang/String; = "contact_addr"


# instance fields
.field private addrInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private nameInput:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-contacts-NewContactActivity(Landroid/view/View;Z)V
    .locals 0

    .line 52
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->addrInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->addrInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    .line 53
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->mayBeValidAddr(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 54
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->addrInput:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f1201db

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 102
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0xc0de

    if-ne p1, v0, :cond_0

    .line 104
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p1

    .line 105
    new-instance p2, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;-><init>(Landroid/app/Activity;)V

    .line 106
    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->onScanPerformed(Lcom/google/zxing/integration/android/IntentResult;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 1

    .line 38
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    const p1, 0x7f0c00bc

    .line 39
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f12024a

    .line 43
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p2, 0x7f0800fc

    .line 45
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    :cond_0
    const p1, 0x7f090243

    .line 48
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->nameInput:Lcom/google/android/material/textfield/TextInputEditText;

    const p1, 0x7f09010d

    .line 49
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->addrInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 50
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "contact_addr"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->addrInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Lorg/thoughtcrime/securesms/contacts/NewContactActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/contacts/NewContactActivity;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 70
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const v0, 0x7f0901fc

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    return v2

    .line 76
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->addrInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->addrInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    :goto_0
    iget-object v3, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->nameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->nameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    .line 79
    :cond_3
    iget-object v3, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v3, p1}, Lcom/b44t/messenger/DcContext;->mayBeValidAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2, v0, p1}, Lcom/b44t/messenger/DcContext;->createContact(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_4
    if-nez v2, :cond_5

    const p1, 0x7f1201db

    .line 81
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 84
    :cond_5
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "contact_addr"

    .line 86
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 87
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 89
    :cond_6
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1, v2}, Lcom/b44t/messenger/DcContext;->createChatByContactId(I)I

    move-result p1

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "chat_id"

    .line 91
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    :goto_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->finish()V

    return v1

    .line 73
    :cond_7
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->finish()V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 62
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e0011

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method
