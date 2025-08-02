.class public Lcom/annimon/stream/operator/ObjSorted;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjSorted.java"


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
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private sortedIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjSorted;->iterator:Ljava/util/Iterator;

    .line 18
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjSorted;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 2

    .line 23
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjSorted;->isInit:Z

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjSorted;->iterator:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjSorted;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjSorted;->sortedIterator:Ljava/util/Iterator;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjSorted;->sortedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjSorted;->hasNext:Z

    .line 29
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjSorted;->hasNext:Z

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjSorted;->sortedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjSorted;->next:Ljava/lang/Object;

    :cond_1
    return-void
.end method
