.class public Lcom/annimon/stream/operator/ObjFlatMapToInt;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.source "ObjFlatMapToInt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;"
    }
.end annotation


# instance fields
.field private inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
            "Lcom/annimon/stream/IntStream;",
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
            "Lcom/annimon/stream/IntStream;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->iterator:Ljava/util/Iterator;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->mapper:Lcom/annimon/stream/function/Function;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->next:I

    .line 24
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->hasNext:Z

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget-object v2, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->mapper:Lcom/annimon/stream/function/Function;

    invoke-interface {v2, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/annimon/stream/IntStream;

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->next:I

    .line 37
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->hasNext:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToInt;->hasNext:Z

    return-void
.end method
