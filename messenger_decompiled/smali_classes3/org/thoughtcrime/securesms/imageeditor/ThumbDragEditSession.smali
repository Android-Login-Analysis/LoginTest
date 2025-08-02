.class Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;
.super Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;
.source "ThumbDragEditSession.java"


# instance fields
.field private final controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;Landroid/graphics/Matrix;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p3}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)V

    .line 18
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-void
.end method

.method private scale(Landroid/graphics/Matrix;ZFFLorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)V
    .locals 3

    .line 58
    invoke-virtual {p5}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getX()F

    move-result v0

    .line 59
    invoke-virtual {p5}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getY()F

    move-result p5

    neg-float v1, v0

    neg-float v2, p5

    .line 60
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz p2, :cond_0

    .line 62
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 63
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 67
    :goto_0
    invoke-virtual {p1, v0, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method static startDrag(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;Landroid/graphics/PointF;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;

    invoke-direct {v0, p0, p2, p1}, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;Landroid/graphics/Matrix;)V

    const/4 p0, 0x0

    .line 25
    invoke-virtual {v0, p0, p3}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->setScreenStartPoint(ILandroid/graphics/PointF;)V

    .line 26
    invoke-virtual {v0, p0, p3}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->setScreenEndPoint(ILandroid/graphics/PointF;)V

    return-object v0
.end method


# virtual methods
.method public movePoint(ILandroid/graphics/PointF;)V
    .locals 6

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->setScreenEndPoint(ILandroid/graphics/PointF;)V

    .line 34
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 38
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->opposite()Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getX()F

    move-result p1

    .line 39
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->opposite()Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getY()F

    move-result p2

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->endPointElement:[Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    .line 42
    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 44
    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getX()F

    move-result v4

    add-float/2addr v4, v0

    .line 45
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getY()F

    move-result v0

    add-float/2addr v0, v3

    .line 47
    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v3

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isAspectLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->isCenter()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 51
    :goto_0
    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v5}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->isVerticalCenter()Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    sub-float/2addr v4, p1

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v5}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getX()F

    move-result v5

    sub-float/2addr v5, p1

    div-float/2addr v4, v5

    .line 52
    :goto_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->isHorizontalCenter()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    sub-float/2addr v0, p2

    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getY()F

    move-result p1

    sub-float/2addr p1, p2

    div-float/2addr v0, p1

    move p1, v0

    .line 54
    :goto_2
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->opposite()Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    move-result-object v5

    move-object v0, p0

    move v3, v4

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->scale(Landroid/graphics/Matrix;ZFFLorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)V

    return-void
.end method

.method public newPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public removePoint(Landroid/graphics/Matrix;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
