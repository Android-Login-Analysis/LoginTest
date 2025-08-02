.class public Lcom/annimon/stream/operator/LongPeek;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongPeek.java"


# instance fields
.field private final action:Lcom/annimon/stream/function/LongConsumer;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongConsumer;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/LongPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 13
    iput-object p2, p0, Lcom/annimon/stream/operator/LongPeek;->action:Lcom/annimon/stream/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/annimon/stream/operator/LongPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/LongPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/annimon/stream/operator/LongPeek;->action:Lcom/annimon/stream/function/LongConsumer;

    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    return-wide v0
.end method
