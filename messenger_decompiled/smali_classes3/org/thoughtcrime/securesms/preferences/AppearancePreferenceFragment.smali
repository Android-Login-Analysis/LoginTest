.class public Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;
.super Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;
.source "AppearancePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$BackgroundClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->getTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    .line 78
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v4

    invoke-static {p0, v4}, Lorg/thoughtcrime/securesms/util/Prefs;->getBackgroundImagePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f1200de

    .line 81
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const v4, 0x7f1200db

    .line 84
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_3

    .line 91
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getSelectedLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v7

    .line 92
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v3, :cond_2

    .line 94
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_2

    .line 95
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v8

    :cond_3
    :goto_1
    if-ne v7, v3, :cond_4

    goto :goto_2

    :cond_4
    move v2, v7

    .line 103
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12030a

    .line 104
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v5, v2

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "pref_theme"

    .line 25
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "pref_language"

    .line 26
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 27
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->initializeListSummary(Landroidx/preference/ListPreference;)V

    .line 28
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->initializeListSummary(Landroidx/preference/ListPreference;)V

    const-string p1, "pref_chat_background"

    .line 29
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$BackgroundClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$BackgroundClickListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "pref_message_body_text_size"

    .line 30
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 31
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->initializeListSummary(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150003

    .line 36
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 47
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onResume()V

    .line 48
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120307

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 49
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBackgroundImagePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1200de

    .line 52
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f1200db

    .line 55
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "pref_chat_background"

    .line 57
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 41
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onStart()V

    .line 42
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 62
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->onStop()V

    .line 63
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 67
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getSelectedLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->setContextLocale(Landroid/content/Context;Ljava/util/Locale;)V

    .line 69
    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->setStockTranslations(Landroid/content/Context;)V

    return-void
.end method
