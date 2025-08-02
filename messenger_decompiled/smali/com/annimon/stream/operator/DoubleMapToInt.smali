.class public Lcom/annimon/stream/operator/DoubleMapToInt;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "DoubleMapToInt.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final mapper:Lcom/annimon/stream/function/DoubleToIntFunction;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleToIntFunction;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 13
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->mapper:Lcom/annimon/stream/function/DoubleToIntFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->mapper:Lcom/annimon/stream/function/DoubleToIntFunction;

    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/DoubleToIntFunction;->applyAsInt(D)I

    move-result v0

    return v0
.end method
