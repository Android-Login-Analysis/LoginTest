.class abstract Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;
.super Ljava/lang/Object;
.source "ElementEditSession.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/EditSession;


# instance fields
.field final endPointElement:[Landroid/graphics/PointF;

.field final endPointScreen:[Landroid/graphics/PointF;

.field private final inverseMatrix:Landroid/graphics/Matrix;

.field final selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field final startPointElement:[Landroid/graphics/PointF;

.field final startPointScreen:[Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->newTwoPointArray()[Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->startPointElement:[Landroid/graphics/PointF;

    .line 16
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->newTwoPointArray()[Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->endPointElement:[Landroid/graphics/PointF;

    .line 17
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->newTwoPointArray()[Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->startPointScreen:[Landroid/graphics/PointF;

    .line 18
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->newTwoPointArray()[Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->endPointScreen:[Landroid/graphics/PointF;

    .line 21
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 22
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->inverseMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private static mapPoint(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 64
    iget v2, p2, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget p2, p2, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aput p2, v1, v2

    new-array p2, v0, [F

    .line 66
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    aget p1, p2, v3

    aget p2, p2, v2

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private static newTwoPointArray()[Landroid/graphics/PointF;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 51
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public commit()V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->commitEditorMatrix()V

    return-void
.end method

.method public getSelected()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->selected:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object v0
.end method

.method public abstract movePoint(ILandroid/graphics/PointF;)V
.end method

.method setScreenEndPoint(ILandroid/graphics/PointF;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->endPointScreen:[Landroid/graphics/PointF;

    aput-object p2, v0, p1

    .line 32
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->endPointElement:[Landroid/graphics/PointF;

    aget-object p1, v0, p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->inverseMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v0, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->mapPoint(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    return-void
.end method

.method setScreenStartPoint(ILandroid/graphics/PointF;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->startPointScreen:[Landroid/graphics/PointF;

    aput-object p2, v0, p1

    .line 27
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->startPointElement:[Landroid/graphics/PointF;

    aget-object p1, v0, p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->inverseMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v0, p2}, Lorg/thoughtcrime/securesms/imageeditor/ElementEditSession;->mapPoint(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    return-void
.end method
