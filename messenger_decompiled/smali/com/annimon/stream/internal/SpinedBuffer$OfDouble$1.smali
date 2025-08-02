.class Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "SpinedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:J

.field final synthetic this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;


# direct methods
.method constructor <init>(Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;)V
    .locals 2

    .line 384
    iput-object p1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;

    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    const-wide/16 v0, 0x0

    .line 386
    iput-wide v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->index:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 395
    iget-wide v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->index:J

    iget-object v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;

    invoke-virtual {v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->count()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextDouble()D
    .locals 5

    .line 390
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;

    iget-wide v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->index:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->index:J

    invoke-virtual {v0, v1, v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->get(J)D

    move-result-wide v0

    return-wide v0
.end method
