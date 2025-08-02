.class public Lcom/annimon/stream/operator/LongMapToInt;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "LongMapToInt.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final mapper:Lcom/annimon/stream/function/LongToIntFunction;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongToIntFunction;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/LongMapToInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 13
    iput-object p2, p0, Lcom/annimon/stream/operator/LongMapToInt;->mapper:Lcom/annimon/stream/function/LongToIntFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMapToInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMapToInt;->mapper:Lcom/annimon/stream/function/LongToIntFunction;

    iget-object v1, p0, Lcom/annimon/stream/operator/LongMapToInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/LongToIntFunction;->applyAsInt(J)I

    move-result v0

    return v0
.end method
