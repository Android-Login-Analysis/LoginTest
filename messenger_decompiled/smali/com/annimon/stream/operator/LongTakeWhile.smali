.class public Lcom/annimon/stream/operator/LongTakeWhile;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.source "LongTakeWhile.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final predicate:Lcom/annimon/stream/function/LongPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/LongTakeWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/LongTakeWhile;->predicate:Lcom/annimon/stream/function/LongPredicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/LongTakeWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/annimon/stream/operator/LongTakeWhile;->predicate:Lcom/annimon/stream/function/LongPredicate;

    iget-object v1, p0, Lcom/annimon/stream/operator/LongTakeWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 20
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/annimon/stream/operator/LongTakeWhile;->next:J

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongTakeWhile;->hasNext:Z

    return-void
.end method
