.class public Lcom/annimon/stream/operator/LongScan;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.source "LongScan.java"


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/LongBinaryOperator;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongBinaryOperator;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/LongScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/LongScan;->accumulator:Lcom/annimon/stream/function/LongBinaryOperator;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/LongScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongScan;->hasNext:Z

    .line 20
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongScan;->hasNext:Z

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/LongScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 22
    iget-boolean v2, p0, Lcom/annimon/stream/operator/LongScan;->isInit:Z

    if-eqz v2, :cond_0

    .line 23
    iget-object v2, p0, Lcom/annimon/stream/operator/LongScan;->accumulator:Lcom/annimon/stream/function/LongBinaryOperator;

    iget-wide v3, p0, Lcom/annimon/stream/operator/LongScan;->next:J

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/annimon/stream/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/annimon/stream/operator/LongScan;->next:J

    goto :goto_0

    .line 25
    :cond_0
    iput-wide v0, p0, Lcom/annimon/stream/operator/LongScan;->next:J

    :cond_1
    :goto_0
    return-void
.end method
