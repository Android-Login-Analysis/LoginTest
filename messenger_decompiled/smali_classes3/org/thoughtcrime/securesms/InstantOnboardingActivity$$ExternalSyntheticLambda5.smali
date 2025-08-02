.class public final synthetic Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda5;->f$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda5;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda5;->f$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda5;->f$1:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->lambda$showOtherOptionsDialog$4$org-thoughtcrime-securesms-InstantOnboardingActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
