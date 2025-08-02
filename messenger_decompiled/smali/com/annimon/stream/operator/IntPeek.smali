.class public Lcom/annimon/stream/operator/IntPeek;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntPeek.java"


# instance fields
.field private final action:Lcom/annimon/stream/function/IntConsumer;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntConsumer;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/IntPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 13
    iput-object p2, p0, Lcom/annimon/stream/operator/IntPeek;->action:Lcom/annimon/stream/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/annimon/stream/operator/IntPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/IntPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 24
    iget-object v1, p0, Lcom/annimon/stream/operator/IntPeek;->action:Lcom/annimon/stream/function/IntConsumer;

    invoke-interface {v1, v0}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    return v0
.end method
