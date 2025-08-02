.class public abstract Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;
.super Landroid/os/AsyncTask;
.source "ProgressDialogAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private cancelable:Z

.field private final contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private progress:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    .line 25
    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->title:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->progress:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .line 36
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 38
    iget-object v2, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->title:Ljava/lang/String;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->message:Ljava/lang/String;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->cancelable:Z

    iget-object v6, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static/range {v1 .. v6}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->progress:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    :cond_0
    return-void
.end method

.method public setCancelable(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->cancelable:Z

    .line 31
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/task/ProgressDialogAsyncTask;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method
