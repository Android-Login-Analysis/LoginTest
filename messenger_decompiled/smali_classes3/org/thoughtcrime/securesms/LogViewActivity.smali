.class public Lorg/thoughtcrime/securesms/LogViewActivity;
.super Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.source "LogViewActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogViewActivity"


# instance fields
.field logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onOptionsItemSelected$0$org-thoughtcrime-securesms-LogViewActivity()V
    .locals 3

    .line 67
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/LogViewFragment;->saveLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    const v0, 0x7f120351

    goto :goto_1

    :cond_1
    const v0, 0x7f120350

    .line 70
    :goto_1
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c007c

    .line 32
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/LogViewActivity;->setContentView(I)V

    .line 33
    new-instance p1, Lorg/thoughtcrime/securesms/LogViewFragment;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-direct {p1, v0}, Lorg/thoughtcrime/securesms/LogViewFragment;-><init>(Lorg/thoughtcrime/securesms/util/DynamicLanguage;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    .line 34
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LogViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f09015a

    .line 35
    iget-object v1, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 38
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LogViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0902e8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f090331

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_0

    return v2

    .line 84
    :pswitch_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/LogViewFragment;->getLogTextSize()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/LogViewFragment;->setLogTextSize(Ljava/lang/Float;)V

    return v2

    .line 80
    :pswitch_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/LogViewFragment;->getLogTextSize()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/LogViewFragment;->setLogTextSize(Ljava/lang/Float;)V

    return v2

    .line 91
    :pswitch_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/LogViewFragment;->scrollUpLog()V

    return v2

    .line 88
    :pswitch_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/LogViewFragment;->scrollDownLog()V

    return v2

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LogViewActivity;->shareLog()V

    return v1

    .line 62
    :cond_1
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    .line 63
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGrantOnSdk30()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/LogViewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/LogViewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/LogViewActivity;)V

    .line 66
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return v1

    .line 59
    :cond_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LogViewActivity;->finish()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901b8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LogViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 44
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e0019

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 48
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 114
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public shareLog()V
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/LogViewActivity;->logViewFragment:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LogViewActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/LogViewFragment;->saveLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/FileProviderUtil;->getUriFor(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 104
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 105
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v0, 0x7f1200b9

    .line 106
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/LogViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/LogViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lorg/thoughtcrime/securesms/LogViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "failed to share log"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
