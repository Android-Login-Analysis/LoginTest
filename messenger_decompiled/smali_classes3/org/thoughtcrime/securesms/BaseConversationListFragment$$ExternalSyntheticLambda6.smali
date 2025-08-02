.class public final synthetic Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda6;->f$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda6;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda6;->f$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda6;->f$1:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->lambda$initializeFabClickListener$1$org-thoughtcrime-securesms-BaseConversationListFragment(Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method
