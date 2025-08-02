.class public Lorg/thoughtcrime/securesms/WelcomeActivity;
.super Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.source "WelcomeActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# static fields
.field public static final BACKUP_QR_EXTRA:Ljava/lang/String; = "backup_qr_extra"

.field public static final DC_REQUEST_ACCOUNT_DATA:Ljava/lang/String; = "chat.delta.DC_REQUEST_ACCOUNT_DATA"

.field public static final PICK_BACKUP:I = 0x505e

.field private static final TAG:Ljava/lang/String; = "WelcomeActivity"

.field public static final TMP_BACKUP_FILE:Ljava/lang/String; = "tmp-backup-file"


# instance fields
.field dcContext:Lcom/b44t/messenger/DcContext;

.field private imexUserAborted:Z

.field private notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

.field private progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    return-void
.end method

.method private cleanupTempBackupFile()V
    .locals 7

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 420
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 421
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    sget-object v4, Lorg/thoughtcrime/securesms/WelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting temp backup file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private continueStartBackup(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    .line 251
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    :cond_0
    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->imexUserAborted:Z

    .line 257
    new-instance v1, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 258
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1202dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 260
    iget-object v1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCancelable(Z)V

    .line 261
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show()V

    .line 269
    new-instance v0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private copyToCacheDir(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    const-string v0, "tmp-backup-file"

    const-string v1, ".tmp"

    .line 289
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 291
    :try_start_1
    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/util/StreamUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 290
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/UInt$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_1

    .line 288
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-static {v0, p1}, Lkotlin/UInt$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
.end method

.method static synthetic lambda$cleanupTempBackupFile$11(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "tmp-backup-file"

    .line 419
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onCreate$3(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static maybeShowConfigurationError(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const p1, 0x102000b

    .line 338
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private progressError(Ljava/lang/String;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 312
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->maybeShowConfigurationError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private progressSuccess()V
    .locals 3

    .line 321
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->endCaptureNextError()V

    .line 322
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from_welcome"

    const/4 v2, 0x1

    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 326
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->finish()V

    return-void
.end method

.method private progressUpdate(I)V
    .locals 4

    .line 316
    div-int/lit8 p1, p1, 0xa

    .line 317
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1202dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, " %d%%"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private registerForEvents()V
    .locals 2

    .line 114
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 115
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    const/16 v1, 0x803

    invoke-virtual {v0, v1, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method private startAddAsSecondDeviceActivity()V
    .locals 3

    .line 165
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v0, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    const-class v1, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;

    invoke-virtual {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object v0

    const/4 v1, 0x1

    .line 166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "add_as_second_device"

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void
.end method

.method private startBackupTransfer(Ljava/lang/String;)V
    .locals 3

    .line 299
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 304
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->RECEIVER_SCAN_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->getInt()I

    move-result v1

    const-string v2, "transfer_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "qr_code"

    .line 306
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startImport(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 2

    const v0, 0x7f1201a5

    .line 221
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startForegroundTask(Landroid/content/Context;Ljava/lang/String;)Lorg/thoughtcrime/securesms/service/NotificationController;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    if-eqz p3, :cond_1

    .line 224
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object p3

    .line 226
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 231
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const v1, 0x7f1202dd

    .line 232
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 234
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCancelable(Z)V

    .line 235
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show()V

    .line 237
    new-instance v0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;Lorg/thoughtcrime/securesms/connect/AccountManager;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/WelcomeActivity;->continueStartBackup(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method private startImportBackup()V
    .locals 4

    .line 172
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    .line 173
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGrantOnSdk30()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f8

    .line 176
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;)V

    .line 177
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method private startInstantOnboardingActivity()V
    .locals 3

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from_welcome"

    const/4 v2, 0x1

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 7

    .line 347
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x803

    if-ne v0, v1, :cond_5

    .line 350
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result p1

    int-to-long v3, p1

    .line 351
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    .line 359
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->imexUserAborted:Z

    if-nez p1, :cond_1

    .line 360
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->getLastError()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressError(Ljava/lang/String;)V

    .line 362
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    .line 363
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->cleanupTempBackupFile()V

    goto :goto_1

    :cond_2
    cmp-long p1, v3, v0

    if-gez p1, :cond_3

    long-to-int p1, v3

    .line 366
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressUpdate(I)V

    .line 367
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    const-wide/16 v1, 0x3e8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string p1, " %d%%"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/thoughtcrime/securesms/service/NotificationController;->setProgress(JJLjava/lang/String;)V

    goto :goto_1

    :cond_3
    cmp-long p1, v3, v0

    if-nez p1, :cond_5

    .line 370
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcAccounts;->startIo()V

    .line 371
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->progressSuccess()V

    .line 372
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->assumeMultiDevice()V

    .line 373
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    .line 374
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->cleanupTempBackupFile()V

    goto :goto_1

    :cond_4
    :goto_0
    cmp-long p1, v3, v0

    if-nez p1, :cond_5

    .line 354
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected initializeActionBar()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->canRollbackAccountCreation(Landroid/content/Context;)Z

    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 110
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v1, :cond_0

    const v1, 0x7f12003e

    goto :goto_0

    :cond_0
    const v1, 0x7f120438

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    return-void

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic lambda$continueStartBackup$8$org-thoughtcrime-securesms-WelcomeActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    .line 262
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->imexUserAborted:Z

    .line 263
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->stopOngoingProcess()V

    .line 264
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    .line 265
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->cleanupTempBackupFile()V

    return-void
.end method

.method synthetic lambda$continueStartBackup$9$org-thoughtcrime-securesms-WelcomeActivity(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 0
    if-nez p1, :cond_0

    .line 273
    :try_start_0
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/WelcomeActivity;->copyToCacheDir(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    .line 277
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->cleanupTempBackupFile()V

    return-void

    .line 282
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->captureNextError()V

    .line 283
    iget-object p2, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    const/16 v0, 0xc

    invoke-virtual {p2, v0, p1}, Lcom/b44t/messenger/DcContext;->imex(ILjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onActivityResult$10$org-thoughtcrime-securesms-WelcomeActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startBackupTransfer(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-WelcomeActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startAddAsSecondDeviceActivity()V

    .line 80
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onCreate$1$org-thoughtcrime-securesms-WelcomeActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startImportBackup()V

    .line 84
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onCreate$2$org-thoughtcrime-securesms-WelcomeActivity(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startInstantOnboardingActivity()V

    return-void
.end method

.method synthetic lambda$startImport$6$org-thoughtcrime-securesms-WelcomeActivity(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/WelcomeActivity;->continueStartBackup(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method synthetic lambda$startImport$7$org-thoughtcrime-securesms-WelcomeActivity(Lorg/thoughtcrime/securesms/connect/AccountManager;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 238
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 239
    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchToEncrypted(Landroid/app/Activity;)V

    .line 241
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->registerForEvents()V

    .line 242
    new-instance p1, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2, p3}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda8;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$startImportBackup$4$org-thoughtcrime-securesms-WelcomeActivity(Ljava/lang/String;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p3, 0x0

    .line 204
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startImport(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method synthetic lambda$startImportBackup$5$org-thoughtcrime-securesms-WelcomeActivity()V
    .locals 11

    .line 178
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getImexDir()Ljava/io/File;

    move-result-object v0

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    const/16 v0, 0x505e

    .line 180
    invoke-static {}, Lorg/thoughtcrime/securesms/util/StorageUtil;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/x-tar"

    invoke-static {p0, v2, v3, v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectMediaType(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->imexHasBackup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x104000a

    const/4 v4, 0x1

    const v5, 0x7f1201a5

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const v0, 0x7f0c0060

    .line 186
    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v7, 0x7f0900ea

    .line 187
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const v8, 0x7f0900eb

    .line 188
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 192
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1201a3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "Encrypt database (highly experimental, use at your own risk)"

    .line 193
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x1010038

    .line 194
    filled-new-array {v4}, [I

    move-result-object v4

    .line 195
    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/WelcomeActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const v8, -0x777778

    .line 196
    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 197
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 200
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 202
    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v4, 0x1040000

    .line 203
    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v7}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;Ljava/lang/String;Landroid/widget/CheckBox;)V

    .line 204
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 208
    :cond_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1201a4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 381
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0xc0de

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 383
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 384
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getFormatName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    .line 388
    iget-object p2, p0, Lorg/thoughtcrime/securesms/WelcomeActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->checkQr(Ljava/lang/String;)Lcom/b44t/messenger/DcLot;

    move-result-object p2

    .line 389
    invoke-virtual {p2}, Lcom/b44t/messenger/DcLot;->getState()I

    move-result p2

    const/16 p3, 0xfb

    if-eq p2, p3, :cond_1

    .line 401
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f120380

    .line 402
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1202d8

    .line 403
    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_2

    .line 391
    :cond_1
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f1202aa

    .line 392
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f1202a9

    .line 393
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;Ljava/lang/String;)V

    const p1, 0x7f1202f1

    .line 394
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120097

    .line 395
    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 396
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_2

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 p2, 0x505e

    if-ne p1, p2, :cond_6

    if-eqz p3, :cond_4

    .line 408
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_5

    .line 410
    sget-object p1, Lorg/thoughtcrime/securesms/WelcomeActivity;->TAG:Ljava/lang/String;

    const-string p2, " Can\'t import null URI"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 413
    :cond_5
    invoke-direct {p0, v2, p1, v1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startImport(Ljava/lang/String;Landroid/net/Uri;Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 433
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->canRollbackAccountCreation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->rollbackAccountCreation(Landroid/app/Activity;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 66
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0111

    .line 67
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->setContentView(I)V

    const p1, 0x7f09033c

    .line 69
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f09033b

    .line 70
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0c007d

    const/4 v2, 0x0

    .line 72
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1202da

    .line 75
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120097

    .line 76
    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f09004a

    .line 78
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v2}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda9;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090078

    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v2}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda10;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v1, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda11;-><init>(Lorg/thoughtcrime/securesms/WelcomeActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance p1, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->registerForEvents()V

    .line 91
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->initializeActionBar()V

    .line 93
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->hasAnyConfiguredContext(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "chat.delta.androidyggmail"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "chat.delta.DC_REQUEST_ACCOUNT_DATA"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 149
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onDestroy()V

    .line 150
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 155
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 139
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onStart()V

    .line 140
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "backup_qr_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/WelcomeActivity;->startBackupTransfer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
