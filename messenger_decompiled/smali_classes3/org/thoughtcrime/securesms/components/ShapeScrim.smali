.class public Lorg/thoughtcrime/securesms/components/ShapeScrim;
.super Landroid/view/View;
.source "ShapeScrim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;
    }
.end annotation


# instance fields
.field private final eraser:Landroid/graphics/Paint;

.field private final radius:F

.field private scrim:Landroid/graphics/Bitmap;

.field private scrimCanvas:Landroid/graphics/Canvas;

.field private final shape:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3ecccccd    # 0.4f

    if-eqz p2, :cond_2

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/R$styleable;->ShapeScrim:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "square"

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->SQUARE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->shape:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    goto :goto_0

    :cond_0
    const-string v0, "circle"

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->CIRCLE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->shape:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    goto :goto_0

    .line 47
    :cond_1
    sget-object p2, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->SQUARE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->shape:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    .line 49
    :goto_0
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->radius:F

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 53
    :cond_2
    sget-object p1, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->SQUARE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->shape:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    .line 54
    iput p3, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->radius:F

    .line 57
    :goto_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->eraser:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FLandroid/graphics/Paint;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSquare(Landroid/graphics/Canvas;FLandroid/graphics/Paint;)V
    .locals 4

    .line 98
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p2

    .line 99
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p2, p2, v2

    add-float v2, v0, p2

    add-float/2addr p2, v1

    .line 103
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p2, 0x41c80000    # 25.0f

    .line 105
    invoke-virtual {p1, v3, p2, p2, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 67
    iget v1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->radius:F

    mul-float v0, v0, v1

    .line 69
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrimCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrim:Landroid/graphics/Bitmap;

    .line 71
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrim:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrimCanvas:Landroid/graphics/Canvas;

    .line 74
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrim:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 75
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrimCanvas:Landroid/graphics/Canvas;

    const-string v2, "#55BDBDBD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 77
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->shape:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    sget-object v2, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->CIRCLE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrimCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->eraser:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v0, v2}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->drawCircle(Landroid/graphics/Canvas;FLandroid/graphics/Paint;)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrimCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->eraser:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v0, v2}, Lorg/thoughtcrime/securesms/components/ShapeScrim;->drawSquare(Landroid/graphics/Canvas;FLandroid/graphics/Paint;)V

    .line 80
    :goto_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrim:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p4, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 88
    :cond_0
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrim:Landroid/graphics/Bitmap;

    .line 89
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrim:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ShapeScrim;->scrimCanvas:Landroid/graphics/Canvas;

    :cond_1
    return-void
.end method
