.class public Lcom/annimon/stream/operator/LongDropWhile;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.source "LongDropWhile.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final predicate:Lcom/annimon/stream/function/LongPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/LongDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/LongDropWhile;->predicate:Lcom/annimon/stream/function/LongPredicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 19
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->isInit:Z

    if-nez v0, :cond_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->hasNext:Z

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->next:J

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->predicate:Lcom/annimon/stream/function/LongPredicate;

    iget-wide v1, p0, Lcom/annimon/stream/operator/LongDropWhile;->next:J

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->hasNext:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->hasNext:Z

    .line 30
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->hasNext:Z

    if-nez v0, :cond_3

    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/annimon/stream/operator/LongDropWhile;->next:J

    return-void
.end method
