.class public final Lorg/thoughtcrime/securesms/imageeditor/Bounds;
.super Ljava/lang/Object;
.source "Bounds.java"


# static fields
.field public static final BOTTOM:F = 1000.0f

.field public static final CENTRE:[F

.field public static final CENTRE_X:F = 0.0f

.field public static final CENTRE_Y:F = 0.0f

.field public static final FULL_BOUNDS:Landroid/graphics/RectF;

.field public static final LEFT:F = -1000.0f

.field private static final POINTS:[F

.field public static final RIGHT:F = 1000.0f

.field public static final TOP:F = -1000.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->CENTRE:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 27
    fill-array-data v0, :array_1

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->POINTS:[F

    .line 36
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->newFullBounds()Landroid/graphics/RectF;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x3b860000    # -1000.0f
        -0x3b860000    # -1000.0f
        0x447a0000    # 1000.0f
        -0x3b860000    # -1000.0f
        0x447a0000    # 1000.0f
        0x447a0000    # 1000.0f
        -0x3b860000    # -1000.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allWithinBounds([F)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 63
    aget v4, p0, v2

    add-int/2addr v2, v3

    .line 64
    aget v2, p0, v2

    .line 66
    invoke-static {v4, v2}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static boundsRemainInBounds(Landroid/graphics/Matrix;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 52
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->POINTS:[F

    array-length v1, v0

    new-array v1, v1, [F

    .line 54
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 56
    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->allWithinBounds([F)Z

    move-result p0

    return p0
.end method

.method public static contains(FF)Z
    .locals 2

    .line 39
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_0

    iget p0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static newFullBounds()Landroid/graphics/RectF;
    .locals 3

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x3b860000    # -1000.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method
