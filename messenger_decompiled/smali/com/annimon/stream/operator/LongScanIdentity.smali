.class public Lcom/annimon/stream/operator/LongScanIdentity;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.source "LongScanIdentity.java"


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/LongBinaryOperator;

.field private final identity:J

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;JLcom/annimon/stream/function/LongBinaryOperator;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/annimon/stream/operator/LongScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 15
    iput-wide p2, p0, Lcom/annimon/stream/operator/LongScanIdentity;->identity:J

    .line 16
    iput-object p4, p0, Lcom/annimon/stream/operator/LongScanIdentity;->accumulator:Lcom/annimon/stream/function/LongBinaryOperator;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 5

    .line 21
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->hasNext:Z

    .line 24
    iget-wide v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->identity:J

    iput-wide v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->next:J

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->hasNext:Z

    .line 28
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->hasNext:Z

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/annimon/stream/operator/LongScanIdentity;->accumulator:Lcom/annimon/stream/function/LongBinaryOperator;

    iget-wide v3, p0, Lcom/annimon/stream/operator/LongScanIdentity;->next:J

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/annimon/stream/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->next:J

    :cond_1
    return-void
.end method
