.class public final synthetic Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/connect/AccountManager;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/RegistrationActivity;Lorg/thoughtcrime/securesms/connect/AccountManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda4;->f$1:Lorg/thoughtcrime/securesms/connect/AccountManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda4;->f$1:Lorg/thoughtcrime/securesms/connect/AccountManager;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->lambda$onLogin$16$org-thoughtcrime-securesms-RegistrationActivity(Lorg/thoughtcrime/securesms/connect/AccountManager;)V

    return-void
.end method
