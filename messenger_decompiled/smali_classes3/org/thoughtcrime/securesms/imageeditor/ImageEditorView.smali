.class public final Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;
.super Landroid/widget/FrameLayout;
.source "ImageEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;,
        Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;,
        Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;,
        Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DrawingChangedListener;
    }
.end annotation


# instance fields
.field private cap:Landroid/graphics/Paint$Cap;

.field private color:I

.field private doubleTap:Landroidx/core/view/GestureDetectorCompat;

.field private drawingChangedListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DrawingChangedListener;

.field private editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

.field private editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

.field private mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

.field private model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

.field private moreThanOnePointerUsedInSession:Z

.field private rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

.field private final rendererInvalidate:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

.field private final rendererReady:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;

.field private final screen:Landroid/graphics/RectF;

.field private tapListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

.field private thickness:F

.field private undoRedoStackListener:Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;

.field private final viewMatrix:Landroid/graphics/Matrix;

.field private final viewPort:Landroid/graphics/RectF;

.field private final visibleViewPort:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$jm61onDgUn2Sveub5D3iQYmi3pg(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->zoomToFitText(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sLuLbRgQ2ErcLHiPdHuY7gR47oE(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->onUndoRedoAvailabilityChanged(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->MoveAndResize:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    const/high16 p1, -0x1000000

    .line 48
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->color:I

    const p1, 0x3ca3d70a    # 0.02f

    .line 51
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->thickness:F

    .line 53
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->cap:Landroid/graphics/Paint$Cap;

    .line 66
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    .line 67
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->newFullBounds()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewPort:Landroid/graphics/RectF;

    .line 68
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->newFullBounds()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->visibleViewPort:Landroid/graphics/RectF;

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->screen:Landroid/graphics/RectF;

    .line 158
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererReady:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;

    .line 166
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererInvalidate:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    .line 80
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->MoveAndResize:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    const/high16 p1, -0x1000000

    .line 48
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->color:I

    const p1, 0x3ca3d70a    # 0.02f

    .line 51
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->thickness:F

    .line 53
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->cap:Landroid/graphics/Paint$Cap;

    .line 66
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    .line 67
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->newFullBounds()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewPort:Landroid/graphics/RectF;

    .line 68
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->newFullBounds()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->visibleViewPort:Landroid/graphics/RectF;

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->screen:Landroid/graphics/RectF;

    .line 158
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererReady:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;

    .line 166
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererInvalidate:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    .line 85
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->MoveAndResize:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    const/high16 p1, -0x1000000

    .line 48
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->color:I

    const p1, 0x3ca3d70a    # 0.02f

    .line 51
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->thickness:F

    .line 53
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->cap:Landroid/graphics/Paint$Cap;

    .line 66
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    .line 67
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->newFullBounds()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewPort:Landroid/graphics/RectF;

    .line 68
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->newFullBounds()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->visibleViewPort:Landroid/graphics/RectF;

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->screen:Landroid/graphics/RectF;

    .line 158
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererReady:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;

    .line 166
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererInvalidate:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    .line 90
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->init()V

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->tapListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    return-object p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    return-object p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->allowTaps()Z

    move-result p0

    return p0
.end method

.method private allowTaps()Z
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isCropping()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->Draw:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->Blur:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createAHiddenTextEntryField()Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;
    .locals 2

    .line 105
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->clearFocus()V

    .line 108
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setOnEndEdit(Ljava/lang/Runnable;)V

    .line 109
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setOnEditOrSelectionChange(Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText$OnEditOrSelectionChange;)V

    return-object v0
.end method

.method private dragDropRelease()V
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->dragDropRelease()V

    .line 369
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->drawingChangedListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DrawingChangedListener;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DrawingChangedListener;->onDrawingChanged()V

    :cond_0
    return-void
.end method

.method private static getHistoricalPoint(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;
    .locals 2

    .line 383
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v1

    .line 384
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private static getPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x0

    .line 375
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getPoint(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static getPoint(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;
    .locals 2

    .line 379
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setWillNotDraw(Z)V

    .line 95
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;-><init>()V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setModel(Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;)V

    .line 97
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->createAHiddenTextEntryField()Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    .line 99
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->doubleTap:Landroidx/core/view/GestureDetectorCompat;

    .line 101
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private onUndoRedoAvailabilityChanged(ZZ)V
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->undoRedoStackListener:Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;

    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;->onAvailabilityChanged(ZZ)V

    :cond_0
    return-void
.end method

.method private startADrawingSession(Landroid/graphics/PointF;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 5

    .line 322
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->color:I

    iget v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->thickness:F

    sget-object v3, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->cap:Landroid/graphics/Paint$Cap;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findCropRelativeToRoot()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;-><init>(IFLandroid/graphics/Paint$Cap;Landroid/graphics/RectF;)V

    .line 323
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    sget-object v3, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->Blur:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    if-ne v2, v3, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;I)V

    .line 324
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->addElementCentered(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;F)V

    .line 326
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElementInverseMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 328
    invoke-static {v1, v0, v2, p1}, Lorg/thoughtcrime/securesms/imageeditor/DrawingSession;->start(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    return-object p1
.end method

.method private startAMoveAndResizeSession(Landroid/graphics/Matrix;Landroid/graphics/PointF;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 335
    :cond_0
    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object v1

    instance-of v1, v1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer;

    if-eqz v1, :cond_3

    .line 336
    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer;

    .line 338
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object p3

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer;->getElementToControl()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findById(Ljava/util/UUID;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v0

    .line 342
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p3, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElementInverseMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 344
    invoke-interface {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer;->getControlPoint()Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    move-result-object p1

    invoke-static {p3, v1, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ThumbDragEditSession;->startDrag(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;Landroid/graphics/PointF;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 350
    :cond_3
    invoke-static {p3, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;->startDrag(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Lorg/thoughtcrime/securesms/imageeditor/ElementDragEditSession;

    move-result-object p1

    return-object p1
.end method

.method private startEdit(Landroid/graphics/Matrix;Landroid/graphics/PointF;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;
    .locals 2

    .line 314
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->Draw:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->Blur:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->startAMoveAndResizeSession(Landroid/graphics/Matrix;Landroid/graphics/PointF;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    return-object p1

    .line 315
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->startADrawingSession(Landroid/graphics/PointF;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    return-object p1
.end method

.method private updateViewMatrix()V
    .locals 4

    .line 175
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->screen:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 176
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->screen:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 178
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewPort:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->screen:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 181
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v0, v0, v2

    div-float/2addr v1, v0

    .line 185
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->newFullBounds()Landroid/graphics/RectF;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 187
    iget v2, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 188
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 190
    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v2, v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 191
    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v2, v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 194
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->visibleViewPort:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 196
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->visibleViewPort:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->screen:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 198
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->visibleViewPort:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->setVisibleViewPort(Landroid/graphics/RectF;)V

    .line 200
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->invalidate()V

    return-void
.end method

.method private zoomToFitText(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->zoomToTextElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V

    return-void
.end method


# virtual methods
.method public deleteElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 405
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->pushUndoPoint()V

    .line 406
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->delete(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 407
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->invalidate()V

    :cond_0
    return-void
.end method

.method public doneTextEditing()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->zoomOut()V

    .line 134
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->getCurrentTextEntity()Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setCurrentTextEditorElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 136
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->hideKeyboard()V

    .line 137
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->tapListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;->onEntityDown(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    :cond_0
    return-void
.end method

.method public getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    return-object v0
.end method

.method public isTextEditing()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->getCurrentTextEntity()Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$init$0$org-thoughtcrime-securesms-imageeditor-ImageEditorView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 101
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->doubleTap:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$1$org-thoughtcrime-securesms-imageeditor-ImageEditorView(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 145
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    if-eq v0, p1, :cond_1

    .line 146
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererReady:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererInvalidate:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;-><init>(Landroid/content/Context;Landroid/graphics/Canvas;Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    .line 148
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->save()V

    .line 150
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->initial(Landroid/graphics/Matrix;)V

    .line 152
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->getCurrentTextEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->draw(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->restore()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->restore()V

    .line 155
    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 171
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->updateViewMatrix()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v3, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-ge v0, v4, :cond_b

    .line 280
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->commit()V

    .line 281
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->pushUndoPoint()V

    .line 282
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->dragDropRelease()V

    .line 284
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    invoke-interface {v2}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->getSelected()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v2

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElementInverseMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->removePoint(Landroid/graphics/Matrix;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    goto :goto_0

    .line 288
    :cond_1
    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    :goto_0
    return v3

    .line 260
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 261
    iput-boolean v3, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->moreThanOnePointerUsedInSession:Z

    .line 262
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->commit()V

    .line 263
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->pushUndoPoint()V

    .line 265
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    invoke-interface {v2}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->getSelected()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v2

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElementInverseMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-static {p1, v2}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getPoint(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->newPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;I)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    goto :goto_1

    .line 269
    :cond_3
    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    .line 271
    :goto_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    if-nez p1, :cond_4

    .line 272
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->dragDropRelease()V

    :cond_4
    return v3

    .line 240
    :cond_5
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    if-eqz v0, :cond_b

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_7

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    .line 246
    iget-object v6, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    invoke-static {p1, v5, v4}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getHistoricalPoint(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->movePoint(ILandroid/graphics/PointF;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    if-ge v2, v1, :cond_8

    .line 251
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    invoke-static {p1, v2}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getPoint(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->movePoint(ILandroid/graphics/PointF;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 253
    :cond_8
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->getSelected()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->moving(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 254
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->invalidate()V

    return v3

    .line 295
    :cond_9
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    if-eqz v0, :cond_a

    .line 296
    invoke-interface {v0}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->commit()V

    .line 297
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->dragDropRelease()V

    .line 299
    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    .line 300
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->moreThanOnePointerUsedInSession:Z

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->postEdit(Z)V

    .line 301
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->invalidate()V

    return v3

    .line 304
    :cond_a
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->moreThanOnePointerUsedInSession:Z

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->postEdit(Z)V

    .line 310
    :cond_b
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 221
    :cond_c
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 222
    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 223
    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->viewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p1, v5, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElementAtPoint(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v4

    .line 225
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->moreThanOnePointerUsedInSession:Z

    .line 226
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->pushUndoPoint()V

    .line 227
    invoke-direct {p0, v0, p1, v4}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->startEdit(Landroid/graphics/Matrix;Landroid/graphics/PointF;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    .line 229
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->tapListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->allowTaps()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 230
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editSession:Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    if-eqz p1, :cond_d

    .line 231
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->tapListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->getSelected()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;->onEntityDown(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    goto :goto_6

    .line 233
    :cond_d
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->tapListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    invoke-interface {p1, v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;->onEntityDown(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    :cond_e
    :goto_6
    return v3
.end method

.method public setDrawingBrushColor(I)V
    .locals 0

    .line 364
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->color:I

    return-void
.end method

.method public setDrawingChangedListener(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DrawingChangedListener;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->drawingChangedListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DrawingChangedListener;

    return-void
.end method

.method public setMode(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->mode:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    return-void
.end method

.method public setModel(Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->setInvalidate(Ljava/lang/Runnable;)V

    .line 207
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->setUndoRedoStackListener(Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;)V

    .line 209
    :cond_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    .line 210
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->setInvalidate(Ljava/lang/Runnable;)V

    .line 211
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->setUndoRedoStackListener(Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;)V

    .line 212
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->model:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->visibleViewPort:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->setVisibleViewPort(Landroid/graphics/RectF;)V

    .line 213
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTapListener(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->tapListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    return-void
.end method

.method public setUndoRedoStackListener(Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->undoRedoStackListener:Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;

    return-void
.end method

.method public startDrawing(FLandroid/graphics/Paint$Cap;Z)V
    .locals 0

    .line 358
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->thickness:F

    .line 359
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->cap:Landroid/graphics/Paint$Cap;

    if-eqz p3, :cond_0

    .line 360
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->Blur:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->Draw:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setMode(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;)V

    return-void
.end method

.method public startTextEditing(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;ZZ)V
    .locals 1

    .line 114
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object v0

    instance-of v0, v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setIncognitoKeyboardEnabled(Z)V

    .line 116
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setCurrentTextEditorElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    if-eqz p3, :cond_0

    .line 118
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->selectAll()V

    .line 120
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->editText:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->requestFocus()Z

    :cond_1
    return-void
.end method
