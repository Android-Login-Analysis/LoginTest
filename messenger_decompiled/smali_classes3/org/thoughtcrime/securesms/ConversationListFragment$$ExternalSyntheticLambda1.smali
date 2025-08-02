.class public final synthetic Lorg/thoughtcrime/securesms/ConversationListFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ConversationListFragment;

.field public final synthetic f$1:Lcom/b44t/messenger/DcChatlist;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationListFragment;Lcom/b44t/messenger/DcChatlist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/ConversationListFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$$ExternalSyntheticLambda1;->f$1:Lcom/b44t/messenger/DcChatlist;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/ConversationListFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$$ExternalSyntheticLambda1;->f$1:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/ConversationListFragment;->lambda$loadChatlist$1$org-thoughtcrime-securesms-ConversationListFragment(Lcom/b44t/messenger/DcChatlist;)V

    return-void
.end method
