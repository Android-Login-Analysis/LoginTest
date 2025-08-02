.class public interface abstract Lorg/thoughtcrime/securesms/BindableConversationItem;
.super Ljava/lang/Object;
.source "BindableConversationItem.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/Unbindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;
    }
.end annotation


# virtual methods
.method public abstract bind(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcChat;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/DcMsg;",
            "Lcom/b44t/messenger/DcChat;",
            "Lorg/thoughtcrime/securesms/mms/GlideRequests;",
            "Ljava/util/Locale;",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;",
            "Lorg/thoughtcrime/securesms/recipients/Recipient;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract getMessageRecord()Lcom/b44t/messenger/DcMsg;
.end method

.method public abstract setEventListener(Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;)V
.end method
