.class public Lorg/thoughtcrime/securesms/components/SwitchPreferenceCompat;
.super Landroidx/preference/CheckBoxPreference;
.source "SwitchPreferenceCompat.java"


# instance fields
.field private listener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SwitchPreferenceCompat;->setLayoutRes()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SwitchPreferenceCompat;->setLayoutRes()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SwitchPreferenceCompat;->setLayoutRes()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SwitchPreferenceCompat;->setLayoutRes()V

    return-void
.end method

.method private setLayoutRes()V
    .locals 1

    const v0, 0x7f0c0106

    .line 38
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/SwitchPreferenceCompat;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SwitchPreferenceCompat;->listener:Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->onClick()V

    :cond_1
    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SwitchPreferenceCompat;->listener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method
