.class public abstract Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;
.super Landroid/os/AsyncTask;
.source "SnackbarAsyncTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

.field private reversibleParameter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParams;"
        }
    .end annotation
.end field

.field private final showProgress:Z

.field private final snackbarActionText:Ljava/lang/String;

.field private final snackbarDuration:I

.field private final snackbarText:Ljava/lang/String;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->view:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->snackbarText:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->snackbarActionText:Ljava/lang/String;

    .line 34
    iput p4, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->snackbarDuration:I

    .line 35
    iput-boolean p5, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->showProgress:Z

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->showProgress:Z

    return p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;
    .locals 0

    .line 11
    iget-object p0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$102(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;Lorg/thoughtcrime/securesms/util/views/ProgressDialog;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;
    .locals 0

    .line 11
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Landroid/view/View;
    .locals 0

    .line 11
    iget-object p0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)Ljava/lang/Object;
    .locals 0

    .line 11
    iget-object p0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->reversibleParameter:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 52
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->reversibleParameter:Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->executeAction(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected abstract executeAction(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    new-instance p1, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;-><init>(Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 92
    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 59
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->showProgress:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 64
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->view:Landroid/view/View;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->snackbarText:Ljava/lang/String;

    iget v1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->snackbarDuration:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->snackbarActionText:Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v0, p0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->view:Landroid/view/View;

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060364

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .line 40
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->showProgress:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->view:Landroid/view/View;

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1202dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    .line 41
    invoke-static {v0, v4, v1, v2, v3}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    :goto_0
    return-void
.end method

.method protected abstract reverseAction(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation
.end method
