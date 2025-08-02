.class public Lcom/annimon/stream/operator/ObjFlatMapToLong;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.source "ObjFlatMapToLong.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;"
    }
.end annotation


# instance fields
.field private inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

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
            "Lcom/annimon/stream/LongStream;",
            ">;"
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
            "Lcom/annimon/stream/LongStream;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->iterator:Ljava/util/Iterator;

    .line 18
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->mapper:Lcom/annimon/stream/function/Function;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->next:J

    .line 25
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->hasNext:Z

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->mapper:Lcom/annimon/stream/function/Function;

    invoke-interface {v2, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/annimon/stream/LongStream;

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Lcom/annimon/stream/LongStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->next:J

    .line 38
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->hasNext:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->hasNext:Z

    return-void
.end method
