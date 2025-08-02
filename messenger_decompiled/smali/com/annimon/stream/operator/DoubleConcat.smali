.class public Lcom/annimon/stream/operator/DoubleConcat;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleConcat.java"


# instance fields
.field private firstStreamIsCurrent:Z

.field private final iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 13
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/annimon/stream/operator/DoubleConcat;->firstStreamIsCurrent:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->firstStreamIsCurrent:Z

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->firstStreamIsCurrent:Z

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 2

    .line 30
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->firstStreamIsCurrent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    :goto_0
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method
