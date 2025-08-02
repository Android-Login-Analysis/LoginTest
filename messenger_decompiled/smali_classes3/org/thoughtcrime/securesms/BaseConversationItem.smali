.class public abstract Lorg/thoughtcrime/securesms/BaseConversationItem;
.super Landroid/widget/LinearLayout;
.source "BaseConversationItem.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/BindableConversationItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;,
        Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;
    }
.end annotation


# static fields
.field static final PULSE_HIGHLIGHT_MILLIS:J = 0x1f4L


# instance fields
.field protected batchSelected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;"
        }
    .end annotation
.end field

.field protected bodyText:Landroid/widget/TextView;

.field protected final context:Landroid/content/Context;

.field protected conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

.field protected dcChat:Lcom/b44t/messenger/DcChat;

.field protected final dcContext:Lcom/b44t/messenger/DcContext;

.field protected messageRecord:Lcom/b44t/messenger/DcMsg;

.field protected final passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

.field protected final rpc:Lcom/b44t/messenger/rpc/Rpc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->batchSelected:Ljava/util/Set;

    .line 41
    new-instance p2, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;-><init>(Lorg/thoughtcrime/securesms/BaseConversationItem;)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    .line 45
    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->context:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 47
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    return-void
.end method


# virtual methods
.method protected bind(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcChat;Ljava/util/Set;ZLorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/DcMsg;",
            "Lcom/b44t/messenger/DcChat;",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;Z",
            "Lorg/thoughtcrime/securesms/recipients/Recipient;",
            ")V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    .line 57
    iput-object p2, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->dcChat:Lcom/b44t/messenger/DcChat;

    .line 58
    iput-object p3, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->batchSelected:Ljava/util/Set;

    .line 59
    iput-object p5, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 60
    invoke-virtual {p0, p1, p4}, Lorg/thoughtcrime/securesms/BaseConversationItem;->setInteractionState(Lcom/b44t/messenger/DcMsg;Z)V

    return-void
.end method

.method synthetic lambda$setInteractionState$0$org-thoughtcrime-securesms-BaseConversationItem()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/BaseConversationItem;->setSelected(Z)V

    return-void
.end method

.method protected onAccessibilityClick()V
    .locals 0

    return-void
.end method

.method protected setInteractionState(Lcom/b44t/messenger/DcMsg;Z)V
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const p1, 0x7f08009b

    .line 65
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationItem;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/BaseConversationItem;->setSelected(Z)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x7f08009c

    .line 68
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationItem;->setBackgroundResource(I)V

    .line 69
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/BaseConversationItem;->setSelected(Z)V

    .line 70
    new-instance p1, Lorg/thoughtcrime/securesms/BaseConversationItem$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/BaseConversationItem$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/BaseConversationItem;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lorg/thoughtcrime/securesms/BaseConversationItem;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationItem;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 78
    new-instance v0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;-><init>(Lorg/thoughtcrime/securesms/BaseConversationItem;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected shouldInterceptClicks(Lcom/b44t/messenger/DcMsg;)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isFailed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getInfoType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getInfoType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getInfoType()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
