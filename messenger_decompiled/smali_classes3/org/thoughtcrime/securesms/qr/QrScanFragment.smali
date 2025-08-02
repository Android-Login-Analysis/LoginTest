.class public Lorg/thoughtcrime/securesms/qr/QrScanFragment;
.super Landroidx/fragment/app/Fragment;
.source "QrScanFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QrScanFragment"


# instance fields
.field private barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

.field private capture:Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 88
    :try_start_0
    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;

    invoke-direct {v0, p0, p2, p1}, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;-><init>(Lorg/thoughtcrime/securesms/qr/QrScanFragment;Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->capture:Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;

    .line 89
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;->initializeFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 90
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->capture:Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;->decode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    sget-object p2, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method handleQrScanWithPermissions(Landroid/app/Activity;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, p1, v1}, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e9

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903f5

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f12038a

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->setStatusText(Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 68
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->capture:Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 60
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->capture:Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 52
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->capture:Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->capture:Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
