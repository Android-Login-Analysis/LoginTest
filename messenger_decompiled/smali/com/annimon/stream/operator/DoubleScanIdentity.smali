.class public Lcom/annimon/stream/operator/DoubleScanIdentity;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;
.source "DoubleScanIdentity.java"


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/DoubleBinaryOperator;

.field private final identity:D

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;DLcom/annimon/stream/function/DoubleBinaryOperator;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 16
    iput-wide p2, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->identity:D

    .line 17
    iput-object p4, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->accumulator:Lcom/annimon/stream/function/DoubleBinaryOperator;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 5

    .line 22
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->hasNext:Z

    .line 25
    iget-wide v0, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->identity:D

    iput-wide v0, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->next:D

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->hasNext:Z

    .line 29
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->hasNext:Z

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 31
    iget-object v2, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->accumulator:Lcom/annimon/stream/function/DoubleBinaryOperator;

    iget-wide v3, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->next:D

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/annimon/stream/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/annimon/stream/operator/DoubleScanIdentity;->next:D

    :cond_1
    return-void
.end method
