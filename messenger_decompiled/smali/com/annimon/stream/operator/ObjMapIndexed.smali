.class public Lcom/annimon/stream/operator/ObjMapIndexed;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "ObjMapIndexed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaIterator<",
        "TR;>;"
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

.field private final mapper:Lcom/annimon/stream/function/IndexedFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/IndexedFunction<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/IndexedIterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/IndexedFunction<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextIteration()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedFunction;

    iget-object v1, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/IndexedIterator;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/IndexedFunction;->apply(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
