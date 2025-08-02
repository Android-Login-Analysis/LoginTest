.class public interface abstract Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;
.super Ljava/lang/Object;
.source "BindableConversationItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/BindableConversationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onDownloadClicked(Lcom/b44t/messenger/DcMsg;)V
.end method

.method public abstract onQuoteClicked(Lcom/b44t/messenger/DcMsg;)V
.end method

.method public abstract onReactionClicked(Lcom/b44t/messenger/DcMsg;)V
.end method

.method public abstract onShowFullClicked(Lcom/b44t/messenger/DcMsg;)V
.end method
