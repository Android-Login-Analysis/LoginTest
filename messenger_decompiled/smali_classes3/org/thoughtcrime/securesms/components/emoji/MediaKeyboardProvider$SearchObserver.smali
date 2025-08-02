.class public interface abstract Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$SearchObserver;
.super Ljava/lang/Object;
.source "MediaKeyboardProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchObserver"
.end annotation


# virtual methods
.method public abstract onSearchChanged(Ljava/lang/String;)V
.end method

.method public abstract onSearchClosed()V
.end method

.method public abstract onSearchOpened()V
.end method
