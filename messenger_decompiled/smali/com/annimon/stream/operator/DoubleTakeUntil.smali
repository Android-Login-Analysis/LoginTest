.class public Lcom/annimon/stream/operator/DoubleTakeUntil;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;
.source "DoubleTakeUntil.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final stopPredicate:Lcom/annimon/stream/function/DoublePredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->stopPredicate:Lcom/annimon/stream/function/DoublePredicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->isInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->stopPredicate:Lcom/annimon/stream/function/DoublePredicate;

    iget-wide v1, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->next:D

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->hasNext:Z

    .line 20
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->hasNext:Z

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/annimon/stream/operator/DoubleTakeUntil;->next:D

    :cond_2
    return-void
.end method
