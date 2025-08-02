.class Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer$1;
.super Ljava/lang/Object;
.source "CropThumbRenderer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer$1;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;
    .locals 3

    .line 69
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;

    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->values()[Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ParcelUtils;->readUUID(Landroid/os/Parcel;)Ljava/util/UUID;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;Ljava/util/UUID;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer$1;->newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;
    .locals 0

    .line 74
    new-array p1, p1, [Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;

    return-object p1
.end method
