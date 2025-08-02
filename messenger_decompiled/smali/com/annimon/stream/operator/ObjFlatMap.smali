.class public Lcom/annimon/stream/operator/ObjFlatMap;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaExtIterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private inner:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field private innerStream:Lcom/annimon/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/Stream<",
            "+TR;>;"
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

.field private final mapper:Lcom/annimon/stream/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/Stream<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/Stream<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjFlatMap;->iterator:Ljava/util/Iterator;

    .line 18
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjFlatMap;->mapper:Lcom/annimon/stream/function/Function;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->inner:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->inner:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->next:Ljava/lang/Object;

    .line 25
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjFlatMap;->hasNext:Z

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->inner:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->innerStream:Lcom/annimon/stream/Stream;

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->close()V

    .line 32
    iput-object v2, p0, Lcom/annimon/stream/operator/ObjFlatMap;->innerStream:Lcom/annimon/stream/Stream;

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/annimon/stream/operator/ObjFlatMap;->mapper:Lcom/annimon/stream/function/Function;

    invoke-interface {v2, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/annimon/stream/Stream;

    if-eqz v0, :cond_3

    .line 37
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcom/annimon/stream/operator/ObjFlatMap;->inner:Ljava/util/Iterator;

    .line 38
    iput-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->innerStream:Lcom/annimon/stream/Stream;

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->inner:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->inner:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->next:Ljava/lang/Object;

    .line 43
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjFlatMap;->hasNext:Z

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->hasNext:Z

    .line 48
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMap;->innerStream:Lcom/annimon/stream/Stream;

    if-eqz v0, :cond_5

    .line 49
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->close()V

    .line 50
    iput-object v2, p0, Lcom/annimon/stream/operator/ObjFlatMap;->innerStream:Lcom/annimon/stream/Stream;

    :cond_5
    return-void
.end method
