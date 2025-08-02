.class public final synthetic Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ConversationFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->lambda$reloadList$6$org-thoughtcrime-securesms-ConversationFragment()V

    return-void
.end method
