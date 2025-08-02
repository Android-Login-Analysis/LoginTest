.class public Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;
.super Landroid/view/View;
.source "VerticalSlideColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;
    }
.end annotation


# static fields
.field private static final INDICATOR_TO_BAR_WIDTH_RATIO:F = 0.5f


# instance fields
.field private activeColor:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private borderColor:I

.field private borderWidth:F

.field private centerX:I

.field private colorPickerBody:Landroid/graphics/RectF;

.field private colorPickerRadius:F

.field private colors:[I

.field private indicatorFillPaint:Landroid/graphics/Paint;

.field private indicatorRadius:F

.field private indicatorStrokePaint:Landroid/graphics/Paint;

.field private onColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private strokePaint:Landroid/graphics/Paint;

.field private touchY:I

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/R$styleable;->VerticalSlideColorPicker:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const v0, 0x7f030022

    .line 83
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colors:[I

    const/4 p2, -0x1

    .line 86
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderColor:I

    const/4 p2, 0x1

    const/high16 v0, 0x41200000    # 10.0f

    .line 87
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->init()V

    return-void

    :catchall_0
    move-exception p2

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setWillNotDraw(Z)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->paint:Landroid/graphics/Paint;

    .line 111
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->path:Landroid/graphics/Path;

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->strokePaint:Landroid/graphics/Paint;

    .line 117
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->strokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->strokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorStrokePaint:Landroid/graphics/Paint;

    .line 123
    iget v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorFillPaint:Landroid/graphics/Paint;

    .line 126
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getActiveColor()I
    .locals 1

    .line 229
    iget v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->activeColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 132
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 134
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->path:Landroid/graphics/Path;

    iget v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderWidth:F

    iget v3, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerRadius:F

    add-float/2addr v2, v3

    iget v4, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorRadius:F

    add-float/2addr v2, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 135
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerBody:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 136
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->path:Landroid/graphics/Path;

    iget v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->viewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderWidth:F

    iget v4, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerRadius:F

    add-float/2addr v3, v4

    iget v5, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorRadius:F

    add-float/2addr v3, v5

    sub-float/2addr v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 138
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->bitmapCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 140
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->bitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 141
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->bitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 145
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerBody:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->touchY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->touchY:I

    .line 147
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->activeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->centerX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->touchY:I

    int-to-float v1, v1

    iget v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorRadius:F

    iget-object v3, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    iget v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->centerX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->touchY:I

    int-to-float v1, v1

    iget v2, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorRadius:F

    iget-object v3, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 170
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 172
    iput v1, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->viewWidth:I

    .line 173
    iput v2, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->viewHeight:I

    if-lez v1, :cond_2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 179
    div-int/lit8 v3, v1, 0x2

    iput v3, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->centerX:I

    .line 180
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderWidth:F

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorRadius:F

    .line 181
    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerRadius:F

    .line 183
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->centerX:I

    int-to-float v3, v2

    iget v4, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerRadius:F

    sub-float/2addr v3, v4

    iget v5, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderWidth:F

    add-float v6, v5, v4

    iget v7, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->indicatorRadius:F

    add-float/2addr v6, v7

    int-to-float v2, v2

    add-float/2addr v2, v4

    iget v8, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->viewHeight:I

    int-to-float v8, v8

    add-float/2addr v5, v4

    add-float/2addr v5, v7

    sub-float/2addr v8, v5

    invoke-direct {v1, v3, v6, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerBody:Landroid/graphics/RectF;

    .line 188
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    iget-object v2, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerBody:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/RectF;->top:F

    const/4 v12, 0x0

    iget-object v2, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerBody:Landroid/graphics/RectF;

    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v14, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colors:[I

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 189
    iget-object v2, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 191
    iget-object v1, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    :cond_1
    iget v1, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->viewWidth:I

    iget v2, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->viewHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->bitmap:Landroid/graphics/Bitmap;

    .line 196
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->bitmapCanvas:Landroid/graphics/Canvas;

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerBody:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->touchY:I

    .line 155
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerBody:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->touchY:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->touchY:I

    .line 157
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->viewWidth:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->activeColor:I

    .line 159
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->onColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;->onColorChange(I)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public setActiveColor(I)V
    .locals 1

    .line 215
    iput p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->activeColor:I

    .line 217
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colorPickerBody:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 218
    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->touchY:I

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->onColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;->onColorChange(I)V

    .line 225
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->invalidate()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 200
    iput p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderColor:I

    .line 201
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->invalidate()V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0

    .line 205
    iput p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->borderWidth:F

    .line 206
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->invalidate()V

    return-void
.end method

.method public setColors([I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->colors:[I

    .line 211
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->invalidate()V

    return-void
.end method

.method public setOnColorChangeListener(Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->onColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    return-void
.end method
