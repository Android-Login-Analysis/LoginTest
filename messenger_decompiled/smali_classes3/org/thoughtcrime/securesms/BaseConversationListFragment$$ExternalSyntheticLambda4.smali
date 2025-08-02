.class public final synthetic Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/MuteDialog$MuteSelectionListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Lcom/b44t/messenger/DcContext;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Ljava/util/Set;Lcom/b44t/messenger/DcContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda4;->f$2:Lcom/b44t/messenger/DcContext;

    return-void
.end method


# virtual methods
.method public final onMuted(J)V
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda4;->f$2:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->lambda$handleMuteAllSelected$5$org-thoughtcrime-securesms-BaseConversationListFragment(Ljava/util/Set;Lcom/b44t/messenger/DcContext;J)V

    return-void
.end method
