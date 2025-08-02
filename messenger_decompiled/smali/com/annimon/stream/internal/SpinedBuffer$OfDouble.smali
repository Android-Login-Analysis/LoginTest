.class Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;
.super Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Lcom/annimon/stream/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/internal/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Double;",
        "[D",
        "Lcom/annimon/stream/function/DoubleConsumer;",
        ">;",
        "Lcom/annimon/stream/function/DoubleConsumer;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;-><init>(I)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3

    .line 370
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->preAccept()V

    .line 371
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->curChunk:Ljava/lang/Object;

    check-cast v0, [D

    iget v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->elementIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 0

    .line 345
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->arrayLength([D)I

    move-result p1

    return p1
.end method

.method protected arrayLength([D)I
    .locals 0

    .line 365
    array-length p1, p1

    return p1
.end method

.method public get(J)D
    .locals 5

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->chunkFor(J)I

    move-result v0

    .line 376
    iget v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->spineIndex:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->curChunk:Ljava/lang/Object;

    check-cast v0, [D

    long-to-int p2, p1

    aget-wide p1, v0, p2

    return-wide p1

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->spine:[Ljava/lang/Object;

    check-cast v1, [[D

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->priorElementCount:[J

    aget-wide v3, v2, v0

    sub-long/2addr p1, v3

    long-to-int p2, p1

    aget-wide p1, v1, p2

    return-wide p1
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
    .locals 1

    .line 384
    new-instance v0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;-><init>(Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->newArray(I)[D

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[D
    .locals 0

    .line 360
    new-array p1, p1, [D

    return-object p1
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->newArrayArray(I)[[D

    move-result-object p1

    return-object p1
.end method

.method protected newArrayArray(I)[[D
    .locals 0

    .line 355
    new-array p1, p1, [[D

    return-object p1
.end method
