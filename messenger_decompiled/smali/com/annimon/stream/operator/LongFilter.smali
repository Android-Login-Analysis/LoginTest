.class public Lcom/annimon/stream/operator/LongFilter;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongFilter.java"


# instance fields
.field private hasNext:Z

.field private hasNextEvaluated:Z

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private next:J

.field private final predicate:Lcom/annimon/stream/function/LongPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/annimon/stream/operator/LongFilter;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 16
    iput-object p2, p0, Lcom/annimon/stream/operator/LongFilter;->predicate:Lcom/annimon/stream/function/LongPredicate;

    return-void
.end method

.method private nextIteration()V
    .locals 3

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFilter;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFilter;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/annimon/stream/operator/LongFilter;->next:J

    .line 43
    iget-object v2, p0, Lcom/annimon/stream/operator/LongFilter;->predicate:Lcom/annimon/stream/function/LongPredicate;

    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilter;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilter;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongFilter;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/annimon/stream/operator/LongFilter;->nextIteration()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilter;->hasNextEvaluated:Z

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongFilter;->hasNext:Z

    return v0
.end method

.method public nextLong()J
    .locals 2

    .line 30
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongFilter;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/annimon/stream/operator/LongFilter;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilter;->hasNext:Z

    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongFilter;->hasNext:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilter;->hasNextEvaluated:Z

    .line 37
    iget-wide v0, p0, Lcom/annimon/stream/operator/LongFilter;->next:J

    return-wide v0

    .line 34
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
