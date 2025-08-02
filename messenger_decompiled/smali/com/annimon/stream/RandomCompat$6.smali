.class Lcom/annimon/stream/RandomCompat$6;
.super Ljava/lang/Object;
.source "RandomCompat.java"

# interfaces
.implements Lcom/annimon/stream/function/DoubleSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/RandomCompat;->doubles(DD)Lcom/annimon/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bound:D

.field final synthetic this$0:Lcom/annimon/stream/RandomCompat;

.field final synthetic val$randomNumberBound:D

.field final synthetic val$randomNumberOrigin:D


# direct methods
.method constructor <init>(Lcom/annimon/stream/RandomCompat;DD)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/annimon/stream/RandomCompat$6;->this$0:Lcom/annimon/stream/RandomCompat;

    iput-wide p2, p0, Lcom/annimon/stream/RandomCompat$6;->val$randomNumberBound:D

    iput-wide p4, p0, Lcom/annimon/stream/RandomCompat$6;->val$randomNumberOrigin:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-double/2addr p2, p4

    .line 330
    iput-wide p2, p0, Lcom/annimon/stream/RandomCompat$6;->bound:D

    return-void
.end method


# virtual methods
.method public getAsDouble()D
    .locals 5

    .line 334
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$6;->this$0:Lcom/annimon/stream/RandomCompat;

    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$6;->bound:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$6;->val$randomNumberOrigin:D

    add-double/2addr v0, v2

    .line 335
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$6;->val$randomNumberBound:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 336
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method
