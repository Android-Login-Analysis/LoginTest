.class public Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "ApplicationPreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;
    }
.end annotation


# static fields
.field private static final PREFERENCE_CATEGORY_ADVANCED:Ljava/lang/String; = "preference_category_advanced"

.field private static final PREFERENCE_CATEGORY_APPEARANCE:Ljava/lang/String; = "preference_category_appearance"

.field private static final PREFERENCE_CATEGORY_CHATS:Ljava/lang/String; = "preference_category_chats"

.field private static final PREFERENCE_CATEGORY_CONNECTIVITY:Ljava/lang/String; = "preference_category_connectivity"

.field private static final PREFERENCE_CATEGORY_HELP:Ljava/lang/String; = "preference_category_help"

.field private static final PREFERENCE_CATEGORY_MULTIDEVICE:Ljava/lang/String; = "preference_category_multidevice"

.field private static final PREFERENCE_CATEGORY_NOTIFICATIONS:Ljava/lang/String; = "preference_category_notifications"

.field private static final PREFERENCE_CATEGORY_PROFILE:Ljava/lang/String; = "preference_category_profile"

.field public static final REQUEST_CODE_SET_BACKGROUND:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 92
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->showBackupProvider()V

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-nez p1, :cond_0

    .line 85
    new-instance p1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;-><init>()V

    const p2, 0x1020002

    invoke-virtual {p0, p2, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->initFragment(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 320
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "pref_theme"

    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->setDefaultDayNightMode(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->recreate()V

    goto :goto_0

    :cond_0
    const-string p1, "pref_language"

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .line 103
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->finish()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public showBackupProvider()V
    .locals 3

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->SENDER_SHOW_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->getInt()I

    move-result v1

    const-string v2, "transfer_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0, v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->overridePendingTransition(II)V

    .line 130
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->finishAffinity()V

    return-void
.end method
