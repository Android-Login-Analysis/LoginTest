.class public final synthetic Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ConversationListAdapter;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/ConversationListItem;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationListAdapter;Lorg/thoughtcrime/securesms/ConversationListItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/ConversationListAdapter;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda2;->f$1:Lorg/thoughtcrime/securesms/ConversationListItem;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/ConversationListAdapter;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda2;->f$1:Lorg/thoughtcrime/securesms/ConversationListItem;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter;->lambda$onCreateViewHolder$2$org-thoughtcrime-securesms-ConversationListAdapter(Lorg/thoughtcrime/securesms/ConversationListItem;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
