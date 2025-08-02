.class public Lcom/annimon/stream/operator/IntRangeClosed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntRangeClosed.java"


# instance fields
.field private current:I

.field private final endInclusive:I

.field private hasNext:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 12
    iput p2, p0, Lcom/annimon/stream/operator/IntRangeClosed;->endInclusive:I

    .line 13
    iput p1, p0, Lcom/annimon/stream/operator/IntRangeClosed;->current:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/annimon/stream/operator/IntRangeClosed;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntRangeClosed;->hasNext:Z

    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 24
    iget v0, p0, Lcom/annimon/stream/operator/IntRangeClosed;->current:I

    iget v1, p0, Lcom/annimon/stream/operator/IntRangeClosed;->endInclusive:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntRangeClosed;->hasNext:Z

    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 28
    iput v1, p0, Lcom/annimon/stream/operator/IntRangeClosed;->current:I

    return v0
.end method
