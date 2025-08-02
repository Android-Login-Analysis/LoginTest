.class public interface abstract Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Presenter;
.super Ljava/lang/Object;
.source "MediaKeyboardProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract isVisible()Z
.end method

.method public abstract present(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;Landroidx/viewpager/widget/PagerAdapter;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$SearchObserver;I)V
.end method

.method public abstract requestDismissal()V
.end method
