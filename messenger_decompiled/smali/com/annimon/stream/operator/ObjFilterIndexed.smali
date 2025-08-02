.class public Lcom/annimon/stream/operator/ObjFilterIndexed;
.super Ljava/lang/Object;
.source "ObjFilterIndexed.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private hasNext:Z

.field private hasNextEvaluated:Z

.field private final iterator:Lcom/annimon/stream/iterator/IndexedIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/iterator/IndexedIterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final predicate:Lcom/annimon/stream/function/IndexedPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/IndexedIterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedPredicate;

    return-void
.end method

.method private nextIteration()V
    .locals 3

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->getIndex()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->next:Ljava/lang/Object;

    .line 45
    iget-object v2, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedPredicate;

    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/IndexedPredicate;->test(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/annimon/stream/operator/ObjFilterIndexed;->nextIteration()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNextEvaluated:Z

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNext:Z

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNext:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->hasNextEvaluated:Z

    .line 38
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFilterIndexed;->next:Ljava/lang/Object;

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
