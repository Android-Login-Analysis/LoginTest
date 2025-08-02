.class public final synthetic Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda5;->f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iput p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda5;->f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda5;->f$1:I

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->lambda$moveToLastSeen$3$org-thoughtcrime-securesms-ConversationFragment(I)V

    return-void
.end method
