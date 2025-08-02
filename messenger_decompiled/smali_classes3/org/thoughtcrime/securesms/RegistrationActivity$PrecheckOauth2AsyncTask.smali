.class Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;
.super Landroid/os/AsyncTask;
.source "RegistrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/RegistrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrecheckOauth2AsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/thoughtcrime/securesms/RegistrationActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final dcContext:Lcom/b44t/messenger/DcContext;

.field private final email:Ljava/lang/String;

.field private final oauth2started:Lcom/b44t/messenger/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b44t/messenger/util/concurrent/SettableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private oauth2url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/RegistrationActivity;Ljava/lang/String;Lcom/b44t/messenger/util/concurrent/SettableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/RegistrationActivity;",
            "Ljava/lang/String;",
            "Lcom/b44t/messenger/util/concurrent/SettableFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    .line 376
    iput-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->oauth2url:Ljava/lang/String;

    .line 380
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 381
    iput-object p2, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->email:Ljava/lang/String;

    .line 382
    iput-object p3, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->oauth2started:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    .line 383
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->dcContext:Lcom/b44t/messenger/DcContext;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 371
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 390
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->email:Ljava/lang/String;

    const-string v1, "chat.delta:/com.b44t.messenger/auth"

    invoke-virtual {p1, v0, v1}, Lcom/b44t/messenger/DcContext;->getOauth2Url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->oauth2url:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$onPostExecute$0$org-thoughtcrime-securesms-RegistrationActivity$PrecheckOauth2AsyncTask(Lorg/thoughtcrime/securesms/RegistrationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p2, 0x1

    .line 403
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->access$402(Lorg/thoughtcrime/securesms/RegistrationActivity;Z)Z

    .line 404
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->oauth2started:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$onPostExecute$1$org-thoughtcrime-securesms-RegistrationActivity$PrecheckOauth2AsyncTask(Lorg/thoughtcrime/securesms/RegistrationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/thoughtcrime/securesms/RegistrationActivity;->access$302(Lorg/thoughtcrime/securesms/RegistrationActivity;J)J

    .line 409
    iget-object p2, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->oauth2url:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/IntentUtils;->showBrowserIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->oauth2started:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 371
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .line 396
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 397
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/RegistrationActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 398
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->oauth2url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1201e8

    .line 400
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1201e7

    .line 401
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    const v3, 0x7f120097

    .line 402
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    const p1, 0x7f1202f1

    .line 406
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 412
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->oauth2started:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
