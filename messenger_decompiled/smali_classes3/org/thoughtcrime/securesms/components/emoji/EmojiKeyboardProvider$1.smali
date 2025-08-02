.class Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$1;
.super Ljava/lang/Object;
.source "EmojiKeyboardProvider.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;

.field final synthetic val$emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$1;->val$emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->access$000(Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;)Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->onCodePointSelected(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$1;->val$emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;->onEmojiSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$1;->val$emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;->onKeyEvent(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method
