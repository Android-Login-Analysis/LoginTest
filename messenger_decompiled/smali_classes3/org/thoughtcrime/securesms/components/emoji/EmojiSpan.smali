.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;
.super Lorg/thoughtcrime/securesms/components/emoji/AnimatingImageSpan;
.source "EmojiSpan.java"


# instance fields
.field private final SHIFT_FACTOR:F

.field private final fm:Landroid/graphics/Paint$FontMetricsInt;

.field private final size:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/AnimatingImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 14
    iput p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->SHIFT_FACTOR:F

    .line 21
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->fm:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_0

    .line 22
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p2, p1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070066

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_0
    iput p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->size:I

    .line 24
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    sub-int v0, p8, p6

    move-object v10, p0

    .line 44
    iget v1, v10, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->size:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sub-int v8, p8, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p9

    .line 46
    invoke-super/range {v0 .. v9}, Lorg/thoughtcrime/securesms/components/emoji/AnimatingImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    if-eqz p5, :cond_0

    .line 29
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->fm:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v0, :cond_0

    .line 30
    iget p1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 31
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->fm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 32
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->fm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 33
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->fm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 34
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->fm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 35
    iget p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;->size:I

    return p1

    .line 37
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/thoughtcrime/securesms/components/emoji/AnimatingImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    return p1
.end method
