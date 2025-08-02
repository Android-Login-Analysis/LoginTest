.class Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;
.super Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;
.source "DrawingSession.java"


# instance fields
.field private final renderer:Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)V

    .line 19
    iput-object p3, p0, Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;->renderer:Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;

    return-void
.end method

.method public static start(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 1

    .line 23
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;

    invoke-direct {v0, p0, p2, p1}, Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;)V

    const/4 p0, 0x0

    .line 24
    invoke-virtual {v0, p0, p3}, Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;->setScreenStartPoint(ILandroid/graphics/PointF;)V

    .line 25
    iget-object p2, v0, Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->setFirstPoint(Landroid/graphics/PointF;)V

    return-object v0
.end method


# virtual methods
.method public movePoint(ILandroid/graphics/PointF;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;->setScreenEndPoint(ILandroid/graphics/PointF;)V

    .line 33
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;->renderer:Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;->endPointElement:[Landroid/graphics/PointF;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->addNewPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method public newPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 0

    return-object p0
.end method

.method public removePoint(Landroid/graphics/Matrix;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 0

    return-object p0
.end method
