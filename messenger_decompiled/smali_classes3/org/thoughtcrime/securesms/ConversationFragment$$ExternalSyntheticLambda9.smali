.class public final synthetic Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$SwipeAvailabilityProvider;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ConversationFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda9;->f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    return-void
.end method


# virtual methods
.method public final isSwipeAvailable(Lcom/b44t/messenger/DcMsg;)Z
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda9;->f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->lambda$onCreateView$1$org-thoughtcrime-securesms-ConversationFragment(Lcom/b44t/messenger/DcMsg;)Z

    move-result p1

    return p1
.end method
