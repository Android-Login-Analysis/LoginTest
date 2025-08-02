.class public Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;
.super Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;
.source "ApplicationPreferencesActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationPreferenceFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$ProfileClickListener;,
        Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;-><init>()V

    return-void
.end method

.method private setCategorySummaries()V
    .locals 3

    const-string v0, "preference_category_profile"

    .line 192
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->refresh()V

    const-string v0, "preference_category_notifications"

    .line 194
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "preference_category_appearance"

    .line 196
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "preference_category_chats"

    .line 198
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "preference_category_connectivity"

    .line 200
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1200c4

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getConnectivitySummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "preference_category_help"

    .line 202
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private tintIcons(Landroid/content/Context;)V
    .locals 7

    const v0, 0x7f080148

    .line 208
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f080163

    .line 209
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0800ec

    .line 210
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f08011d

    .line 211
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0800df

    .line 212
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f080123

    .line 213
    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f040442

    .line 215
    filled-new-array {v6}, [I

    move-result-object v6

    .line 216
    invoke-virtual {p1, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v6, 0x0

    .line 217
    invoke-virtual {p1, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 218
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    invoke-static {v0, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 221
    invoke-static {v1, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 222
    invoke-static {v2, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 223
    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 224
    invoke-static {v4, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 225
    invoke-static {v5, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    const-string p1, "preference_category_notifications"

    .line 227
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "preference_category_connectivity"

    .line 228
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "preference_category_appearance"

    .line 229
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "preference_category_chats"

    .line 230
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "preference_category_advanced"

    .line 231
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "preference_category_help"

    .line 232
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 2

    .line 185
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result p1

    const/16 v0, 0x834

    if-ne p1, v0, :cond_0

    const-string p1, "preference_category_connectivity"

    .line 186
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 187
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1200c4

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getConnectivitySummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "preference_category_profile"

    .line 139
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$ProfileClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$ProfileClickListener;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$1;)V

    .line 140
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_category_notifications"

    .line 141
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_category_connectivity"

    .line 143
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_category_appearance"

    .line 145
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_category_chats"

    .line 147
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_category_multidevice"

    .line 149
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_category_advanced"

    .line 151
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preference_category_help"

    .line 154
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->tintIcons(Landroid/content/Context;)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 v0, 0x834

    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150001

    .line 166
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 179
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;->onDestroy()V

    .line 180
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 171
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;->onResume()V

    .line 173
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120255

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 174
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->setCategorySummaries()V

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
