.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "EmojiToggle.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;


# instance fields
.field private emojiToggle:Landroid/graphics/drawable/Drawable;

.field private imeToggle:Landroid/graphics/drawable/Drawable;

.field private mediaToggle:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040176

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ResUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->emojiToggle:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040189

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ResUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->imeToggle:Landroid/graphics/drawable/Drawable;

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->emojiToggle:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->mediaToggle:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setToMedia()V

    return-void
.end method


# virtual methods
.method public attach(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)V
    .locals 0

    .line 54
    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->setKeyboardListener(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;)V

    return-void
.end method

.method public isStickerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setToMedia()V

    return-void
.end method

.method public onKeyboardProviderChanged(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;)V
    .locals 0

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setStickerMode(Z)V

    return-void
.end method

.method public onShown()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setToIme()V

    return-void
.end method

.method public setStickerMode(Z)V
    .locals 1

    .line 58
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->emojiToggle:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->mediaToggle:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->imeToggle:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setToMedia()V

    :cond_0
    return-void
.end method

.method public setToIme()V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->imeToggle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setToMedia()V
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->mediaToggle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
