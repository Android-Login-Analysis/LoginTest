.class public final synthetic Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda9;->f$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda9;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda9;->f$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$$ExternalSyntheticLambda9;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->lambda$onCreate$4$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment(Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void
.end method
