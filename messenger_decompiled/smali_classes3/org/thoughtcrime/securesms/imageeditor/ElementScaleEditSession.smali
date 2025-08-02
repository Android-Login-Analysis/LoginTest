.class final Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;
.super Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;
.source "ElementScaleEditSession.java"


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 2

    .line 69
    iget v0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private convertToDrag(ILandroid/graphics/Matrix;)Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointScreen:[Landroid/graphics/PointF;

    rsub-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    invoke-static {v0, p2, p1}, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->startDrag(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;

    move-result-object p1

    return-object p1
.end method

.method private static findScale([Landroid/graphics/PointF;[Landroid/graphics/PointF;)D
    .locals 3

    const/4 v0, 0x0

    .line 84
    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-static {v1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->getDistanceSquared(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    .line 85
    aget-object v0, p1, v0

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->getDistanceSquared(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 86
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getDistanceSquared(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 93
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 94
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    mul-float v0, v0, v0

    mul-float p0, p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method static startScale(Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;Landroid/graphics/Matrix;Landroid/graphics/PointF;I)Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;
    .locals 3

    .line 16
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->commit()V

    .line 17
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-direct {v0, v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)V

    rsub-int/lit8 p1, p3, 0x1

    .line 18
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->endPointScreen:[Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->setScreenStartPoint(ILandroid/graphics/PointF;)V

    .line 19
    iget-object p0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->endPointScreen:[Landroid/graphics/PointF;

    aget-object p0, p0, v2

    invoke-virtual {v0, p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->setScreenEndPoint(ILandroid/graphics/PointF;)V

    .line 20
    invoke-virtual {v0, p3, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->setScreenStartPoint(ILandroid/graphics/PointF;)V

    .line 21
    invoke-virtual {v0, p3, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->setScreenEndPoint(ILandroid/graphics/PointF;)V

    return-object v0
.end method


# virtual methods
.method public movePoint(ILandroid/graphics/PointF;)V
    .locals 6

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->setScreenEndPoint(ILandroid/graphics/PointF;)V

    .line 28
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 32
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isAspectLocked()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 34
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    invoke-static {p2, v2}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->findScale([Landroid/graphics/PointF;[Landroid/graphics/PointF;)D

    move-result-wide v2

    double-to-float p2, v2

    .line 36
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 37
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 39
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object p2, p2, v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object v2, v2, v0

    invoke-static {p2, v2}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object p2, p2, v1

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v0, v4, v0

    invoke-static {p2, v0}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 41
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isRotateLocked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float p2, v2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 45
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object p2, p2, v1

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 47
    :cond_1
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object p2, p2, v1

    iget p2, p2, Landroid/graphics/PointF;->x:F

    neg-float p2, p2

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 49
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object p2, p2, v0

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v2

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    div-float/2addr p2, v2

    .line 50
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v0, v3, v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    div-float/2addr v2, v0

    .line 52
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 54
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object p2, p2, v1

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void
.end method

.method public newPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 0

    return-object p0
.end method

.method public removePoint(Landroid/graphics/Matrix;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 0

    .line 65
    invoke-direct {p0, p2, p1}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->convertToDrag(ILandroid/graphics/Matrix;)Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;

    move-result-object p1

    return-object p1
.end method
