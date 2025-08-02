.class public final synthetic Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/RegistrationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;Lorg/thoughtcrime/securesms/RegistrationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/RegistrationActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->lambda$onPostExecute$0$org-thoughtcrime-securesms-RegistrationActivity$PrecheckOauth2AsyncTask(Lorg/thoughtcrime/securesms/RegistrationActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
