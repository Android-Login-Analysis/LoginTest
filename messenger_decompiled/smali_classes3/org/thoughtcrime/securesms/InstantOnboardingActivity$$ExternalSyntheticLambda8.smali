.class public final synthetic Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda8;->f$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda8;->f$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->lambda$startQrAccountCreation$9$org-thoughtcrime-securesms-InstantOnboardingActivity()V

    return-void
.end method
