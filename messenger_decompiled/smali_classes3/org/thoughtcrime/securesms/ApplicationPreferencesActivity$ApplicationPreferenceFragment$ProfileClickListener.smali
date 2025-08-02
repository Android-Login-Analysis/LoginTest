.class Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$ProfileClickListener;
.super Ljava/lang/Object;
.source "ApplicationPreferencesActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$ProfileClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$1;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$ProfileClickListener;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$ProfileClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
