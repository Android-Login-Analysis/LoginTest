.class public final synthetic Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;->lambda$onCreate$3$org-thoughtcrime-securesms-preferences-NotificationsPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
