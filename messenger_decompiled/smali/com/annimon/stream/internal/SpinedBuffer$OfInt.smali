.class Lcom/annimon/stream/internal/SpinedBuffer$OfInt;
.super Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Lcom/annimon/stream/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/internal/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Integer;",
        "[I",
        "Lcom/annimon/stream/function/IntConsumer;",
        ">;",
        "Lcom/annimon/stream/function/IntConsumer;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;-><init>(I)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3

    .line 256
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->preAccept()V

    .line 257
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->curChunk:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->elementIndex:I

    aput p1, v0, v1

    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 0

    .line 231
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->arrayLength([I)I

    move-result p1

    return p1
.end method

.method protected arrayLength([I)I
    .locals 0

    .line 251
    array-length p1, p1

    return p1
.end method

.method public get(J)I
    .locals 5

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->chunkFor(J)I

    move-result v0

    .line 264
    iget v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->spineIndex:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->curChunk:Ljava/lang/Object;

    check-cast v0, [I

    long-to-int p2, p1

    aget p1, v0, p2

    return p1

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->spine:[Ljava/lang/Object;

    check-cast v1, [[I

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->priorElementCount:[J

    aget-wide v3, v2, v0

    sub-long/2addr p1, v3

    long-to-int p2, p1

    aget p1, v1, p2

    return p1
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
    .locals 1

    .line 272
    new-instance v0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;-><init>(Lcom/annimon/stream/internal/SpinedBuffer$OfInt;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[I
    .locals 0

    .line 246
    new-array p1, p1, [I

    return-object p1
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->newArrayArray(I)[[I

    move-result-object p1

    return-object p1
.end method

.method protected newArrayArray(I)[[I
    .locals 0

    .line 241
    new-array p1, p1, [[I

    return-object p1
.end method
