.class public Lcom/annimon/stream/operator/IntSample;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntSample.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final stepWidth:I


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 12
    iput p2, p0, Lcom/annimon/stream/operator/IntSample;->stepWidth:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    const/4 v1, 0x1

    .line 24
    :goto_0
    iget v2, p0, Lcom/annimon/stream/operator/IntSample;->stepWidth:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
