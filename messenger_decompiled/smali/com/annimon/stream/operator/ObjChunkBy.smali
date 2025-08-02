.class public Lcom/annimon/stream/operator/ObjChunkBy;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "ObjChunkBy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaIterator<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final classifier:Lcom/annimon/stream/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;"
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

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private peekedNext:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjChunkBy;->iterator:Ljava/util/Iterator;

    .line 18
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjChunkBy;->classifier:Lcom/annimon/stream/function/Function;

    return-void
.end method

.method private peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjChunkBy;->peekedNext:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjChunkBy;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjChunkBy;->next:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjChunkBy;->peekedNext:Z

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjChunkBy;->next:Ljava/lang/Object;

    return-object v0
.end method

.method private takeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/annimon/stream/operator/ObjChunkBy;->peek()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjChunkBy;->peekedNext:Z

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjChunkBy;->peekedNext:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjChunkBy;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic nextIteration()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/annimon/stream/operator/ObjChunkBy;->nextIteration()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public nextIteration()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjChunkBy;->classifier:Lcom/annimon/stream/function/Function;

    invoke-direct {p0}, Lcom/annimon/stream/operator/ObjChunkBy;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/annimon/stream/operator/ObjChunkBy;->takeNext()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v2, p0, Lcom/annimon/stream/operator/ObjChunkBy;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/annimon/stream/operator/ObjChunkBy;->classifier:Lcom/annimon/stream/function/Function;

    invoke-direct {p0}, Lcom/annimon/stream/operator/ObjChunkBy;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return-object v1
.end method
