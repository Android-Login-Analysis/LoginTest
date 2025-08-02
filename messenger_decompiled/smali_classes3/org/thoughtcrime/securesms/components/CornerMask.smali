.class public Lorg/thoughtcrime/securesms/components/CornerMask;
.super Ljava/lang/Object;
.source "CornerMask.java"


# instance fields
.field private final bounds:Landroid/graphics/RectF;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final corners:Landroid/graphics/Path;

.field private final outline:Landroid/graphics/Path;

.field private final radii:[F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 16
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->radii:[F

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->clearPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->outline:Landroid/graphics/Path;

    .line 19
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->corners:Landroid/graphics/Path;

    .line 20
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->bounds:Landroid/graphics/RectF;

    .line 23
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CornerMask;->isLegacy()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 26
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    const/high16 p1, -0x1000000

    .line 29
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public isLegacy()Z
    .locals 2

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mask(Landroid/graphics/Canvas;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->bounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 37
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->bounds:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 38
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 39
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->corners:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 42
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 47
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CornerMask;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->outline:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 49
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->outline:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->bounds:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 50
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->outline:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->corners:Landroid/graphics/Path;

    invoke-static {}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m$3()Landroid/graphics/Path$Op;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 51
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->outline:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->corners:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :goto_0
    return-void
.end method

.method public setBottomLeftRadius(I)V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->radii:[F

    int-to-float p1, p1

    const/4 v1, 0x7

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    return-void
.end method

.method public setBottomRightRadius(I)V
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->radii:[F

    int-to-float p1, p1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    return-void
.end method

.method public setRadii(IIII)V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->radii:[F

    int-to-float p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x3

    .line 68
    aput p1, v0, p2

    const/4 p2, 0x2

    aput p1, v0, p2

    int-to-float p1, p3

    const/4 p2, 0x5

    .line 69
    aput p1, v0, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    int-to-float p1, p4

    const/4 p2, 0x7

    .line 70
    aput p1, v0, p2

    const/4 p2, 0x6

    aput p1, v0, p2

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p1, p1, p1}, Lorg/thoughtcrime/securesms/components/CornerMask;->setRadii(IIII)V

    return-void
.end method

.method public setTopLeftRadius(I)V
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->radii:[F

    int-to-float p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setTopRightRadius(I)V
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CornerMask;->radii:[F

    int-to-float p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method
