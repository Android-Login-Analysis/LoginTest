.class public Lcom/annimon/stream/operator/IntDropWhile;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.source "IntDropWhile.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final predicate:Lcom/annimon/stream/function/IntPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/IntDropWhile;->predicate:Lcom/annimon/stream/function/IntPredicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 2

    .line 19
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->isInit:Z

    if-nez v0, :cond_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->hasNext:Z

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->next:I

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->predicate:Lcom/annimon/stream/function/IntPredicate;

    iget v1, p0, Lcom/annimon/stream/operator/IntDropWhile;->next:I

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->hasNext:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->hasNext:Z

    .line 30
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->hasNext:Z

    if-nez v0, :cond_3

    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->next:I

    return-void
.end method
