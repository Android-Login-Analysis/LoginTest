.class public Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;
.super Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;
.source "NotificationsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_NOTIFICATION_SELECTED:I = 0x1


# instance fields
.field private ignoreBattery:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 238
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 239
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1200f6

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 240
    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1202d9

    goto :goto_1

    :cond_2
    const v0, 0x7f1202d6

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeRingtoneSummary(Landroidx/preference/Preference;)V
    .locals 2

    .line 231
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;

    .line 232
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 234
    invoke-virtual {v0, p1, v1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method

.method private isIgnoringBatteryOptimizations()Z
    .locals 3

    .line 196
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->needsIgnoreBatteryOptimizations()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 200
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/PowerManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$onCreate$1(Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 85
    check-cast p0, Landroidx/preference/CheckBoxPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private needsIgnoreBatteryOptimizations()Z
    .locals 2

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private requestToggleIgnoreBatteryOptimizations()V
    .locals 6

    const-string v0, "package:"

    .line 207
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    .line 211
    :try_start_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->needsIgnoreBatteryOptimizations()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->isIgnoringBatteryOptimizations()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 213
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 214
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 222
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->needsIgnoreBatteryOptimizations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-preferences-NotificationsPreferenceFragment(Landroidx/preference/Preference;)Z
    .locals 4

    .line 55
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 58
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x2

    .line 61
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 62
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0, v2}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2
.end method

.method synthetic lambda$onCreate$2$org-thoughtcrime-securesms-preferences-NotificationsPreferenceFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "#instant-delivery"

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openHelp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$3$org-thoughtcrime-securesms-preferences-NotificationsPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 80
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 82
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120349

    .line 83
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/Preference;)V

    const p1, 0x7f1202d8

    .line 84
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120097

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;)V

    const v0, 0x7f1201c5

    .line 88
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$4$org-thoughtcrime-securesms-preferences-NotificationsPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->requestToggleIgnoreBatteryOptimizations()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$5$org-thoughtcrime-securesms-preferences-NotificationsPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 108
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 109
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->isNotificationsEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 110
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->startSelf(Landroid/content/Context;)V

    goto :goto_0

    .line 112
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lorg/thoughtcrime/securesms/connect/KeepAliveService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$6$org-thoughtcrime-securesms-preferences-NotificationsPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 119
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 120
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 121
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->reliableService(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 122
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->startSelf(Landroid/content/Context;)V

    goto :goto_0

    .line 124
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lorg/thoughtcrime/securesms/connect/KeepAliveService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 158
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    .line 160
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 162
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->removeNotificationRingtone(Landroid/content/Context;)V

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_1
    const-string p1, "pref_key_ringtone"

    .line 168
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->initializeRingtoneSummary(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 42
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "pref_led_color"

    .line 44
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;)V

    .line 45
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "pref_key_ringtone"

    .line 46
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;-><init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$1;)V

    .line 47
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "pref_notification_privacy"

    .line 48
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;

    invoke-direct {v3, p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;)V

    .line 49
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "pref_notification_priority"

    .line 50
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    new-instance v4, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;

    invoke-direct {v4, p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;)V

    .line 51
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    new-instance v4, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;)V

    .line 54
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->initializeListSummary(Landroidx/preference/ListPreference;)V

    .line 71
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->initializeListSummary(Landroidx/preference/ListPreference;)V

    .line 72
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->initializeListSummary(Landroidx/preference/ListPreference;)V

    .line 74
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->initializeRingtoneSummary(Landroidx/preference/Preference;)V

    const-string p1, "pref_push_enabled"

    .line 76
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 77
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Prefs;->isPushEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 79
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_ignore_battery_optimizations"

    .line 97
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->ignoreBattery:Landroidx/preference/CheckBoxPreference;

    .line 98
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->needsIgnoreBatteryOptimizations()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 99
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->ignoreBattery:Landroidx/preference/CheckBoxPreference;

    new-instance v0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_reliable_service"

    .line 105
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 106
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "pref_key_enable_notifications"

    .line 117
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 118
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150005

    .line 132
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 146
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onPause()V

    .line 149
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Prefs;->isPushEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/thoughtcrime/securesms/notifications/FcmReceiveService;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/notifications/FcmReceiveService;->register(Landroid/content/Context;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Prefs;->isPushEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/thoughtcrime/securesms/notifications/FcmReceiveService;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {}, Lorg/thoughtcrime/securesms/notifications/FcmReceiveService;->deleteToken()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 137
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onResume()V

    .line 138
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12033a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 141
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->ignoreBattery:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->isIgnoringBatteryOptimizations()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
