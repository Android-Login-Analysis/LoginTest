.class public abstract Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "CorrectedPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onActivityCreated(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    .line 31
    instance-of v0, p1, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 36
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 37
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "android.support.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    :goto_1
    return-void
.end method
