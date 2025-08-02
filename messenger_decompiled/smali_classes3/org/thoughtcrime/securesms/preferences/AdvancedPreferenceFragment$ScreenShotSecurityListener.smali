.class Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ScreenShotSecurityListener;
.super Ljava/lang/Object;
.source "AdvancedPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotSecurityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ScreenShotSecurityListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ScreenShotSecurityListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 305
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 306
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ScreenShotSecurityListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setScreenSecurityEnabled(Landroid/content/Context;Z)V

    .line 307
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$ScreenShotSecurityListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120354

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0
.end method
