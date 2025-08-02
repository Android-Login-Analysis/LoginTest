.class public final Lorg/thoughtcrime/securesms/imageeditor/model/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readMatrix(Landroid/os/Parcel;)Landroid/graphics/Matrix;
    .locals 1

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 29
    invoke-static {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/ParcelUtils;->readMatrix(Landroid/graphics/Matrix;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static readMatrix(Landroid/graphics/Matrix;Landroid/os/Parcel;)V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 24
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public static readRectF(Landroid/os/Parcel;)Landroid/graphics/RectF;
    .locals 4

    .line 41
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 42
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 43
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    .line 45
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method static readUUID(Landroid/os/Parcel;)Ljava/util/UUID;
    .locals 5

    .line 49
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public static writeMatrix(Landroid/os/Parcel;Landroid/graphics/Matrix;)V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method

.method public static writeRect(Landroid/os/Parcel;Landroid/graphics/RectF;)V
    .locals 1

    .line 34
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 36
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 37
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method static writeUUID(Landroid/os/Parcel;Ljava/util/UUID;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
