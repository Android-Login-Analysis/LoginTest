.class Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$BackgroundClickListener;
.super Ljava/lang/Object;
.source "AppearancePreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$BackgroundClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$BackgroundClickListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 111
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$BackgroundClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment$BackgroundClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
