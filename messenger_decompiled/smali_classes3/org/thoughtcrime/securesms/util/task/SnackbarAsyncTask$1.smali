.class Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;
.super Landroid/os/AsyncTask;
.source "SnackbarAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 81
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->access$300(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->reverseAction(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->access$000(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->access$100(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->access$100(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 89
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->access$102(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;Lorg/thoughtcrime/securesms/util/views/ProgressDialog;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 75
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->access$000(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->access$200(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v3, v3, v2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->access$102(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;Lorg/thoughtcrime/securesms/util/views/ProgressDialog;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->access$102(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;Lorg/thoughtcrime/securesms/util/views/ProgressDialog;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    :goto_0
    return-void
.end method
