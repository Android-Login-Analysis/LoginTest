.class public Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;
.super Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;
.source "AdvancedPreferenceFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$SendAsmListener;,
        Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$PreferE2eeListener;,
        Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;,
        Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ScreenShotSecurityListener;,
        Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ViewLogListener;,
        Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;
    }
.end annotation


# static fields
.field public static final PICK_SELF_KEYS:I = 0x74e3

.field private static final TAG:Ljava/lang/String; = "AdvancedPreferenceFragment"


# instance fields
.field bccSelfCheckbox:Landroidx/preference/CheckBoxPreference;

.field mvboxMoveCheckbox:Landroidx/preference/CheckBoxPreference;

.field onlyFetchMvboxCheckbox:Landroidx/preference/CheckBoxPreference;

.field preferE2eeCheckbox:Landroidx/preference/CheckBoxPreference;

.field sentboxWatchCheckbox:Landroidx/preference/CheckBoxPreference;

.field private showEmails:Landroidx/preference/ListPreference;

.field showSystemContacts:Landroidx/preference/CheckBoxPreference;

.field webxdcRealtimeCheckbox:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->updateWebrtcSummary()V

    return-void
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->manageKeys()V

    return-void
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const v0, 0x7f120050

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, ""

    return-object p0

    .line 292
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    const/4 v1, 0x1

    aput-object v2, v5, v1

    .line 295
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 297
    sget-object v2, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onCreate$10(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 189
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    .line 190
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private manageKeys()V
    .locals 4

    .line 425
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    .line 426
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGrantOnSdk30()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f8

    .line 429
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda8;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    .line 430
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method private openRegistrationActivity()V
    .locals 3

    .line 353
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateWebrtcSummary()V
    .locals 3

    const-string v0, "pref_webrtc_instance"

    .line 345
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->isWebrtcConfigOk(Lcom/b44t/messenger/DcContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v2, "webrtc_instance"

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f1202c4

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected copyToCacheDir(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    const-string v0, "tmp-keys-file"

    const-string v1, ".tmp"

    .line 280
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 282
    :try_start_1
    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/util/StreamUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 281
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

    .line 279
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

.method synthetic lambda$manageKeys$14$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    .line 443
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->startImexOne(I)V

    return-void
.end method

.method synthetic lambda$manageKeys$15$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 0
    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 439
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120333

    .line 440
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 441
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getImexDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120332

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 v0, 0x1040000

    .line 442
    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    const v0, 0x104000a

    .line 443
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 444
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 447
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_1

    .line 448
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x74e3

    invoke-static {}, Lorg/thoughtcrime/securesms/util/StorageUtil;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "*/*"

    invoke-static {p2, v2, p1, v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectMediaType(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    .line 450
    :cond_1
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getImexDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-virtual {p0, p1, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->showImportKeysDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$manageKeys$16$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment()V
    .locals 4

    .line 431
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120336

    .line 432
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 434
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f120333

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 435
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f120335

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    .line 433
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120097

    const/4 v2, 0x0

    .line 456
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v0, "show_emails"

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/Util;->objectToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$1$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 93
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 94
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v0, "sentbox_watch"

    invoke-virtual {p2, v0, p1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$11$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;)Z
    .locals 3

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/rpc/Rpc;->draftSelfReport(I)I

    move-result p1

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_id"

    .line 201
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 202
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Lcom/b44t/messenger/rpc/RpcException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$12$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;)Z
    .locals 3

    .line 213
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f120345

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12011e

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-static {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/util/ScreenLockUtil;->applyScreenLock(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->openRegistrationActivity()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$2$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 100
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 101
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v0, "bcc_self"

    invoke-virtual {p2, v0, p1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$3$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 107
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 108
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v0, "mvbox_move"

    invoke-virtual {p2, v0, p1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$4$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 119
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string p3, "only_fetch_mvbox"

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    .line 120
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method synthetic lambda$onCreate$5$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 114
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 116
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120328

    .line 117
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v1, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda9;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Landroidx/preference/Preference;)V

    const p1, 0x7f1202d8

    .line 118
    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120097

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v0

    .line 126
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string p2, "only_fetch_mvbox"

    invoke-virtual {p1, p2, v0}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$6$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 133
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 134
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v0, "webxdc_realtime_enabled"

    invoke-virtual {p2, v0, p1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$7$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 140
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 141
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v0, "ui.android.show_system_contacts"

    invoke-virtual {p2, v0, p1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$8$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 160
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "Thanks for trying out \"Broadcast Lists\"!"

    .line 162
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u2022 You can now create new \"Broadcast Lists\" from the \"New Chat\" dialog\n\n\u2022 In case you are using more than one device, broadcast lists are currently not synced between them\n\n\u2022 If you want to quit the experimental feature, you can disable it at \"Settings / Advanced\""

    .line 163
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 166
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1202d8

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$9$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "Thanks for trying out \"Location Streaming\"!"

    .line 177
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u2022 You will find a corresponding option in the attach menu (the paper clip) of each chat now\n\n\u2022 If you want to quit the experimental feature, you can disable it at \"Settings / Advanced\""

    .line 178
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 180
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1202d8

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$showImportKeysDialog$13$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p3, 0x2

    .line 409
    invoke-virtual {p0, p3, p1, p2}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->startImexOne(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 255
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x3eb

    if-ne p1, p2, :cond_1

    .line 258
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->manageKeys()V

    goto :goto_1

    :cond_1
    const/16 p2, 0x74e3

    if-ne p1, p2, :cond_6

    if-eqz p3, :cond_2

    .line 260
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 262
    sget-object p1, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->TAG:Ljava/lang/String;

    const-string p2, " Can\'t import null URI"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 266
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 267
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    const-string p2, "FILE"

    .line 268
    :cond_5
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->copyToCacheDir(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->showImportKeysDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_6
    const/16 p2, 0x3ec

    if-ne p1, p2, :cond_7

    .line 274
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->openRegistrationActivity()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "pref_show_emails"

    .line 78
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->showEmails:Landroidx/preference/ListPreference;

    .line 79
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda10;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_send_autocrypt_setup_message"

    .line 85
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 86
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$SendAsmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$SendAsmListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "pref_prefer_e2ee"

    .line 88
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->preferE2eeCheckbox:Landroidx/preference/CheckBoxPreference;

    .line 89
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$PreferE2eeListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$PreferE2eeListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_sentbox_watch"

    .line 91
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->sentboxWatchCheckbox:Landroidx/preference/CheckBoxPreference;

    .line 92
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda13;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_bcc_self"

    .line 98
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->bccSelfCheckbox:Landroidx/preference/CheckBoxPreference;

    .line 99
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda14;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_mvbox_move"

    .line 105
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->mvboxMoveCheckbox:Landroidx/preference/CheckBoxPreference;

    .line 106
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda15;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_only_fetch_mvbox"

    .line 112
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->onlyFetchMvboxCheckbox:Landroidx/preference/CheckBoxPreference;

    .line 113
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda16;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_webxdc_realtime_enabled"

    .line 131
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->webxdcRealtimeCheckbox:Landroidx/preference/CheckBoxPreference;

    .line 132
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_show_system_contacts"

    .line 138
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->showSystemContacts:Landroidx/preference/CheckBoxPreference;

    .line 139
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_manage_keys"

    .line 145
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 146
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "pref_screen_security"

    .line 148
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 149
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ScreenShotSecurityListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ScreenShotSecurityListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_view_log"

    .line 151
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 152
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ViewLogListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ViewLogListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "pref_webrtc_instance"

    .line 154
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 155
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->updateWebrtcSummary()V

    const-string p1, "pref_new_broadcast_list"

    .line 158
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 159
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_location_streaming_enabled"

    .line 173
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 174
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_developer_mode_enabled"

    .line 187
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 188
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_self_reporting"

    .line 195
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 196
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda11;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "password_account_settings_button"

    .line 211
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 212
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda12;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 220
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->isChatmail()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->preferE2eeCheckbox:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 222
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->showSystemContacts:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 223
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->sentboxWatchCheckbox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 224
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->bccSelfCheckbox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 225
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->mvboxMoveCheckbox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 226
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->onlyFetchMvboxCheckbox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150002

    .line 232
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 237
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onResume()V

    .line 238
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12022f

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 240
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v1, "show_emails"

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->showEmails:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->showEmails:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1, v0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->preferE2eeCheckbox:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v2, "e2ee_enabled"

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->sentboxWatchCheckbox:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v4, "sentbox_watch"

    invoke-virtual {v1, v4}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->bccSelfCheckbox:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v4, "bcc_self"

    invoke-virtual {v1, v4}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->mvboxMoveCheckbox:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v4, "mvbox_move"

    invoke-virtual {v1, v4}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->onlyFetchMvboxCheckbox:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v4, "only_fetch_mvbox"

    invoke-virtual {v1, v4}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 249
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->webxdcRealtimeCheckbox:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v4, "webxdc_realtime_enabled"

    invoke-virtual {v1, v4}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->showSystemContacts:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v4, "ui.android.show_system_contacts"

    invoke-virtual {v1, v4}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0, v2}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method protected showImportKeysDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 405
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120335

    .line 406
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const v3, 0x7f120334

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 408
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda7;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x104000a

    .line 409
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
