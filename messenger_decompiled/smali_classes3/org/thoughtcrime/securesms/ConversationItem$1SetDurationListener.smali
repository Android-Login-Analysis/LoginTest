.class Lorg/thoughtcrime/securesms/ConversationItem$1SetDurationListener;
.super Ljava/lang/Object;
.source "ConversationItem.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationItem;->setMediaAttributes(Lcom/b44t/messenger/DcMsg;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetDurationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationItem;

.field final synthetic val$messageRecord:Lcom/b44t/messenger/DcMsg;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationItem;Lcom/b44t/messenger/DcMsg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 463
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$1SetDurationListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem$1SetDurationListener;->val$messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lorg/thoughtcrime/securesms/mms/AudioSlide;DJ)V
    .locals 0

    return-void
.end method

.method public onReceivedDuration(I)V
    .locals 2

    .line 475
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem$1SetDurationListener;->val$messageRecord:Lcom/b44t/messenger/DcMsg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/b44t/messenger/DcMsg;->lateFilingMediaSize(III)V

    .line 476
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem$1SetDurationListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationItem;->access$000(Lorg/thoughtcrime/securesms/ConversationItem;)Lorg/thoughtcrime/securesms/util/views/Stub;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AudioView;->setDuration(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
