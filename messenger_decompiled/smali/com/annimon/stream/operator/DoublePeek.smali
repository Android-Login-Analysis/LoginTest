.class public Lcom/annimon/stream/operator/DoublePeek;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoublePeek.java"


# instance fields
.field private final action:Lcom/annimon/stream/function/DoubleConsumer;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleConsumer;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/DoublePeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 13
    iput-object p2, p0, Lcom/annimon/stream/operator/DoublePeek;->action:Lcom/annimon/stream/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/annimon/stream/operator/DoublePeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/DoublePeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/annimon/stream/operator/DoublePeek;->action:Lcom/annimon/stream/function/DoubleConsumer;

    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/DoubleConsumer;->accept(D)V

    return-wide v0
.end method
