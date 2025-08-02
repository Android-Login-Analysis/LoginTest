.class public interface abstract Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;
.super Ljava/lang/Object;
.source "MediaKeyboardProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;,
        Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Presenter;,
        Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;,
        Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$SearchObserver;,
        Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;,
        Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;
    }
.end annotation


# virtual methods
.method public abstract getProviderIconView(Z)I
.end method

.method public abstract requestPresentation(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Presenter;Z)V
.end method

.method public abstract setController(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;)V
.end method
