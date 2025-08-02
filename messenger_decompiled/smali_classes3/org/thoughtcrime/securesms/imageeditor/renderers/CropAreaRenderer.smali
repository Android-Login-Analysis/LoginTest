.class public final Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;
.super Ljava/lang/Object;
.source "CropAreaRenderer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/Renderer;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final color:I

.field private final cropClipPath:Landroid/graphics/Path;

.field private final dst:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;

.field private final renderCenterThumbs:Z

.field private final screenClipPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->cropClipPath:Landroid/graphics/Path;

    .line 33
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->screenClipPath:Landroid/graphics/Path;

    .line 35
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    .line 36
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    .line 95
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->color:I

    .line 96
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->renderCenterThumbs:Z

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    const/high16 p1, -0x3b860000    # -1000.0f

    .line 99
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 100
    invoke-virtual {v0, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 104
    invoke-virtual {v1}, Landroid/graphics/Path;->toggleInverseFillType()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hitTest(FF)Z
    .locals 0

    .line 109
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->contains(FF)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 12

    .line 40
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->save()V

    .line 42
    iget-object v6, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    .line 43
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->cropClipPath:Landroid/graphics/Path;

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 46
    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->color:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 48
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    sget-object v3, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v3}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const v1, 0x7f07006a

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f070069

    .line 51
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 53
    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    const v5, 0x7f060050

    invoke-static {v0, v5, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->setToIdentity()V

    .line 56
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->screenClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 57
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->screenClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 58
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->screenClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->screenClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->screenClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->screenClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 62
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->screenClipPath:Landroid/graphics/Path;

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    int-to-float v7, v3

    sub-float/2addr v0, v7

    int-to-float v2, v1

    add-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v0, v3

    .line 66
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    sub-float/2addr v0, v7

    add-float/2addr v0, v2

    div-float v9, v0, v3

    neg-int v0, v1

    int-to-float v10, v0

    .line 68
    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    move-object v0, v6

    move v1, v10

    move v2, v10

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 70
    invoke-virtual {v6, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->renderCenterThumbs:Z

    if-eqz v0, :cond_0

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    move-object v0, v6

    move v1, v10

    move v2, v10

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    :cond_0
    invoke-virtual {v6, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    move-object v0, v6

    move v1, v10

    move v2, v10

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {v6, v8, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->renderCenterThumbs:Z

    if-eqz v0, :cond_1

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    move-object v0, v6

    move v1, v10

    move v2, v10

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    :cond_1
    invoke-virtual {v6, v8, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    move-object v0, v6

    move v1, v10

    move v2, v10

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    neg-float v9, v9

    .line 82
    invoke-virtual {v6, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->renderCenterThumbs:Z

    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    move-object v0, v6

    move v1, v10

    move v2, v10

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    :cond_2
    invoke-virtual {v6, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    move-object v0, v6

    move v1, v10

    move v2, v10

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    neg-float v0, v8

    .line 88
    invoke-virtual {v6, v0, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->renderCenterThumbs:Z

    if-eqz v0, :cond_3

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->paint:Landroid/graphics/Paint;

    move-object v0, v6

    move v1, v10

    move v2, v10

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    :cond_3
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->restore()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 127
    iget p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->color:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;->renderCenterThumbs:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
