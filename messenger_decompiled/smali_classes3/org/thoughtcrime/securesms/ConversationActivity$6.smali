.class Lorg/thoughtcrime/securesms/ConversationActivity$6;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;->onRecorderFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
        "Landroid/util/Pair<",
        "Landroid/net/Uri;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 1230
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$6;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/concurrent/ExecutionException;)V
    .locals 2

    .line 1253
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$6;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    const v0, 0x7f1200ba

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Landroid/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1233
    new-instance v7, Lorg/thoughtcrime/securesms/mms/AudioSlide;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$6;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "audio/aac"

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/thoughtcrime/securesms/mms/AudioSlide;-><init>(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Z)V

    .line 1234
    new-instance v0, Lorg/thoughtcrime/securesms/mms/SlideDeck;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/mms/SlideDeck;-><init>()V

    .line 1235
    invoke-virtual {v0, v7}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->addSlide(Lorg/thoughtcrime/securesms/mms/Slide;)V

    .line 1237
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$6;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->processComposeControls(ILjava/lang/String;Lorg/thoughtcrime/securesms/mms/SlideDeck;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$6$1;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$6$1;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity$6;Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1230
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$6;->onSuccess(Landroid/util/Pair;)V

    return-void
.end method
