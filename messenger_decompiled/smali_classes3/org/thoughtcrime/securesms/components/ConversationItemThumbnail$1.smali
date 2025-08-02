.class Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail$1;
.super Ljava/lang/Object;
.source "ConversationItemThumbnail.java"

# interfaces
.implements Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->refreshSlideAttachmentState(Lcom/b44t/messenger/util/concurrent/ListenableFuture;Lorg/thoughtcrime/securesms/mms/Slide;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

.field final synthetic val$slide:Lorg/thoughtcrime/securesms/mms/Slide;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail$1;->this$0:Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail$1;->val$slide:Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/concurrent/ExecutionException;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail$1;->val$slide:Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->setTransferState(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail$1;->val$slide:Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->setTransferState(I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
