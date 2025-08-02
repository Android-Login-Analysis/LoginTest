.class public interface abstract Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;
.super Ljava/lang/Object;
.source "EmojiKeyboardProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmojiEventListener"
.end annotation


# virtual methods
.method public abstract onEmojiSelected(Ljava/lang/String;)V
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;)V
.end method
