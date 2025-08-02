.class public Lorg/thoughtcrime/securesms/qr/QrCodeHandler;
.super Ljava/lang/Object;
.source "QrCodeHandler.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dcContext:Lcom/b44t/messenger/DcContext;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    .line 29
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    return-void
.end method

.method private handleDefault(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Lcom/b44t/messenger/DcLot;)V
    .locals 5

    .line 143
    invoke-virtual {p3}, Lcom/b44t/messenger/DcLot;->getState()I

    move-result v0

    const/16 v1, 0x14a

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f120385

    if-eq v0, v1, :cond_1

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    .line 154
    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p3, v4, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p3, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p3}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object p2

    .line 150
    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p3, v4, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 157
    :goto_0
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p3, 0x104000a

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 159
    new-instance p3, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p2}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    const p2, 0x7f120239

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private showDoneToast(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x7f1200f9

    .line 178
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showFingerPrintError(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const p2, 0x7f120389

    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private showFingerprintOrQrSuccess(Landroidx/appcompat/app/AlertDialog$Builder;Lcom/b44t/messenger/DcLot;Ljava/lang/String;)V
    .locals 4

    .line 182
    invoke-virtual {p2}, Lcom/b44t/messenger/DcLot;->getState()I

    move-result v0

    const/16 v1, 0x140

    if-ne v0, v1, :cond_0

    const v0, 0x7f120061

    goto :goto_0

    :cond_0
    const v0, 0x7f120396

    .line 183
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 184
    new-instance p3, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p2}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Lcom/b44t/messenger/DcLot;)V

    const p2, 0x7f1203e6

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    const/4 p3, 0x0

    .line 193
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private showQrUrl(Landroidx/appcompat/app/AlertDialog$Builder;Lcom/b44t/messenger/DcLot;)V
    .locals 3

    .line 166
    invoke-virtual {p2}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object p2

    .line 167
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const v1, 0x7f120386

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 169
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda7;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    const v1, 0x7f1202de

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 171
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda8;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    const p2, 0x7f120239

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private showVerifyContactOrGroup(Landroid/app/Activity;Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Lcom/b44t/messenger/DcLot;Ljava/lang/String;)V
    .locals 4

    .line 212
    invoke-virtual {p4}, Lcom/b44t/messenger/DcLot;->getState()I

    move-result v0

    const/16 v1, 0xca

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p5, p4, v2

    const p5, 0x7f120061

    .line 217
    invoke-virtual {p1, p5, p4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    new-array p5, v3, [Ljava/lang/Object;

    .line 214
    invoke-virtual {p4}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p5, v2

    const p4, 0x7f120384

    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 220
    :goto_0
    invoke-virtual {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 221
    new-instance p4, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p3}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Landroid/app/Activity;Ljava/lang/String;)V

    const p1, 0x104000a

    invoke-virtual {p2, p1, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    const/4 p3, 0x0

    .line 237
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private showVerifyFingerprintWithoutAddress(Landroidx/appcompat/app/AlertDialog$Builder;Lcom/b44t/messenger/DcLot;)V
    .locals 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const v2, 0x7f12038c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const v2, 0x7f120388

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 204
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Lcom/b44t/messenger/DcLot;)V

    const p2, 0x7f120239

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public handleQrData(Ljava/lang/String;)V
    .locals 11

    .line 41
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->checkQr(Ljava/lang/String;)Lcom/b44t/messenger/DcLot;

    move-result-object v4

    .line 43
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcLot;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getNameNAddr()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {v4}, Lcom/b44t/messenger/DcLot;->getState()I

    move-result v0

    const v1, 0x7f1203a8

    const v2, 0x7f12043b

    const v3, 0x7f1202d8

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x7f120097

    sparse-switch v0, :sswitch_data_0

    .line 134
    invoke-direct {p0, v6, p1, v4}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->handleDefault(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Lcom/b44t/messenger/DcLot;)V

    goto/16 :goto_1

    .line 126
    :sswitch_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x7f1203aa

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 127
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    invoke-virtual {v6, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v6, v10, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 110
    :sswitch_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const v2, 0x7f1203a9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 111
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    invoke-virtual {v6, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v6, v10, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 118
    :sswitch_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    const v3, 0x7f12043d

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 119
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v6, v10, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 102
    :sswitch_3
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const v1, 0x7f12043c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 103
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda12;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v6, v10, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 64
    :sswitch_4
    invoke-direct {p0, v6, v4}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->showQrUrl(Landroidx/appcompat/app/AlertDialog$Builder;Lcom/b44t/messenger/DcLot;)V

    goto/16 :goto_1

    .line 93
    :sswitch_5
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f120429

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 94
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda11;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v6, v10, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v6, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_1

    :sswitch_6
    const v0, 0x7f1202aa

    .line 79
    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const v2, 0x7f1202a9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const v2, 0x7f1202ab

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda10;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    const p1, 0x7f1202f1

    invoke-virtual {v6, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v6, v10, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v6, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const v1, 0x102000b

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->appendSSID(Landroid/app/Activity;Landroid/widget/TextView;)V

    return-void

    .line 69
    :sswitch_7
    invoke-virtual {v4}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcLot;->getState()I

    move-result v2

    const/16 v4, 0xfa

    if-ne v2, v4, :cond_0

    const v2, 0x7f12037f

    goto :goto_0

    :cond_0
    const v2, 0x7f120383

    :goto_0
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 71
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda9;-><init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v6, v10, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v6, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 51
    :sswitch_8
    invoke-direct {p0, v6, v4}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->showVerifyFingerprintWithoutAddress(Landroidx/appcompat/app/AlertDialog$Builder;Lcom/b44t/messenger/DcLot;)V

    goto :goto_1

    .line 55
    :sswitch_9
    invoke-direct {p0, v6, v5}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->showFingerPrintError(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :sswitch_a
    invoke-direct {p0, v6, v4, v5}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->showFingerprintOrQrSuccess(Landroidx/appcompat/app/AlertDialog$Builder;Lcom/b44t/messenger/DcLot;Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :sswitch_b
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    move-object v0, p0

    move-object v2, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->showVerifyContactOrGroup(Landroid/app/Activity;Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Lcom/b44t/messenger/DcLot;Ljava/lang/String;)V

    .line 137
    :goto_1
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_b
        0xca -> :sswitch_b
        0xd2 -> :sswitch_a
        0xdc -> :sswitch_9
        0xe6 -> :sswitch_8
        0xfa -> :sswitch_7
        0xfb -> :sswitch_6
        0x104 -> :sswitch_5
        0x140 -> :sswitch_a
        0x14c -> :sswitch_4
        0x1f4 -> :sswitch_3
        0x1f6 -> :sswitch_2
        0x1fe -> :sswitch_1
        0x200 -> :sswitch_0
        0x208 -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic lambda$handleDefault$7$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 160
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->showDoneToast(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$handleQrData$0$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object p2

    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p3, p1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->addAccountFromQr(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleQrData$1$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object p2

    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p3, p1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->addAccountFromSecondDevice(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleQrData$2$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 95
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->setConfigFromQr(Ljava/lang/String;)Z

    return-void
.end method

.method synthetic lambda$handleQrData$3$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 104
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->setConfigFromQr(Ljava/lang/String;)Z

    return-void
.end method

.method synthetic lambda$handleQrData$4$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->setConfigFromQr(Ljava/lang/String;)Z

    return-void
.end method

.method synthetic lambda$handleQrData$5$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 120
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->setConfigFromQr(Ljava/lang/String;)Z

    return-void
.end method

.method synthetic lambda$handleQrData$6$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 128
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->setConfigFromQr(Ljava/lang/String;)Z

    return-void
.end method

.method synthetic lambda$showFingerprintOrQrSuccess$10$org-thoughtcrime-securesms-qr-QrCodeHandler(Lcom/b44t/messenger/DcLot;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 185
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcLot;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/b44t/messenger/DcContext;->createChatByContactId(I)I

    move-result p2

    .line 186
    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "chat_id"

    .line 187
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p1}, Lcom/b44t/messenger/DcLot;->getText1Meaning()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, "draft_text"

    .line 189
    invoke-virtual {p1}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$showQrUrl$8$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 169
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/util/IntentUtils;->showBrowserIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showQrUrl$9$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 172
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->showDoneToast(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$showVerifyContactOrGroup$12$org-thoughtcrime-securesms-qr-QrCodeHandler(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 222
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p3

    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->captureNextError()V

    .line 223
    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p3, p2}, Lcom/b44t/messenger/DcContext;->joinSecurejoin(Ljava/lang/String;)I

    move-result p2

    .line 224
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p3

    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->endCaptureNextError()V

    if-eqz p2, :cond_0

    .line 227
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p4, "chat_id"

    .line 228
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    :cond_0
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->getLastError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a

    const/4 p3, 0x0

    .line 233
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showVerifyFingerprintWithoutAddress$11$org-thoughtcrime-securesms-qr-QrCodeHandler(Lcom/b44t/messenger/DcLot;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 205
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->showDoneToast(Landroid/app/Activity;)V

    return-void
.end method

.method public onScanPerformed(Lcom/google/zxing/integration/android/IntentResult;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getFormatName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->handleQrData(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
