.class public Lcom/annimon/stream/operator/LongSorted;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.source "LongSorted.java"


# instance fields
.field private array:[J

.field private index:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/annimon/stream/operator/LongSorted;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/annimon/stream/operator/LongSorted;->index:I

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 21
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongSorted;->isInit:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/LongSorted;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toLongArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/LongSorted;->array:[J

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 25
    :cond_0
    iget v0, p0, Lcom/annimon/stream/operator/LongSorted;->index:I

    iget-object v1, p0, Lcom/annimon/stream/operator/LongSorted;->array:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongSorted;->hasNext:Z

    .line 26
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongSorted;->hasNext:Z

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/annimon/stream/operator/LongSorted;->array:[J

    iget v1, p0, Lcom/annimon/stream/operator/LongSorted;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/annimon/stream/operator/LongSorted;->index:I

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/annimon/stream/operator/LongSorted;->next:J

    :cond_2
    return-void
.end method
