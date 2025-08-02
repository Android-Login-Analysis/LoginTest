.class public Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;
.super Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;
.source "ChatsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$ReadReceiptToggleListener;,
        Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BlockedContactsClickListener;,
        Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BackupListener;,
        Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;
    }
.end annotation


# instance fields
.field private autoDelDevice:Landroidx/preference/ListPreference;

.field private autoDelServer:Landroidx/preference/ListPreference;

.field private autoDownload:Landroidx/preference/ListPreference;

.field private mediaQuality:Landroidx/preference/ListPreference;

.field private readReceiptsCheckbox:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->initAutodelFromCore()V

    return-void
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->performBackup()V

    return-void
.end method

.method private alignToMaxEntry(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .line 133
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v2, :cond_2

    if-ne v1, v2, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 135
    aget-object v3, p2, v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_1

    :cond_0
    aget-object v3, p2, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_1
    if-lt v0, v3, :cond_1

    .line 137
    aget-object p2, p2, v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 140
    aget-object p2, p2, v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public static getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .line 155
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const v1, 0x7f1202d9

    .line 156
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202d6

    .line 157
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mdns_enabled"

    .line 158
    invoke-virtual {v0, v3}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 159
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12034c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initAutodelFromCore()V
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v1, "delete_server_after"

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDelServer:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDelServer:Landroidx/preference/ListPreference;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcContext;->isChatmail()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f120082

    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0, v2}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v1, "delete_device_after"

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDelDevice:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDelDevice:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1, v0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method private nicerAutoDownloadNames()V
    .locals 6

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDownload:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 117
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 118
    aget-object v3, v0, v2

    const-string v4, "160 KiB"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    .line 119
    aget-object v5, v0, v2

    aput-object v5, v3, v4

    const v4, 0x7f120416

    invoke-virtual {p0, v4, v3}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 120
    :cond_0
    aget-object v3, v0, v2

    const-string v5, "640 KiB"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v1, [Ljava/lang/Object;

    .line 121
    aget-object v5, v0, v2

    aput-object v5, v3, v4

    const v4, 0x7f120415

    invoke-virtual {p0, v4, v3}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    :cond_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 123
    aget-object v5, v0, v2

    aput-object v5, v3, v4

    const v4, 0x7f120414

    invoke-virtual {p0, v4, v3}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDownload:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private performBackup()V
    .locals 4

    .line 257
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 258
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGrantOnSdk30()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f8

    .line 261
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    .line 262
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v0, "media_quality"

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/Util;->objectToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$1$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v0, "download_limit"

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/Util;->objectToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$performBackup$2$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/16 p1, 0xb

    .line 268
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->startImexOne(I)V

    return-void
.end method

.method synthetic lambda$performBackup$3$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/16 p1, 0xb

    .line 272
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->startImexAll(I)V

    return-void
.end method

.method synthetic lambda$performBackup$4$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment()V
    .locals 6

    .line 263
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "configured_addr"

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120314

    .line 265
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120317

    .line 266
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 267
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const v0, 0x7f120319

    invoke-virtual {v2, v0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcAccounts;->getAll()[I

    move-result-object v1

    .line 270
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 271
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    const v1, 0x7f120316

    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 274
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 148
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_0

    .line 150
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->performBackup()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 40
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "pref_compression"

    .line 42
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->mediaQuality:Landroidx/preference/ListPreference;

    .line 43
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "auto_download"

    .line 50
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDownload:Landroidx/preference/ListPreference;

    .line 51
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->nicerAutoDownloadNames()V

    const-string p1, "pref_read_receipts"

    .line 58
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->readReceiptsCheckbox:Landroidx/preference/CheckBoxPreference;

    .line 59
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$ReadReceiptToggleListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$ReadReceiptToggleListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "preference_category_blocked"

    .line 61
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BlockedContactsClickListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BlockedContactsClickListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "pref_backup"

    .line 63
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 64
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BackupListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$BackupListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "autodel_device"

    .line 66
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDelDevice:Landroidx/preference/ListPreference;

    .line 67
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;

    const-string v1, "delete_device_after"

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "autodel_server"

    .line 69
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDelServer:Landroidx/preference/ListPreference;

    .line 70
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;

    const-string v1, "delete_server_after"

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->isChatmail()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDelServer:Landroidx/preference/ListPreference;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/CharSequence;

    const v3, 0x7f120086

    invoke-virtual {p0, v3}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f12007d

    invoke-virtual {p0, v3}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDelServer:Landroidx/preference/ListPreference;

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v2, "0"

    aput-object v2, v0, v4

    const-string v2, "1"

    aput-object v2, v0, v5

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1, v1}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result p1

    if-le p1, v5, :cond_0

    .line 75
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1, v1, v4}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150004

    .line 82
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 87
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onResume()V

    .line 88
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12031d

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 90
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v1, "media_quality"

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->mediaQuality:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->mediaQuality:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1, v0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v1, "download_limit"

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDownload:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->alignToMaxEntry(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDownload:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->autoDownload:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1, v0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->readReceiptsCheckbox:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v2, "mdns_enabled"

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->initAutodelFromCore()V

    return-void
.end method
