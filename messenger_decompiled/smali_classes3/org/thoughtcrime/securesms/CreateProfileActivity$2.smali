.class Lorg/thoughtcrime/securesms/CreateProfileActivity$2;
.super Landroid/os/AsyncTask;
.source "CreateProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/CreateProfileActivity;->updateProfile()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 286
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    const-string v0, "displayname"

    .line 287
    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->val$name:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$300(Lorg/thoughtcrime/securesms/CreateProfileActivity;)V

    .line 290
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$000(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$200(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->setSelfAvatar(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 293
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->setProfileAvatarId(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    invoke-static {}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 296
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 300
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 283
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 305
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$500(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup()V

    .line 309
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$600(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from_welcome"

    .line 311
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 314
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->finish()V

    goto :goto_0

    .line 316
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    const v1, 0x7f120135

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 283
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
