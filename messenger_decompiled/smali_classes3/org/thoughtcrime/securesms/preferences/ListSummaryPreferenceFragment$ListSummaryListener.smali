.class public Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;
.super Ljava/lang/Object;
.source "ListSummaryPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ListSummaryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;


# direct methods
.method protected constructor <init>(Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
