.class public interface abstract Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/search/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onContactClicked(Lcom/b44t/messenger/DcContact;)V
.end method

.method public abstract onConversationClicked(Lcom/b44t/messenger/DcChatlist$Item;)V
.end method

.method public abstract onConversationLongClicked(Lcom/b44t/messenger/DcChatlist$Item;)V
.end method

.method public abstract onMessageClicked(Lcom/b44t/messenger/DcMsg;)V
.end method
