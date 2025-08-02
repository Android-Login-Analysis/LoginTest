.class public final synthetic Lorg/thoughtcrime/securesms/BaseConversationItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/BaseConversationItem;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/BaseConversationItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/BaseConversationItem;->lambda$setInteractionState$0$org-thoughtcrime-securesms-BaseConversationItem()V

    return-void
.end method
