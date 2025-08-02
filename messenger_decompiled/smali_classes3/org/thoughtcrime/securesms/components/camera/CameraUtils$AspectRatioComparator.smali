.class Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AspectRatioComparator;
.super Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AreaComparator;
.source "CameraUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AspectRatioComparator"
.end annotation


# instance fields
.field private final target:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AreaComparator;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraUtils$1;)V

    .line 94
    iput-wide p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AspectRatioComparator;->target:D

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 8

    .line 99
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AspectRatioComparator;->target:D

    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 100
    iget-wide v2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AspectRatioComparator;->target:D

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 p1, 0x1

    return p1

    .line 103
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AreaComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 91
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AspectRatioComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p1

    return p1
.end method
