.class public Lcom/annimon/stream/operator/IntMapToObj;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "IntMapToObj.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaIterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final mapper:Lcom/annimon/stream/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/IntFunction<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;",
            "Lcom/annimon/stream/function/IntFunction<",
            "+TR;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/IntMapToObj;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/IntMapToObj;->mapper:Lcom/annimon/stream/function/IntFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/IntMapToObj;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextIteration()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/IntMapToObj;->mapper:Lcom/annimon/stream/function/IntFunction;

    iget-object v1, p0, Lcom/annimon/stream/operator/IntMapToObj;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
