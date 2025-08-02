.class public final Landroidx/emoji2/emojipicker/EmojiView;
.super Landroid/view/View;
.source "EmojiView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/emojipicker/EmojiView$Api23Impl;,
        Landroidx/emoji2/emojipicker/EmojiView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiView.kt\nandroidx/emoji2/emojipicker/EmojiView\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,181:1\n43#2,3:182\n*S KotlinDebug\n*F\n+ 1 EmojiView.kt\nandroidx/emoji2/emojipicker/EmojiView\n*L\n115#1:182,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \'2\u00020\u0001:\u0002&\'B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\t\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020\u001e2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0013H\u0002J\u0018\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u001cH\u0014R(\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006("
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/EmojiView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "value",
        "",
        "emoji",
        "getEmoji",
        "()Ljava/lang/CharSequence;",
        "setEmoji",
        "(Ljava/lang/CharSequence;)V",
        "offscreenCanvasBitmap",
        "Landroid/graphics/Bitmap;",
        "textPaint",
        "Landroid/text/TextPaint;",
        "willDrawVariantIndicator",
        "",
        "getWillDrawVariantIndicator$emoji2_emojipicker_release",
        "()Z",
        "setWillDrawVariantIndicator$emoji2_emojipicker_release",
        "(Z)V",
        "createStaticLayout",
        "Landroid/text/StaticLayout;",
        "Landroid/text/Spanned;",
        "width",
        "",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawEmoji",
        "drawVariantIndicator",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "Api23Impl",
        "Companion",
        "emoji2-emojipicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/emoji2/emojipicker/EmojiView$Companion;

.field private static final EMOJI_DRAW_TEXT_SIZE_SP:I = 0x1e


# instance fields
.field private emoji:Ljava/lang/CharSequence;

.field private final offscreenCanvasBitmap:Landroid/graphics/Bitmap;

.field private final textPaint:Landroid/text/TextPaint;

.field private willDrawVariantIndicator:Z


# direct methods
.method public static synthetic $r8$lambda$x569BU8RvnFXNuc6hn9pzRRrRx4(Ljava/lang/CharSequence;Landroidx/emoji2/emojipicker/EmojiView;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/emoji2/emojipicker/EmojiView;->_set_emoji_$lambda$3(Ljava/lang/CharSequence;Landroidx/emoji2/emojipicker/EmojiView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/emoji2/emojipicker/EmojiView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/emoji2/emojipicker/EmojiView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/emoji2/emojipicker/EmojiView;->Companion:Landroidx/emoji2/emojipicker/EmojiView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/emoji2/emojipicker/EmojiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    sget p2, Landroidx/emoji2/emojipicker/R$drawable;->ripple_emoji_view:I

    invoke-static {p1, p2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/emoji2/emojipicker/EmojiView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p0, p2}, Landroidx/emoji2/emojipicker/EmojiView;->setImportantForAccessibility(I)V

    .line 55
    iput-boolean p2, p0, Landroidx/emoji2/emojipicker/EmojiView;->willDrawVariantIndicator:Z

    .line 57
    new-instance p2, Landroid/text/TextPaint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x2

    const/high16 v1, 0x41f00000    # 30.0f

    .line 58
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 57
    iput-object p2, p0, Landroidx/emoji2/emojipicker/EmojiView;->textPaint:Landroid/text/TextPaint;

    .line 65
    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 66
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p2, p1

    .line 67
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "with(textPaint.fontMetri\u2026p.Config.ARGB_8888)\n    }"

    .line 65
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiView;->offscreenCanvasBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/emojipicker/EmojiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static final _set_emoji_$lambda$3(Ljava/lang/CharSequence;Landroidx/emoji2/emojipicker/EmojiView;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 97
    iget-object v1, p1, Landroidx/emoji2/emojipicker/EmojiView;->emoji:Ljava/lang/CharSequence;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    sget-object v1, Landroidx/emoji2/emojipicker/EmojiPickerView;->Companion:Landroidx/emoji2/emojipicker/EmojiPickerView$Companion;

    invoke-virtual {v1}, Landroidx/emoji2/emojipicker/EmojiPickerView$Companion;->getEmojiCompatLoaded$emoji2_emojipicker_release()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    .line 101
    :cond_1
    iget-boolean v2, p1, Landroidx/emoji2/emojipicker/EmojiView;->willDrawVariantIndicator:Z

    if-eqz v2, :cond_2

    .line 102
    sget-object v2, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->INSTANCE:Landroidx/emoji2/emojipicker/BundledEmojiListLoader;

    invoke-virtual {v2}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->getEmojiVariantsLookup$emoji2_emojipicker_release()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 98
    :cond_2
    invoke-direct {p1, v1, v0}, Landroidx/emoji2/emojipicker/EmojiView;->drawEmoji(Ljava/lang/CharSequence;Z)V

    .line 104
    invoke-virtual {p1, p0}, Landroidx/emoji2/emojipicker/EmojiView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroidx/emoji2/emojipicker/EmojiView;->invalidate()V

    goto :goto_0

    .line 108
    :cond_4
    iget-object p0, p1, Landroidx/emoji2/emojipicker/EmojiView;->offscreenCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_0
    return-void
.end method

.method private final createStaticLayout(Landroid/text/Spanned;I)Landroid/text/StaticLayout;
    .locals 9

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 166
    sget-object v0, Landroidx/emoji2/emojipicker/EmojiView$Api23Impl;->INSTANCE:Landroidx/emoji2/emojipicker/EmojiView$Api23Impl;

    iget-object v1, p0, Landroidx/emoji2/emojipicker/EmojiView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, v1, p2}, Landroidx/emoji2/emojipicker/EmojiView$Api23Impl;->createStaticLayout(Landroid/text/Spanned;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    new-instance v8, Landroid/text/StaticLayout;

    .line 170
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    .line 171
    iget-object v2, p0, Landroidx/emoji2/emojipicker/EmojiView;->textPaint:Landroid/text/TextPaint;

    .line 173
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v3, p2

    .line 169
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method private final drawEmoji(Ljava/lang/CharSequence;Z)V
    .locals 10

    .line 114
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiView;->offscreenCanvasBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 115
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiView;->offscreenCanvasBitmap:Landroid/graphics/Bitmap;

    .line 182
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Landroid/text/Spanned;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/emoji2/emojipicker/EmojiView;->createStaticLayout(Landroid/text/Spanned;I)Landroid/text/StaticLayout;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiView;->textPaint:Landroid/text/TextPaint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    const/4 v4, 0x0

    .line 123
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 124
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v6, v1, v0

    .line 125
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v7, v0

    .line 126
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiView;->textPaint:Landroid/text/TextPaint;

    move-object v8, v0

    check-cast v8, Landroid/graphics/Paint;

    move-object v2, v9

    move-object v3, p1

    .line 120
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 130
    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/EmojiView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Landroidx/emoji2/emojipicker/R$drawable;->variant_availability_indicator:I

    invoke-static {p1, p2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    .line 132
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 134
    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 135
    sget v2, Landroidx/emoji2/emojipicker/R$dimen;->variant_availability_indicator_width:I

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 138
    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 139
    sget v3, Landroidx/emoji2/emojipicker/R$dimen;->variant_availability_indicator_height:I

    .line 138
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 141
    new-instance v3, Landroid/graphics/Rect;

    sub-int v1, p2, v1

    sub-int v2, v0, v2

    invoke-direct {v3, v1, v2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 130
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/emoji2/emojipicker/EmojiView;->offscreenCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/emoji2/emojipicker/EmojiView;->offscreenCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 87
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiView;->offscreenCanvasBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getEmoji()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiView;->emoji:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWillDrawVariantIndicator$emoji2_emojipicker_release()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Landroidx/emoji2/emojipicker/EmojiView;->willDrawVariantIndicator:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 74
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 75
    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/EmojiView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroidx/emoji2/emojipicker/R$dimen;->emoji_picker_emoji_view_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 76
    invoke-virtual {p0, p1, p1}, Landroidx/emoji2/emojipicker/EmojiView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setEmoji(Ljava/lang/CharSequence;)V
    .locals 1

    .line 94
    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiView;->emoji:Ljava/lang/CharSequence;

    .line 95
    new-instance v0, Landroidx/emoji2/emojipicker/EmojiView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Landroidx/emoji2/emojipicker/EmojiView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;Landroidx/emoji2/emojipicker/EmojiView;)V

    invoke-virtual {p0, v0}, Landroidx/emoji2/emojipicker/EmojiView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setWillDrawVariantIndicator$emoji2_emojipicker_release(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Landroidx/emoji2/emojipicker/EmojiView;->willDrawVariantIndicator:Z

    return-void
.end method
