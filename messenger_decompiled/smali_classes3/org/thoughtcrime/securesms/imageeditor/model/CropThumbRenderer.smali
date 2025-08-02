.class Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;
.super Ljava/lang/Object;
.source "CropThumbRenderer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/Renderer;
.implements Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final centreOnScreen:[F

.field private final controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

.field private final matrix:Landroid/graphics/Matrix;

.field private size:I

.field private final toControl:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;Ljava/util/UUID;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 24
    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->centreOnScreen:[F

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->matrix:Landroid/graphics/Matrix;

    .line 29
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    .line 30
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->toControl:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getControlPoint()Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0
.end method

.method public getElementToControl()Ljava/util/UUID;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->toControl:Ljava/util/UUID;

    return-object v0
.end method

.method public hitTest(FF)Z
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 53
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->matrix:Landroid/graphics/Matrix;

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p1, v0, v3

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 55
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->centreOnScreen:[F

    aget v0, p2, v3

    aget v2, v1, v3

    sub-float/2addr v0, v2

    .line 56
    aget p2, p2, p1

    aget v1, v1, p1

    sub-float/2addr p2, v1

    mul-float v0, v0, v0

    mul-float p2, p2, p2

    add-float/2addr v0, p2

    .line 58
    iget p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->size:I

    mul-int p2, p2, p2

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 3

    .line 45
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->centreOnScreen:[F

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->CENTRE:[F

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->mapPoints([F[F)V

    .line 46
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->copyTo(Landroid/graphics/Matrix;)V

    .line 47
    iget-object p1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070069

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->size:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->controlPoint:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;->toControl:Ljava/util/UUID;

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/ParcelUtils;->writeUUID(Landroid/os/Parcel;Ljava/util/UUID;)V

    return-void
.end method
