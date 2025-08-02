.class Lorg/thoughtcrime/securesms/LogViewFragment$PopulateLogcatAsyncTask;
.super Landroid/os/AsyncTask;
.source "LogViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/LogViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopulateLogcatAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/LogViewFragment;

.field private final weakFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/thoughtcrime/securesms/LogViewFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/LogViewFragment;Lorg/thoughtcrime/securesms/LogViewFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/thoughtcrime/securesms/LogViewFragment$PopulateLogcatAsyncTask;->this$0:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 162
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/LogViewFragment$PopulateLogcatAsyncTask;->weakFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 158
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/LogViewFragment$PopulateLogcatAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 167
    iget-object p1, p0, Lorg/thoughtcrime/securesms/LogViewFragment$PopulateLogcatAsyncTask;->weakFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/LogViewFragment;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "**This log may contain sensitive information. If you want to post it publicly you may examine and edit it beforehand.**\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Lorg/thoughtcrime/securesms/LogViewFragment;->access$000(Lorg/thoughtcrime/securesms/LogViewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/LogViewFragment;->access$100(Lorg/thoughtcrime/securesms/LogViewFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 158
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/LogViewFragment$PopulateLogcatAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 182
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object p1, p0, Lorg/thoughtcrime/securesms/LogViewFragment$PopulateLogcatAsyncTask;->this$0:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/LogViewFragment;->access$200(Lorg/thoughtcrime/securesms/LogViewFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Could not read the log on your device. You can still use ADB to get a debug log instead."

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/LogViewFragment$PopulateLogcatAsyncTask;->this$0:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/LogViewFragment;->access$200(Lorg/thoughtcrime/securesms/LogViewFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 176
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 177
    iget-object v0, p0, Lorg/thoughtcrime/securesms/LogViewFragment$PopulateLogcatAsyncTask;->this$0:Lorg/thoughtcrime/securesms/LogViewFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/LogViewFragment;->access$200(Lorg/thoughtcrime/securesms/LogViewFragment;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f1202dd

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    return-void
.end method
