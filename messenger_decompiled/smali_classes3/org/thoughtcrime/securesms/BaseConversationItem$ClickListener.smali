.class public Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;
.super Ljava/lang/Object;
.source "BaseConversationItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/BaseConversationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClickListener"
.end annotation


# instance fields
.field private final parent:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/BaseConversationItem;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->parent:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object v1, v0, Lorg/thoughtcrime/securesms/BaseConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/BaseConversationItem;->shouldInterceptClicks(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->parent:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/BaseConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/BaseConversationItem;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/BaseConversationItem;->onAccessibilityClick()V

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->parent:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 121
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationItem;->context:Landroid/content/Context;

    const v0, 0x7f0c0099

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900e8

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    iget-object v2, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object v2, v2, Lorg/thoughtcrime/securesms/BaseConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object v2, v2, Lorg/thoughtcrime/securesms/BaseConversationItem;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120135

    .line 128
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1202d8

    .line 129
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getInfoType()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 133
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationItem;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/BaseConversationItem;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->showVerificationBrokenDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getInfoType()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 135
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationItem;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->showProtectionEnabledDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 136
    :cond_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getInfoType()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 137
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationItem;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->showInvalidUnencryptedDialog(Landroid/content/Context;)V

    :cond_5
    :goto_0
    return-void
.end method
