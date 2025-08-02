.class public Lorg/thoughtcrime/securesms/components/ImageDivet;
.super Landroid/widget/ImageView;
.source "ImageDivet.java"


# static fields
.field private static final CORNER_OFFSET:F = 12.0f

.field private static final POSITIONS:[Ljava/lang/String;


# instance fields
.field private density:F

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private drawableIntrinsicHeight:I

.field private drawableIntrinsicWidth:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bottom_right"

    aput-object v2, v0, v1

    .line 14
    sput-object v0, Lorg/thoughtcrime/securesms/components/ImageDivet;->POSITIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ImageDivet;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ImageDivet;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ImageDivet;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private computeBounds(Landroid/graphics/Canvas;)V
    .locals 4

    .line 96
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ImageDivet;->getWidth()I

    move-result p1

    .line 97
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ImageDivet;->getHeight()I

    move-result v0

    .line 99
    iget v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->position:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawableIntrinsicWidth:I

    sub-int v2, p1, v2

    iget v3, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawableIntrinsicHeight:I

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 40
    sget-object v0, Lorg/thoughtcrime/securesms/components/ImageDivet;->POSITIONS:[Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "position"

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/util/AttributeSet;->getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->position:I

    .line 43
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ImageDivet;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->density:F

    .line 44
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/ImageDivet;->setDrawable()V

    return-void
.end method

.method private setDrawable()V
    .locals 2

    const v0, 0x7f040366

    .line 48
    filled-new-array {v0}, [I

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ImageDivet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    iget v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->position:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawable:Landroid/graphics/drawable/Drawable;

    .line 58
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawableIntrinsicWidth:I

    .line 59
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawableIntrinsicHeight:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public asImageView()Landroid/widget/ImageView;
    .locals 0

    return-object p0
.end method

.method public getCloseOffset()F
    .locals 2

    const/high16 v0, 0x41400000    # 12.0f

    .line 84
    iget v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->density:F

    mul-float v1, v1, v0

    return v1
.end method

.method public getFarOffset()F
    .locals 2

    .line 92
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ImageDivet;->getCloseOffset()F

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawableIntrinsicHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->position:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ImageDivet;->computeBounds(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 74
    iput p1, p0, Lorg/thoughtcrime/securesms/components/ImageDivet;->position:I

    .line 75
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/ImageDivet;->setDrawable()V

    .line 76
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ImageDivet;->invalidate()V

    return-void
.end method
