.class public Lcom/annimon/stream/operator/IntScanIdentity;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.source "IntScanIdentity.java"


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

.field private final identity:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;ILcom/annimon/stream/function/IntBinaryOperator;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/annimon/stream/operator/IntScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 15
    iput p2, p0, Lcom/annimon/stream/operator/IntScanIdentity;->identity:I

    .line 16
    iput-object p3, p0, Lcom/annimon/stream/operator/IntScanIdentity;->accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 21
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->hasNext:Z

    .line 24
    iget v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->identity:I

    iput v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->next:I

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->hasNext:Z

    .line 28
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->hasNext:Z

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 30
    iget-object v1, p0, Lcom/annimon/stream/operator/IntScanIdentity;->accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

    iget v2, p0, Lcom/annimon/stream/operator/IntScanIdentity;->next:I

    invoke-interface {v1, v2, v0}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->next:I

    :cond_1
    return-void
.end method
