.class public Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;
.super Landroid/view/View;
.source "AsciiEmojiView.java"


# instance fields
.field private emoji:Ljava/lang/String;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 34
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->emoji:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 40
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040218

    invoke-static {v2, v3}, Lorg/thoughtcrime/securesms/util/ResUtil;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 45
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 47
    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->emoji:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 49
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    float-to-int v2, v0

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->emoji:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setEmoji(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->emoji:Ljava/lang/String;

    return-void
.end method
