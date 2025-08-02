.class public Lcom/annimon/stream/operator/ObjDistinctBy;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjDistinctBy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaExtIterator<",
        "TT;>;"
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

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
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
            "-TT;+TK;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->iterator:Ljava/util/Iterator;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->classifier:Lcom/annimon/stream/function/Function;

    .line 18
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->set:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 2

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->hasNext:Z

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->next:Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->classifier:Lcom/annimon/stream/function/Function;

    iget-object v1, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->next:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjDistinctBy;->set:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method
