.class public Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;
.super Ljava/lang/Object;
.source "BaseConversationItem.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/BaseConversationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PassthroughClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;


# direct methods
.method protected constructor <init>(Lorg/thoughtcrime/securesms/BaseConversationItem;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/BaseConversationItem;->performClick()Z

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 95
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->hasSelection()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 98
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;->this$0:Lorg/thoughtcrime/securesms/BaseConversationItem;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/BaseConversationItem;->performLongClick()Z

    const/4 p1, 0x1

    return p1
.end method
