.class public Lcom/annimon/stream/operator/DoubleMapToLong;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "DoubleMapToLong.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final mapper:Lcom/annimon/stream/function/DoubleToLongFunction;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleToLongFunction;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleMapToLong;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 13
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleMapToLong;->mapper:Lcom/annimon/stream/function/DoubleToLongFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleMapToLong;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleMapToLong;->mapper:Lcom/annimon/stream/function/DoubleToLongFunction;

    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleMapToLong;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/DoubleToLongFunction;->applyAsLong(D)J

    move-result-wide v0

    return-wide v0
.end method
