.class public Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;
.super Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.source "BackupTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;,
        Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;
    }
.end annotation


# static fields
.field public static final QR_CODE:Ljava/lang/String; = "qr_code"

.field private static final TAG:Ljava/lang/String; = "BackupTransferActivity"

.field public static final TRANSFER_MODE:Ljava/lang/String; = "transfer_mode"


# instance fields
.field notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

.field private notificationControllerClosed:Z

.field private transferMode:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

.field private transferState:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

.field public warnAboutCopiedQrCodeOnAbort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;-><init>()V

    .line 51
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->RECEIVER_SCAN_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferMode:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    .line 52
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_UNKNOWN:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferState:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->notificationControllerClosed:Z

    .line 56
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->warnAboutCopiedQrCodeOnAbort:Z

    return-void
.end method

.method public static appendSSID(Landroid/app/Activity;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private finishOrAskToFinish()V
    .locals 3

    .line 158
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$1;->$SwitchMap$org$thoughtcrime$securesms$qr$BackupTransferActivity$TransferState:[I

    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferState:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const v0, 0x7f1202a3

    .line 165
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->warnAboutCopiedQrCodeOnAbort:Z

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1202a4

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;)V

    const v2, 0x104000a

    .line 171
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120097

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->doFinish()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$appendSSID$1(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$appendSSID$2(Landroid/app/Activity;Landroid/widget/TextView;)V
    .locals 3

    const-string v0, "wifi ssid: "

    .line 208
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 209
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    .line 212
    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<unknown ssid>"

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public doFinish()V
    .locals 3

    .line 181
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->notificationControllerClosed:Z

    .line 184
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferMode:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->RECEIVER_SCAN_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferState:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_SUCCESS:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    if-ne v0, v1, :cond_0

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferMode:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->SENDER_SHOW_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    if-ne v0, v1, :cond_1

    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0, v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->overridePendingTransition(II)V

    .line 199
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->finish()V

    return-void
.end method

.method synthetic lambda$finishOrAskToFinish$0$org-thoughtcrime-securesms-qr-BackupTransferActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->doFinish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->finishOrAskToFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 60
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->INVALID:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->getInt()I

    move-result v1

    const-string v2, "transfer_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->fromInt(I)Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferMode:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    .line 63
    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->INVALID:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    if-eq v0, v1, :cond_3

    .line 67
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->stopIo()V

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferMode:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->RECEIVER_SCAN_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    if-ne v0, v1, :cond_0

    const v0, 0x7f1202aa

    goto :goto_0

    :cond_0
    const v0, 0x7f1202ae

    :goto_0
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startForegroundTask(Landroid/content/Context;Ljava/lang/String;)Lorg/thoughtcrime/securesms/service/NotificationController;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    const v1, 0x7f0c0027

    .line 72
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->setContentView(I)V

    .line 74
    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$1;->$SwitchMap$org$thoughtcrime$securesms$qr$BackupTransferActivity$TransferMode:[I

    iget-object v2, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferMode:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x1020002

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    new-instance v1, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/qr/BackupReceiverFragment;-><init>()V

    iget-object v4, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0, v2, v1, v4, p1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 76
    :cond_2
    new-instance v1, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/qr/BackupProviderFragment;-><init>()V

    iget-object v4, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0, v2, v1, v4, p1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 84
    :goto_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f0800fc

    .line 86
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 87
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 64
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad transfer mode"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 92
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onDestroy()V

    .line 93
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->notificationControllerClosed:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    .line 96
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->startIo()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 113
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0903c3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0903d6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/thoughtcrime/securesms/LogViewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    const-string p1, "#multiclient"

    .line 120
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openHelp(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 117
    :cond_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->finishOrAskToFinish()V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 101
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 102
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 103
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public setTransferError(Ljava/lang/String;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferState:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_ERROR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    if-eq v0, v1, :cond_2

    .line 136
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_ERROR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferState:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    .line 138
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getLastError()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "<last error not set>"

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public setTransferState(Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;->transferState:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    return-void
.end method
