.class public Lcom/annimon/stream/operator/LongSample;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongSample.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final stepWidth:I


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/annimon/stream/operator/LongSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 12
    iput p2, p0, Lcom/annimon/stream/operator/LongSample;->stepWidth:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/annimon/stream/operator/LongSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/LongSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 24
    :goto_0
    iget v3, p0, Lcom/annimon/stream/operator/LongSample;->stepWidth:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/annimon/stream/operator/LongSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    iget-object v3, p0, Lcom/annimon/stream/operator/LongSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
