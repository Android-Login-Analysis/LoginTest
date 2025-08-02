.class public Lcom/annimon/stream/operator/DoubleScan;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;
.source "DoubleScan.java"


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/DoubleBinaryOperator;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleBinaryOperator;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleScan;->accumulator:Lcom/annimon/stream/function/DoubleBinaryOperator;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleScan;->hasNext:Z

    .line 20
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleScan;->hasNext:Z

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    .line 22
    iget-boolean v2, p0, Lcom/annimon/stream/operator/DoubleScan;->isInit:Z

    if-eqz v2, :cond_0

    .line 23
    iget-object v2, p0, Lcom/annimon/stream/operator/DoubleScan;->accumulator:Lcom/annimon/stream/function/DoubleBinaryOperator;

    iget-wide v3, p0, Lcom/annimon/stream/operator/DoubleScan;->next:D

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/annimon/stream/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/annimon/stream/operator/DoubleScan;->next:D

    goto :goto_0

    .line 25
    :cond_0
    iput-wide v0, p0, Lcom/annimon/stream/operator/DoubleScan;->next:D

    :cond_1
    :goto_0
    return-void
.end method
