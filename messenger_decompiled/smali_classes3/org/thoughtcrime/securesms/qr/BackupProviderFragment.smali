.class public Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;
.super Landroidx/fragment/app/Fragment;
.source "BackupProviderFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupProviderFragment"


# instance fields
.field private bottomText:Landroid/view/View;

.field private dcBackupProvider:Lcom/b44t/messenger/DcBackupProvider;

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private isFinishing:Z

.field private prepareThread:Ljava/lang/Thread;

.field private progressBar:Landroid/widget/ProgressBar;

.field private qrImageView:Lcom/caverock/androidsvg/SVGImageView;

.field private statusLine:Landroid/widget/TextView;

.field private topText:Landroid/view/View;

.field private waitThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 13

    .line 161
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x803

    if-ne v0, v1, :cond_9

    .line 162
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->isFinishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result p1

    .line 172
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DC_EVENT_IMEX_PROGRESS, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, ""

    if-nez p1, :cond_1

    .line 174
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    move-result-object v5

    const-string v6, "Sending Error"

    invoke-virtual {v5, v6}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->setTransferError(Ljava/lang/String;)V

    :goto_0
    move-object v11, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_1
    const/16 v5, 0x15e

    if-gt p1, v5, :cond_3

    const v4, 0x7f120371

    .line 177
    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_2
    move-object v11, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    const/16 v5, 0x190

    if-gt p1, v5, :cond_4

    .line 179
    iget-object v4, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v4, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v4, 0x7f120433

    .line 181
    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/16 v5, 0x1c2

    if-gt p1, v5, :cond_5

    const v4, 0x7f12039b

    .line 183
    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    if-ge p1, v0, :cond_6

    add-int/lit16 v4, p1, -0x1c2

    .line 186
    div-int/lit8 v4, v4, 0x5

    const v5, 0x7f12040a

    .line 188
    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    move-object v11, v5

    const/16 v5, 0x64

    goto :goto_1

    :cond_6
    if-ne p1, v0, :cond_2

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1200f9

    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \ud83d\ude00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    move-result-object v5

    sget-object v6, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_SUCCESS:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    invoke-virtual {v5, v6}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->setTransferState(Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;)V

    .line 193
    iget-object v5, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 197
    :goto_3
    iget-object v6, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    move-result-object v6

    iget-object v6, v6, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    int-to-long v7, v5

    int-to-long v9, v4

    invoke-virtual/range {v6 .. v11}, Lorg/thoughtcrime/securesms/service/NotificationController;->setProgress(JJLjava/lang/String;)V

    if-nez v5, :cond_7

    .line 200
    iget-object v4, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_4

    .line 202
    :cond_7
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 203
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 204
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_4
    if-eqz v12, :cond_9

    .line 207
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->qrImageView:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGImageView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 208
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->qrImageView:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVGImageView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->topText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->bottomText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    if-ne p1, v0, :cond_8

    const/16 v2, 0x8

    :cond_8
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method synthetic lambda$onCreateView$0$org-thoughtcrime-securesms-qr-BackupProviderFragment()V
    .locals 3

    .line 94
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "##### waitForReceiver() with qr: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcBackupProvider:Lcom/b44t/messenger/DcBackupProvider;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcBackupProvider;->getQr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcBackupProvider:Lcom/b44t/messenger/DcBackupProvider;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcBackupProvider;->waitForReceiver()V

    const-string v1, "##### done waiting"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$onCreateView$1$org-thoughtcrime-securesms-qr-BackupProviderFragment()V
    .locals 3

    .line 75
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->isFinishing:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcBackupProvider:Lcom/b44t/messenger/DcBackupProvider;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcBackupProvider;->isOk()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Cannot create backup provider"

    .line 81
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->setTransferError(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->topText:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcBackupProvider:Lcom/b44t/messenger/DcBackupProvider;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcBackupProvider;->getQrSvg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->fixSVG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/caverock/androidsvg/SVG;->getFromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->qrImageView:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVGImageView;->setSVG(Lcom/caverock/androidsvg/SVG;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->printStackTrace()V

    .line 92
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->bottomText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->waitThread:Ljava/lang/Thread;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreateView$2$org-thoughtcrime-securesms-qr-BackupProviderFragment()V
    .locals 2

    .line 71
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->TAG:Ljava/lang/String;

    const-string v1, "##### newBackupProvider()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->newBackupProvider()Lcom/b44t/messenger/DcBackupProvider;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcBackupProvider:Lcom/b44t/messenger/DcBackupProvider;

    const-string v1, "##### newBackupProvider() returned"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0028

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090374

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->statusLine:Landroid/widget/TextView;

    const p2, 0x7f0902a6

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f0903b9

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->topText:Landroid/view/View;

    const p2, 0x7f0902ae

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/caverock/androidsvg/SVGImageView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->qrImageView:Lcom/caverock/androidsvg/SVGImageView;

    const p2, 0x7f090085

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->bottomText:Landroid/view/View;

    const/4 p2, 0x1

    .line 61
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->setHasOptionsMenu(Z)V

    .line 63
    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->statusLine:Landroid/widget/TextView;

    const v0, 0x7f120371

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 66
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 67
    invoke-virtual {p2}, Lcom/b44t/messenger/DcContext;->assumeMultiDevice()V

    .line 68
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p2

    const/16 p3, 0x803

    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 70
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->prepareThread:Ljava/lang/Thread;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 103
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f0902e6

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p2, p3}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->appendSSID(Landroid/app/Activity;Landroid/widget/TextView;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->isFinishing:Z

    .line 111
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 112
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->stopOngoingProcess()V

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->prepareThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->waitThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcBackupProvider:Lcom/b44t/messenger/DcBackupProvider;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/b44t/messenger/DcBackupProvider;->unref()V

    .line 133
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 144
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900ca

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 148
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcBackupProvider:Lcom/b44t/messenger/DcBackupProvider;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->dcBackupProvider:Lcom/b44t/messenger/DcBackupProvider;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcBackupProvider;->getQr()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v2, 0x7f1200f9

    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 151
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    move-result-object p1

    iput-boolean v0, p1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->warnAboutCopiedQrCodeOnAbort:Z

    :cond_1
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f0900ca

    .line 138
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;->qrImageView:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 139
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
