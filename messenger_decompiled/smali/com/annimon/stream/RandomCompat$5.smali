.class Lcom/annimon/stream/RandomCompat$5;
.super Ljava/lang/Object;
.source "RandomCompat.java"

# interfaces
.implements Lcom/annimon/stream/function/LongSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/RandomCompat;->longs(JJ)Lcom/annimon/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bound:J

.field private final boundMinus1:J

.field final synthetic this$0:Lcom/annimon/stream/RandomCompat;

.field final synthetic val$randomNumberBound:J

.field final synthetic val$randomNumberOrigin:J


# direct methods
.method constructor <init>(Lcom/annimon/stream/RandomCompat;JJ)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/annimon/stream/RandomCompat$5;->this$0:Lcom/annimon/stream/RandomCompat;

    iput-wide p2, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberBound:J

    iput-wide p4, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberOrigin:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-long/2addr p2, p4

    .line 286
    iput-wide p2, p0, Lcom/annimon/stream/RandomCompat$5;->bound:J

    const-wide/16 p4, 0x1

    sub-long/2addr p2, p4

    .line 287
    iput-wide p2, p0, Lcom/annimon/stream/RandomCompat$5;->boundMinus1:J

    return-void
.end method


# virtual methods
.method public getAsLong()J
    .locals 11

    .line 291
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$5;->this$0:Lcom/annimon/stream/RandomCompat;

    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 292
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$5;->bound:J

    iget-wide v4, p0, Lcom/annimon/stream/RandomCompat$5;->boundMinus1:J

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    and-long/2addr v0, v4

    .line 294
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberOrigin:J

    :goto_0
    add-long/2addr v0, v2

    goto :goto_3

    :cond_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    ushr-long/2addr v0, v2

    .line 298
    iget-wide v3, p0, Lcom/annimon/stream/RandomCompat$5;->boundMinus1:J

    add-long/2addr v3, v0

    iget-wide v5, p0, Lcom/annimon/stream/RandomCompat$5;->bound:J

    rem-long/2addr v0, v5

    sub-long/2addr v3, v0

    cmp-long v5, v3, v8

    if-gez v5, :cond_1

    .line 299
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$5;->this$0:Lcom/annimon/stream/RandomCompat;

    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    goto :goto_1

    .line 301
    :cond_1
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberOrigin:J

    goto :goto_0

    .line 304
    :cond_2
    :goto_2
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberOrigin:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberBound:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    return-wide v0

    .line 305
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$5;->this$0:Lcom/annimon/stream/RandomCompat;

    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    goto :goto_2
.end method
