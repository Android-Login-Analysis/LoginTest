.class Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer$1;
.super Ljava/lang/Object;
.source "CropAreaRenderer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer$1;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;
    .locals 3

    .line 115
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;-><init>(IZ)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer$1;->newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;
    .locals 0

    .line 121
    new-array p1, p1, [Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;

    return-object p1
.end method
