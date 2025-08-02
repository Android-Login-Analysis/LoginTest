.class Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;
.super Ljava/lang/Thread;
.source "ChatBackgroundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 95
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/background."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->access$200(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->access$200(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->setBackgroundImagePath(Landroid/content/Context;ILjava/lang/String;)V

    .line 100
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->access$300(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
