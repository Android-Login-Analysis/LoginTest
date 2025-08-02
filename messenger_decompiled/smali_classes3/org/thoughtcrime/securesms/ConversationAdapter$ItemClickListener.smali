.class interface abstract Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ItemClickListener"
.end annotation


# virtual methods
.method public abstract onItemClick(Lcom/b44t/messenger/DcMsg;)V
.end method

.method public abstract onItemLongClick(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
.end method
