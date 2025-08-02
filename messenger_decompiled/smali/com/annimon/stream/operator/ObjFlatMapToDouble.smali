.class public Lcom/annimon/stream/operator/ObjFlatMapToDouble;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;
.source "ObjFlatMapToDouble.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;"
    }
.end annotation


# instance fields
.field private inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
            "Lcom/annimon/stream/DoubleStream;",
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
            "Lcom/annimon/stream/DoubleStream;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->iterator:Ljava/util/Iterator;

    .line 18
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->mapper:Lcom/annimon/stream/function/Function;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->next:D

    .line 25
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->hasNext:Z

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->mapper:Lcom/annimon/stream/function/Function;

    invoke-interface {v2, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/annimon/stream/DoubleStream;

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Lcom/annimon/stream/DoubleStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->next:D

    .line 38
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->hasNext:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToDouble;->hasNext:Z

    return-void
.end method
