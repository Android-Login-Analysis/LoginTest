.class final Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;
.super Ljava/lang/Object;
.source "AutomaticControlPointBezierLine.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;",
            ">;"
        }
    .end annotation
.end field

.field private static final INITIAL_CAPACITY:I = 0x100


# instance fields
.field private a:[F

.field private b:[F

.field private c:[F

.field private count:I

.field private p1x:[F

.field private p1y:[F

.field private p2x:[F

.field private p2y:[F

.field private final path:Landroid/graphics/Path;

.field private r:[F

.field private x:[F

.field private y:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, v0, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;-><init>([F[FI)V

    return-void
.end method

.method private constructor <init>([F[FI)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->path:Landroid/graphics/Path;

    .line 40
    iput p3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    const/16 p3, 0x100

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [F

    .line 41
    :goto_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-array p2, p3, [F

    .line 42
    :goto_1
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    .line 43
    array-length p1, p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->allocControlPointsAndWorkingMemory(I)V

    .line 44
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->recalculateControlPoints()V

    return-void
.end method

.method synthetic constructor <init>([F[FILorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;-><init>([F[FI)V

    return-void
.end method

.method private allocControlPointsAndWorkingMemory(I)V
    .locals 1

    .line 99
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p1x:[F

    .line 100
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p1y:[F

    .line 101
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p2x:[F

    .line 102
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p2y:[F

    .line 104
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->a:[F

    .line 105
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->b:[F

    .line 106
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->c:[F

    .line 107
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->r:[F

    return-void
.end method

.method private computeControlPoints([F[F[FI)V
    .locals 10

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    .line 161
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->a:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 162
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->b:[F

    const/high16 v4, 0x40000000    # 2.0f

    aput v4, v1, v2

    .line 163
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->c:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v2

    .line 164
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->r:[F

    aget v6, p1, v2

    aget v7, p1, v0

    mul-float v7, v7, v4

    add-float/2addr v6, v7

    aput v6, v1, v2

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v6, p4, -0x1

    if-ge v1, v6, :cond_0

    .line 168
    iget-object v6, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->a:[F

    aput v5, v6, v1

    .line 169
    iget-object v6, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->b:[F

    const/high16 v7, 0x40800000    # 4.0f

    aput v7, v6, v1

    .line 170
    iget-object v6, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->c:[F

    aput v5, v6, v1

    .line 171
    iget-object v6, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->r:[F

    aget v8, p1, v1

    mul-float v8, v8, v7

    add-int/lit8 v7, v1, 0x1

    aget v9, p1, v7

    mul-float v9, v9, v4

    add-float/2addr v8, v9

    aput v8, v6, v1

    move v1, v7

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->a:[F

    aput v4, v1, v6

    .line 176
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->b:[F

    const/high16 v5, 0x40e00000    # 7.0f

    aput v5, v1, v6

    .line 177
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->c:[F

    aput v3, v1, v6

    .line 178
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->r:[F

    const/high16 v3, 0x41000000    # 8.0f

    aget v5, p1, v6

    mul-float v5, v5, v3

    aget v3, p1, p4

    add-float/2addr v5, v3

    aput v5, v1, v6

    :goto_1
    if-ge v0, p4, :cond_1

    .line 182
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->a:[F

    aget v1, v1, v0

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->b:[F

    add-int/lit8 v5, v0, -0x1

    aget v7, v3, v5

    div-float/2addr v1, v7

    .line 183
    aget v7, v3, v0

    iget-object v8, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->c:[F

    aget v8, v8, v5

    mul-float v8, v8, v1

    sub-float/2addr v7, v8

    aput v7, v3, v0

    .line 184
    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->r:[F

    aget v7, v3, v0

    aget v5, v3, v5

    mul-float v1, v1, v5

    sub-float/2addr v7, v1

    aput v7, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->r:[F

    aget v0, v0, v6

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->b:[F

    aget v1, v1, v6

    div-float/2addr v0, v1

    aput v0, p2, v6

    add-int/lit8 v0, p4, -0x2

    :goto_2
    if-ltz v0, :cond_2

    .line 189
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->r:[F

    aget v1, v1, v0

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->c:[F

    aget v3, v3, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    mul-float v3, v3, v5

    sub-float/2addr v1, v3

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->b:[F

    aget v3, v3, v0

    div-float/2addr v1, v3

    aput v1, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v2, v6, :cond_3

    add-int/lit8 v0, v2, 0x1

    .line 194
    aget v1, p1, v0

    mul-float v1, v1, v4

    aget v3, p2, v0

    sub-float/2addr v1, v3

    aput v1, p3, v2

    move v2, v0

    goto :goto_3

    .line 197
    :cond_3
    aget p1, p1, p4

    aget p2, p2, v6

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    aput p1, p3, v6

    return-void
.end method

.method private recalculateControlPoints()V
    .locals 10

    .line 111
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 113
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 114
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p1x:[F

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p2x:[F

    invoke-direct {p0, v2, v3, v4, v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->computeControlPoints([F[F[FI)V

    .line 115
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p1y:[F

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p2y:[F

    iget v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->computeControlPoints([F[F[FI)V

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    aget v4, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 119
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 127
    :goto_0
    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 128
    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p1x:[F

    aget v4, v1, v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p1y:[F

    aget v5, v1, v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p2x:[F

    aget v6, v1, v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->p2y:[F

    aget v7, v1, v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    add-int/lit8 v0, v0, 0x1

    aget v8, v1, v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    aget v9, v1, v0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    aget v1, v1, v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    aget v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    aget v1, v1, v3

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    :goto_1
    return-void
.end method

.method private resize(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    .line 94
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    add-int/lit8 p1, p1, -0x1

    .line 95
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->allocControlPointsAndWorkingMemory(I)V

    return-void
.end method


# virtual methods
.method addPoint(FF)V
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    array-length v2, v0

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 82
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    :goto_0
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->resize(I)V

    .line 85
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    aput p1, v0, v1

    .line 86
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 87
    iput v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    .line 89
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->recalculateControlPoints()V

    return-void
.end method

.method addPointFiltered(FFF)V
    .locals 3

    .line 64
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    if-lez v0, :cond_0

    .line 65
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    sub-float/2addr v1, p1

    .line 66
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    sub-float/2addr v0, p2

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    mul-float p3, p3, p3

    cmpg-float p3, v1, p3

    if-gez p3, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->addPoint(FF)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 221
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->x:[F

    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 222
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->y:[F

    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;->count:I

    invoke-static {p2, v1, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
