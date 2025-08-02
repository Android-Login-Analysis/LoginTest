.class public Lorg/thoughtcrime/securesms/components/camera/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AreaComparator;,
        Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AspectRatioComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraDisplayOrientation(Landroid/app/Activity;Landroid/hardware/Camera$CameraInfo;)I
    .locals 3

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 66
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eq v0, p0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    .line 77
    :cond_3
    :goto_0
    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, p0, :cond_4

    .line 78
    iget p0, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, v1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0

    .line 80
    :cond_4
    iget p0, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, v1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public static getPreferredPreviewSize(IIILandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 16

    move/from16 v0, p0

    .line 29
    rem-int/lit16 v1, v0, 0xb4

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    move/from16 v3, p2

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    :goto_0
    if-ne v1, v2, :cond_1

    move/from16 v1, p1

    goto :goto_1

    :cond_1
    move/from16 v1, p2

    :goto_1
    int-to-double v4, v3

    int-to-double v6, v1

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 33
    sget-object v2, Lorg/thoughtcrime/securesms/components/camera/CameraUtils;->TAG:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    .line 34
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v6, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x2

    aput-object v0, v6, v9

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x3

    aput-object v0, v6, v10

    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v0

    const/4 v0, 0x5

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v6, v0

    const-string v0, "getPreferredPreviewSize(%d, %d, %d) -> target %dx%d, AR %.02f"

    .line 33
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 38
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 39
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 42
    sget-object v13, Lorg/thoughtcrime/securesms/components/camera/CameraUtils;->TAG:Ljava/lang/String;

    new-array v14, v10, [Ljava/lang/Object;

    iget v15, v12, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v7

    iget v15, v12, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v8

    iget v15, v12, Landroid/hardware/Camera$Size;->width:I

    int-to-float v15, v15

    iget v7, v12, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float/2addr v15, v7

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v14, v9

    const-string v7, "  %dx%d (%.02f)"

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget v7, v12, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v7

    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    cmpl-double v7, v14, v8

    if-nez v7, :cond_2

    iget v7, v12, Landroid/hardware/Camera$Size;->height:I

    if-lt v7, v1, :cond_2

    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    if-lt v7, v3, :cond_2

    .line 45
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "    (ideal ratio)"

    .line 46
    invoke-static {v13, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 47
    :cond_2
    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    if-lt v7, v3, :cond_3

    iget v7, v12, Landroid/hardware/Camera$Size;->height:I

    if-lt v7, v1, :cond_3

    .line 48
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "    (good size, suboptimal ratio)"

    .line 49
    invoke-static {v13, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto :goto_2

    .line 53
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AreaComparator;

    invoke-direct {v0, v3}, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AreaComparator;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraUtils$1;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    return-object v0

    .line 54
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AspectRatioComparator;

    invoke-direct {v0, v4, v5}, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AspectRatioComparator;-><init>(D)V

    invoke-static {v6, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    return-object v0

    .line 55
    :cond_6
    new-instance v1, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AreaComparator;

    invoke-direct {v1, v3}, Lorg/thoughtcrime/securesms/components/camera/CameraUtils$AreaComparator;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraUtils$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    return-object v0
.end method
