.class Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;
.super Landroid/os/AsyncTask;
.source "InstantOnboardingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->createProfile()V
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
.field final synthetic this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Ljava/lang/String;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 429
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    const-string v0, "displayname"

    .line 430
    iget-object v1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->val$name:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$000(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 434
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$200(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->setSelfAvatar(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 435
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

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

    .line 437
    invoke-static {}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 438
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 442
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 426
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 447
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$400(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup()V

    .line 451
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$500(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$600(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    const v0, 0x7f120135

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 426
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
