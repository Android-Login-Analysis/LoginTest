.class public final synthetic Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

.field public final synthetic f$1:Lcom/b44t/messenger/DcContext;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Lcom/b44t/messenger/DcContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda0;->f$1:Lcom/b44t/messenger/DcContext;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda0;->f$1:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->lambda$handleDeleteAllSelected$6$org-thoughtcrime-securesms-BaseConversationListFragment(Lcom/b44t/messenger/DcContext;Landroid/content/DialogInterface;I)V

    return-void
.end method
