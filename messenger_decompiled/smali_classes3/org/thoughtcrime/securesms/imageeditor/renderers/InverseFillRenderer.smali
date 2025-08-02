.class public final Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;
.super Ljava/lang/Object;
.source "InverseFillRenderer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/Renderer;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final color:I

.field private final path:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;->path:Landroid/graphics/Path;

    .line 32
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;->color:I

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    const/high16 p1, -0x3b860000    # -1000.0f

    .line 34
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 36
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 37
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;-><init>(Landroid/os/Parcel;)V

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

    .line 47
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->contains(FF)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 2

    .line 25
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 26
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 27
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 28
    iget-object p1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 69
    iget p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;->color:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
