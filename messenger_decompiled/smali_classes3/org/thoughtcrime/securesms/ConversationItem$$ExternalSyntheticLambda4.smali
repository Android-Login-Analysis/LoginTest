.class public final synthetic Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ConversationItem;

.field public final synthetic f$1:Lcom/b44t/messenger/DcMsg;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationItem;Lcom/b44t/messenger/DcMsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda4;->f$1:Lcom/b44t/messenger/DcMsg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda4;->f$1:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->lambda$setReactions$4$org-thoughtcrime-securesms-ConversationItem(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V

    return-void
.end method
