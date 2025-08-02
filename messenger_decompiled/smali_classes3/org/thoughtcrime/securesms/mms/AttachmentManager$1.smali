.class Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;
.super Ljava/lang/Object;
.source "AttachmentManager.java"

# interfaces
.implements Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/mms/AttachmentManager;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;Z)V
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
.field final synthetic this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

.field final synthetic val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/concurrent/ExecutionException;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$300(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/ThumbnailView;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    .line 145
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$400(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Z)V

    .line 146
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$500(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;->onAttachmentChanged()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
