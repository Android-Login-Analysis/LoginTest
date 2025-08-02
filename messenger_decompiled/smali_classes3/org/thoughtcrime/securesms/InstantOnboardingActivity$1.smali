.class Lorg/thoughtcrime/securesms/InstantOnboardingActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "InstantOnboardingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Z)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$1;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 107
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$1;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->canRollbackAccountCreation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$1;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->rollbackAccountCreation(Landroid/app/Activity;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$1;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->finish()V

    :goto_0
    return-void
.end method
