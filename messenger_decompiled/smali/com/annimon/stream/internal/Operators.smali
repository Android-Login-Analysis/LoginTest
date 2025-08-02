.class public final Lcom/annimon/stream/internal/Operators;
.super Ljava/lang/Object;
.source "Operators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toArray(Ljava/util/Iterator;Lcom/annimon/stream/function/IntFunction;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/IntFunction<",
            "[TR;>;)[TR;"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lcom/annimon/stream/internal/Operators;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v1, v0

    .line 26
    invoke-static {v1, v2}, Lcom/annimon/stream/internal/Compat;->checkMaxArraySize(J)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v0, v2}, Lcom/annimon/stream/internal/Compat;->newArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 30
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 33
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static toDoubleArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)[D
    .locals 3

    .line 54
    new-instance v0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;-><init>()V

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->accept(D)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public static toIntArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)[I
    .locals 2

    .line 38
    new-instance v0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;

    invoke-direct {v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;-><init>()V

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->accept(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static toList(Ljava/util/Iterator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toLongArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)[J
    .locals 3

    .line 46
    new-instance v0, Lcom/annimon/stream/internal/SpinedBuffer$OfLong;

    invoke-direct {v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfLong;-><init>()V

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfLong;->accept(J)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method
