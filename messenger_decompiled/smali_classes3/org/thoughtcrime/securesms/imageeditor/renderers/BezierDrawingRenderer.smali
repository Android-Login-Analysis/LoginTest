.class public final Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;
.super Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;
.source "BezierDrawingRenderer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bezierLine:Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

.field private final cap:Landroid/graphics/Paint$Cap;

.field private final clipRect:Landroid/graphics/RectF;

.field private color:I

.field private final paint:Landroid/graphics/Paint;

.field private thickness:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IFLandroid/graphics/Paint$Cap;Landroid/graphics/RectF;)V
    .locals 6

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v5, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    move-object v5, p4

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;-><init>(IFLandroid/graphics/Paint$Cap;Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;Landroid/graphics/RectF;)V

    return-void
.end method

.method private constructor <init>(IFLandroid/graphics/Paint$Cap;Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;Landroid/graphics/RectF;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    .line 31
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->color:I

    .line 32
    iput p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->thickness:F

    .line 33
    iput-object p3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->cap:Landroid/graphics/Paint$Cap;

    .line 34
    iput-object p5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->clipRect:Landroid/graphics/RectF;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p4, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    invoke-direct {p4}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;-><init>()V

    :goto_0
    iput-object p4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->bezierLine:Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    .line 37
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->updatePaint()V

    return-void
.end method

.method synthetic constructor <init>(IFLandroid/graphics/Paint$Cap;Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;Landroid/graphics/RectF;Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer$1;)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p5}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;-><init>(IFLandroid/graphics/Paint$Cap;Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;Landroid/graphics/RectF;)V

    return-void
.end method

.method private updatePaint()V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->thickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->cap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public addNewPoint(Landroid/graphics/PointF;)V
    .locals 4

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->cap:Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-eq v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->bezierLine:Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->thickness:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->addPointFiltered(FFF)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->bezierLine:Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->addPoint(FF)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->invalidate()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->color:I

    return v0
.end method

.method public hitTest(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 4

    .line 91
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;->render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    .line 92
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 94
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->clipRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 99
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->getAlpha(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->getMaskPaint()Landroid/graphics/Paint;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->getMaskPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->bezierLine:Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 105
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    iget-object p1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 51
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->color:I

    if-eq v0, p1, :cond_0

    .line 52
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->color:I

    .line 53
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->updatePaint()V

    .line 54
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFirstPoint(Landroid/graphics/PointF;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->bezierLine:Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->reset()V

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->bezierLine:Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->addPoint(FF)V

    .line 77
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->invalidate()V

    return-void
.end method

.method public setThickness(F)V
    .locals 1

    .line 59
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->thickness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 60
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->thickness:F

    .line 61
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->updatePaint()V

    .line 62
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->invalidate()V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 139
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->thickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 141
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->cap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->bezierLine:Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
