.class Lorg/thoughtcrime/securesms/ConversationActivity$7$1;
.super Landroid/os/AsyncTask;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity$7;->onSuccess(Landroid/util/Pair;)V
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
.field final synthetic this$1:Lorg/thoughtcrime/securesms/ConversationActivity$7;

.field final synthetic val$result:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity$7;Landroid/util/Pair;)V
    .locals 0

    .line 1270
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$7$1;->this$1:Lorg/thoughtcrime/securesms/ConversationActivity$7;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$7$1;->val$result:Landroid/util/Pair;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1270
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$7$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 1273
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$7$1;->this$1:Lorg/thoughtcrime/securesms/ConversationActivity$7;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationActivity$7;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$7$1;->val$result:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->delete(Landroid/content/Context;Landroid/net/Uri;)Z

    const/4 p1, 0x0

    return-object p1
.end method
