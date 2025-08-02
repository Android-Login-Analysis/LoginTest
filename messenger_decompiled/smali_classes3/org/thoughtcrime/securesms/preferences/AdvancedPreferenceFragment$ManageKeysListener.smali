.class Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;
.super Ljava/lang/Object;
.source "AdvancedPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManageKeysListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 416
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    const v1, 0x7f120331

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    const v2, 0x7f12011e

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-static {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/util/ScreenLockUtil;->applyScreenLock(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 418
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ManageKeysListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->access$700(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
