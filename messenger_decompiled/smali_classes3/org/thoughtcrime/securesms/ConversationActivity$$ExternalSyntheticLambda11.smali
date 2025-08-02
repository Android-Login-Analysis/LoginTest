.class public final synthetic Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/MuteDialog$MuteSelectionListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda11;->f$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    return-void
.end method


# virtual methods
.method public final onMuted(J)V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda11;->f$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->lambda$handleMuteNotifications$1$org-thoughtcrime-securesms-ConversationActivity(J)V

    return-void
.end method
