.class public final synthetic Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

.field public final synthetic f$1:Lcom/b44t/messenger/DcMsg;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;Lcom/b44t/messenger/DcMsg;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda6;->f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda6;->f$1:Lcom/b44t/messenger/DcMsg;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda6;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda6;->f$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda6;->f$1:Lcom/b44t/messenger/DcMsg;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda6;->f$2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->lambda$querySetupCode$8$org-thoughtcrime-securesms-ConversationFragment(Lcom/b44t/messenger/DcMsg;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
