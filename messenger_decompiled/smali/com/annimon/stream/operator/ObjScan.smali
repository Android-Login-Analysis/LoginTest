.class public Lcom/annimon/stream/operator/ObjScan;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjScan.java"


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
.field private final accumulator:Lcom/annimon/stream/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/BiFunction<",
            "TT;TT;TT;>;"
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


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/BiFunction<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjScan;->iterator:Ljava/util/Iterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjScan;->accumulator:Lcom/annimon/stream/function/BiFunction;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjScan;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjScan;->hasNext:Z

    .line 20
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjScan;->hasNext:Z

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjScan;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 22
    iget-boolean v1, p0, Lcom/annimon/stream/operator/ObjScan;->isInit:Z

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjScan;->accumulator:Lcom/annimon/stream/function/BiFunction;

    iget-object v2, p0, Lcom/annimon/stream/operator/ObjScan;->next:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjScan;->next:Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    iput-object v0, p0, Lcom/annimon/stream/operator/ObjScan;->next:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
