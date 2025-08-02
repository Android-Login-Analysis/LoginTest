.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "EmojiEditText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmojiEditText"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0401fe

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->isSystemEmojiPreferred(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->appendEmojiFilter([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method

.method private appendEmojiFilter([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 52
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 53
    array-length v3, p1

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-array v2, v1, [Landroid/text/InputFilter;

    .line 58
    :goto_0
    new-instance p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiFilter;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiFilter;-><init>(Landroid/widget/TextView;)V

    aput-object p1, v2, v0

    return-object v2
.end method


# virtual methods
.method public insertEmoji(Ljava/lang/String;)V
    .locals 4

    .line 35
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->getSelectionStart()I

    move-result v0

    .line 36
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->getSelectionEnd()I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v2, v3, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->setSelection(I)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 44
    instance-of v0, p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->invalidate()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
