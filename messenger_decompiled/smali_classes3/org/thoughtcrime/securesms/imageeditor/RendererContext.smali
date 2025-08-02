.class public final Lorg/thoughtcrime/securesms/imageeditor/RendererContext;
.super Ljava/lang/Object;
.source "RendererContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;,
        Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;
    }
.end annotation


# instance fields
.field private blockingLoad:Z

.field public final canvas:Landroid/graphics/Canvas;

.field public final canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;

.field private fade:F

.field public final invalidate:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

.field private isEditing:Z

.field private maskPaint:Landroid/graphics/Paint;

.field public final rendererReady:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Canvas;Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    iput v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->fade:F

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->isEditing:Z

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->children:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    .line 53
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;-><init>(Landroid/graphics/Canvas;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    .line 54
    iput-object p3, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->rendererReady:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;

    .line 55
    iput-object p4, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->invalidate:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    return-void
.end method


# virtual methods
.method public getAlpha(I)I
    .locals 1

    .line 91
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->fade:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->children:Ljava/util/List;

    return-object v0
.end method

.method public getCurrent(Landroid/graphics/Matrix;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->getCurrent(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getMaskPaint()Landroid/graphics/Paint;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->maskPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isBlockingLoad()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->blockingLoad:Z

    return v0
.end method

.method public isEditing()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->isEditing:Z

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method public restore()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->restore()V

    return-void
.end method

.method public save()V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->save()V

    return-void
.end method

.method public setBlockingLoad(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->blockingLoad:Z

    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->children:Ljava/util/List;

    return-void
.end method

.method public setFade(F)V
    .locals 0

    .line 87
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->fade:F

    return-void
.end method

.method public setIsEditing(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->isEditing:Z

    return-void
.end method

.method public setMaskPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->maskPaint:Landroid/graphics/Paint;

    return-void
.end method
