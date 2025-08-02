.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "EmojiImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setImageEmoji(Ljava/lang/CharSequence;)V
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getEmojiDrawable(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
