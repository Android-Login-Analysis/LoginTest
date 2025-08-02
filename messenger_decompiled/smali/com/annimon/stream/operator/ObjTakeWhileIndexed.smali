.class public Lcom/annimon/stream/operator/ObjTakeWhileIndexed;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjTakeWhileIndexed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaExtIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/IndexedIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/iterator/IndexedIterator<",
            "+TT;>;"
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

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;->predicate:Lcom/annimon/stream/function/IndexedPredicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;->predicate:Lcom/annimon/stream/function/IndexedPredicate;

    iget-object v1, p0, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 20
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/IndexedIterator;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;->next:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/IndexedPredicate;->test(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;->hasNext:Z

    return-void
.end method
