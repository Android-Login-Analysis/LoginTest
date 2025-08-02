.class public Lcom/annimon/stream/operator/DoubleFlatMap;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleFlatMap.java"


# instance fields
.field private inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private innerStream:Lcom/annimon/stream/DoubleStream;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final mapper:Lcom/annimon/stream/function/DoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/DoubleFunction<",
            "+",
            "Lcom/annimon/stream/DoubleStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;",
            "Lcom/annimon/stream/function/DoubleFunction<",
            "+",
            "Lcom/annimon/stream/DoubleStream;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->mapper:Lcom/annimon/stream/function/DoubleFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0}, Lcom/annimon/stream/DoubleStream;->close()V

    .line 28
    iput-object v2, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v2

    .line 31
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->mapper:Lcom/annimon/stream/function/DoubleFunction;

    invoke-interface {v0, v2, v3}, Lcom/annimon/stream/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/annimon/stream/DoubleStream;

    if-nez v0, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    iput-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    .line 36
    invoke-virtual {v0}, Lcom/annimon/stream/DoubleStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/annimon/stream/DoubleStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    return v1

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {v0}, Lcom/annimon/stream/DoubleStream;->close()V

    .line 43
    iput-object v2, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public nextDouble()D
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    return-wide v0

    .line 51
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
