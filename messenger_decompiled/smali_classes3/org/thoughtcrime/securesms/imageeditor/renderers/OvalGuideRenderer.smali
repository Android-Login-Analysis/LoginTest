.class public final Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;
.super Ljava/lang/Object;
.source "OvalGuideRenderer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/Renderer;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dst:Landroid/graphics/RectF;

.field private final ovalGuideColor:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->dst:Landroid/graphics/RectF;

    .line 53
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->ovalGuideColor:I

    .line 55
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->paint:Landroid/graphics/Paint;

    .line 56
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

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

    .line 62
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->contains(FF)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 7

    .line 33
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->save()V

    .line 35
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    .line 36
    iget-object v1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->context:Landroid/content/Context;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070351

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    .line 40
    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->ovalGuideColor:I

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->dst:Landroid/graphics/RectF;

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 44
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->dst:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->dst:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v3

    iget-object v6, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->dst:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v3

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 46
    iget-object v1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->setToIdentity()V

    .line 47
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->dst:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->restore()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 84
    iget p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;->ovalGuideColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
