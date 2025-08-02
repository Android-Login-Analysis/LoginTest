.class public Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;
.super Landroidx/fragment/app/Fragment;
.source "BackupReceiverFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private progressBar:Landroid/widget/ProgressBar;

.field private sameNetworkHint:Landroid/widget/TextView;

.field private statusLine:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;

    const-string v0, "BackupProviderFragment"

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 10

    .line 74
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x803

    if-ne v0, v1, :cond_6

    .line 75
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result p1

    .line 81
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DC_EVENT_IMEX_PROGRESS, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 83
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    move-result-object p1

    const-string v2, "Receiving Error"

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->setTransferError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x64

    if-gt p1, v2, :cond_1

    const p1, 0x7f120371

    .line 85
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    const/16 v3, 0x3b6

    if-gt p1, v3, :cond_2

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x64

    .line 88
    div-int/lit16 p1, p1, 0x352

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f12040a

    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, " %d%%"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    const/16 v8, 0x64

    goto :goto_0

    :cond_2
    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_3

    const-string p1, "Finishing..."

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_4

    .line 95
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_SUCCESS:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->setTransferState(Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;)V

    .line 96
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->doFinish()V

    .line 97
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->assumeMultiDevice()V

    return-void

    :cond_4
    :goto_1
    const-string p1, ""

    :goto_2
    move-object v7, p1

    const/4 p1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 101
    :goto_3
    iget-object v2, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->statusLine:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getTransferActivity()Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    int-to-long v3, v8

    int-to-long v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/thoughtcrime/securesms/service/NotificationController;->setProgress(JJLjava/lang/String;)V

    if-nez v8, :cond_5

    .line 104
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_4

    .line 106
    :cond_5
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 107
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 108
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_4
    if-eqz v9, :cond_6

    .line 111
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->sameNetworkHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    .line 112
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->sameNetworkHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method synthetic lambda$onCreateView$0$org-thoughtcrime-securesms-qr-BackupReceiverFragment(Ljava/lang/String;)V
    .locals 3

    .line 55
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "##### receiveBackup() with qr: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, p1}, Lcom/b44t/messenger/DcContext;->receiveBackup(Ljava/lang/String;)Z

    move-result p1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "##### receiveBackup() done with result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0029

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090374

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->statusLine:Landroid/widget/TextView;

    const p2, 0x7f0902a6

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f0902e6

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->sameNetworkHint:Landroid/widget/TextView;

    .line 46
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->statusLine:Landroid/widget/TextView;

    const p3, 0x7f1200c5

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 49
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 50
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p2

    const/16 p3, 0x803

    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 52
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "qr_code"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 54
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 60
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->sameNetworkHint:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->appendSSID(Landroid/app/Activity;Landroid/widget/TextView;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->stopOngoingProcess()V

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 69
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
