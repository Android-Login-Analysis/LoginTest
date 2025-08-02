.class public Lcom/annimon/stream/operator/IntScan;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.source "IntScan.java"


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntBinaryOperator;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/IntScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/IntScan;->accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/IntScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntScan;->hasNext:Z

    .line 20
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntScan;->hasNext:Z

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/IntScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    iget-boolean v1, p0, Lcom/annimon/stream/operator/IntScan;->isInit:Z

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/annimon/stream/operator/IntScan;->accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

    iget v2, p0, Lcom/annimon/stream/operator/IntScan;->next:I

    invoke-interface {v1, v2, v0}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, p0, Lcom/annimon/stream/operator/IntScan;->next:I

    goto :goto_0

    .line 25
    :cond_0
    iput v0, p0, Lcom/annimon/stream/operator/IntScan;->next:I

    :cond_1
    :goto_0
    return-void
.end method
