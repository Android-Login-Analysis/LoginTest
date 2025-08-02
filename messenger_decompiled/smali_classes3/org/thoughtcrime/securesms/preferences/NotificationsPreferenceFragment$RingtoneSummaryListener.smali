.class Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;
.super Ljava/lang/Object;
.source "NotificationsPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingtoneSummaryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;->this$0:Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;-><init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 175
    check-cast p2, Landroid/net/Uri;

    if-eqz p2, :cond_1

    .line 177
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;->this$0:Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 183
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$RingtoneSummaryListener;->this$0:Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const p2, 0x7f120361

    .line 178
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
