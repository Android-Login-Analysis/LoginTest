.class public Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;
.super Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.source "RegistrationQrActivity.java"


# static fields
.field public static final ADD_AS_SECOND_DEVICE_EXTRA:Ljava/lang/String; = "add_as_second_device"


# instance fields
.field private barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

.field private capture:Lcom/journeyapps/barcodescanner/CaptureManager;


# direct methods
.method public static synthetic $r8$lambda$SRvRx-WSWnNaJwTq5qLNs1OSJ0U(Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->handleQrScanWithDeniedPermission()V

    return-void
.end method

.method public static synthetic $r8$lambda$cvgakApeiHnVOopQFz-G-xm8eQk(Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->handleQrScanWithPermissions()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;-><init>()V

    return-void
.end method

.method private handleQrScanWithDeniedPermission()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->setResult(I)V

    .line 71
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->finish()V

    return-void
.end method

.method private handleQrScanWithPermissions()V
    .locals 3

    .line 66
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-direct {v0, p0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    .line 97
    invoke-virtual {v0, p2, p3}, Lcom/journeyapps/barcodescanner/CaptureManager;->initializeFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 98
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->decode()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 32
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_as_second_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0020

    .line 36
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1202aa

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0021

    .line 39
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1203b1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 42
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0903f5

    .line 44
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f12038a

    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->setStatusText(Ljava/lang/String;)V

    const v0, 0x7f0902e6

    .line 47
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->appendSSID(Landroid/app/Activity;Landroid/widget/TextView;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v0, v3, p1}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 56
    :cond_2
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    .line 57
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    const v0, 0x7f1202f4

    .line 59
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;)V

    .line 60
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAnyResult(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;)V

    .line 61
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAnyDenied(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 119
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0903c3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "#multiclient"

    .line 83
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openHelp(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 80
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->finish()V

    return v1
.end method

.method protected onPause()V
    .locals 1

    .line 111
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPause()V

    .line 112
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onPause()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 127
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 128
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_as_second_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f0903c3

    .line 130
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 92
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 103
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onResume()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
