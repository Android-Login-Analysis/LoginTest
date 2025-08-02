.class Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;
.super Ljava/lang/Thread;
.source "ChatBackgroundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Landroid/content/Context;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$org-thoughtcrime-securesms-preferences-ChatBackgroundActivity$2()V
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    iget-object v1, v0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->tempDestinationPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->access$400(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 177
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/background-temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->tempDestinationPath:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;->val$context:Landroid/content/Context;

    iget-object v2, v0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->tempDestinationPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->access$300(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    new-instance v1, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
