.class public Lcom/annimon/stream/operator/LongLimit;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongLimit.java"


# instance fields
.field private index:J

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final maxSize:J


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/LongLimit;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 13
    iput-wide p2, p0, Lcom/annimon/stream/operator/LongLimit;->maxSize:J

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lcom/annimon/stream/operator/LongLimit;->index:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 19
    iget-wide v0, p0, Lcom/annimon/stream/operator/LongLimit;->index:J

    iget-wide v2, p0, Lcom/annimon/stream/operator/LongLimit;->maxSize:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/annimon/stream/operator/LongLimit;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextLong()J
    .locals 4

    .line 24
    iget-wide v0, p0, Lcom/annimon/stream/operator/LongLimit;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/annimon/stream/operator/LongLimit;->index:J

    .line 25
    iget-object v0, p0, Lcom/annimon/stream/operator/LongLimit;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method
