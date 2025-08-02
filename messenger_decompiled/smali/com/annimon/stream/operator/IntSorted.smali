.class public Lcom/annimon/stream/operator/IntSorted;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.source "IntSorted.java"


# instance fields
.field private array:[I

.field private index:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/annimon/stream/operator/IntSorted;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/annimon/stream/operator/IntSorted;->index:I

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 21
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntSorted;->isInit:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSorted;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toIntArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/IntSorted;->array:[I

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 25
    :cond_0
    iget v0, p0, Lcom/annimon/stream/operator/IntSorted;->index:I

    iget-object v1, p0, Lcom/annimon/stream/operator/IntSorted;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntSorted;->hasNext:Z

    .line 26
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntSorted;->hasNext:Z

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSorted;->array:[I

    iget v1, p0, Lcom/annimon/stream/operator/IntSorted;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/annimon/stream/operator/IntSorted;->index:I

    aget v0, v0, v1

    iput v0, p0, Lcom/annimon/stream/operator/IntSorted;->next:I

    :cond_2
    return-void
.end method
