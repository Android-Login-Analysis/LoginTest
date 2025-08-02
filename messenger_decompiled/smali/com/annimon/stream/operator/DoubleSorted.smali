.class public Lcom/annimon/stream/operator/DoubleSorted;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;
.source "DoubleSorted.java"


# instance fields
.field private array:[D

.field private index:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleSorted;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/annimon/stream/operator/DoubleSorted;->index:I

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 21
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->isInit:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toDoubleArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->array:[D

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 25
    :cond_0
    iget v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->index:I

    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleSorted;->array:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->hasNext:Z

    .line 26
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->hasNext:Z

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->array:[D

    iget v1, p0, Lcom/annimon/stream/operator/DoubleSorted;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/annimon/stream/operator/DoubleSorted;->index:I

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/annimon/stream/operator/DoubleSorted;->next:D

    :cond_2
    return-void
.end method
