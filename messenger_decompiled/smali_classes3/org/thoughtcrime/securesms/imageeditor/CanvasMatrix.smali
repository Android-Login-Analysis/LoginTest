.class public final Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;
.super Ljava/lang/Object;
.source "CanvasMatrix.java"


# static fields
.field private static final STACK_HEIGHT_LIMIT:I = 0x10


# instance fields
.field private final canvas:Landroid/graphics/Canvas;

.field private final canvasMatrix:Landroid/graphics/Matrix;

.field private final stack:[Landroid/graphics/Matrix;

.field private stackHeight:I

.field private final temp:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/graphics/Canvas;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvasMatrix:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->temp:Landroid/graphics/Matrix;

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/Matrix;

    .line 25
    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->stack:[Landroid/graphics/Matrix;

    .line 29
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->stack:[Landroid/graphics/Matrix;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 31
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public concat(Landroid/graphics/Matrix;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 37
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public copyTo(Landroid/graphics/Matrix;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method getCurrent(Landroid/graphics/Matrix;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public initial(Landroid/graphics/Matrix;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public mapPoints([F[F)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void
.end method

.method mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method restore()V
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 50
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->stack:[Landroid/graphics/Matrix;

    iget v2, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->stackHeight:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->stackHeight:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method save()V
    .locals 3

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 42
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->stackHeight:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->stack:[Landroid/graphics/Matrix;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->stackHeight:I

    aget-object v0, v1, v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not enough space on stack"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public setToIdentity()V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->canvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->temp:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->temp:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method
