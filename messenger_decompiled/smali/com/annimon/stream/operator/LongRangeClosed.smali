.class public Lcom/annimon/stream/operator/LongRangeClosed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongRangeClosed.java"


# instance fields
.field private current:J

.field private final endInclusive:J

.field private hasNext:Z


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 12
    iput-wide p3, p0, Lcom/annimon/stream/operator/LongRangeClosed;->endInclusive:J

    .line 13
    iput-wide p1, p0, Lcom/annimon/stream/operator/LongRangeClosed;->current:J

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/annimon/stream/operator/LongRangeClosed;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongRangeClosed;->hasNext:Z

    return v0
.end method

.method public nextLong()J
    .locals 5

    .line 24
    iget-wide v0, p0, Lcom/annimon/stream/operator/LongRangeClosed;->current:J

    iget-wide v2, p0, Lcom/annimon/stream/operator/LongRangeClosed;->endInclusive:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongRangeClosed;->hasNext:Z

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 28
    iput-wide v2, p0, Lcom/annimon/stream/operator/LongRangeClosed;->current:J

    return-wide v0
.end method
