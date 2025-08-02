.class final Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;
.super Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;
.source "ElementDragEditSession.java"


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static startDrag(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)V

    const/4 p0, 0x0

    .line 19
    invoke-virtual {v0, p0, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->setScreenStartPoint(ILandroid/graphics/PointF;)V

    .line 20
    invoke-virtual {v0, p0, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->setScreenEndPoint(ILandroid/graphics/PointF;)V

    return-object v0
.end method


# virtual methods
.method public movePoint(ILandroid/graphics/PointF;)V
    .locals 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->setScreenEndPoint(ILandroid/graphics/PointF;)V

    .line 29
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->endPointElement:[Landroid/graphics/PointF;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object v0, v2, v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    .line 30
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public newPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 0

    .line 35
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;->startScale(Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;Landroid/graphics/Matrix;Landroid/graphics/PointF;I)Lorg/thoughtcrime/securesms/imageeditor/ElementScaleEditSession;

    move-result-object p1

    return-object p1
.end method

.method public removePoint(Landroid/graphics/Matrix;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 0

    return-object p0
.end method
