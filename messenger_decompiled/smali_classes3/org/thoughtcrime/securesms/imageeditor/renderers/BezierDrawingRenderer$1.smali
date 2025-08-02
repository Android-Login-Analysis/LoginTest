.class Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer$1;
.super Ljava/lang/Object;
.source "BezierDrawingRenderer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer$1;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;
    .locals 7

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 119
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v3, v0, v3

    .line 120
    const-class v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    .line 121
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/graphics/RectF;

    .line 123
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;-><init>(IFLandroid/graphics/Paint$Cap;Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;Landroid/graphics/RectF;Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer$1;)V

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer$1;->newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;
    .locals 0

    .line 128
    new-array p1, p1, [Lorg/thoughtcrime/securesms/imageeditor/renderers/BezierDrawingRenderer;

    return-object p1
.end method
