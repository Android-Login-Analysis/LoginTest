.class public Lcom/annimon/stream/operator/IntConcat;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntConcat.java"


# instance fields
.field private firstStreamIsCurrent:Z

.field private final iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/IntConcat;->iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 13
    iput-object p2, p0, Lcom/annimon/stream/operator/IntConcat;->iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/annimon/stream/operator/IntConcat;->firstStreamIsCurrent:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntConcat;->firstStreamIsCurrent:Z

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/annimon/stream/operator/IntConcat;->iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntConcat;->firstStreamIsCurrent:Z

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntConcat;->iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntConcat;->firstStreamIsCurrent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/annimon/stream/operator/IntConcat;->iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntConcat;->iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    :goto_0
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    return v0
.end method
