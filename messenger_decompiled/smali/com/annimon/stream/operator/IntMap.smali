.class public Lcom/annimon/stream/operator/IntMap;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntMap.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final mapper:Lcom/annimon/stream/function/IntUnaryOperator;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntUnaryOperator;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/IntMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 13
    iput-object p2, p0, Lcom/annimon/stream/operator/IntMap;->mapper:Lcom/annimon/stream/function/IntUnaryOperator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/annimon/stream/operator/IntMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/IntMap;->mapper:Lcom/annimon/stream/function/IntUnaryOperator;

    iget-object v1, p0, Lcom/annimon/stream/operator/IntMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method
