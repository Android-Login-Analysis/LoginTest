.class Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ViewLogListener;
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
    name = "ViewLogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ViewLogListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ViewLogListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 315
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ViewLogListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/thoughtcrime/securesms/LogViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ViewLogListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
