.class public Lcom/annimon/stream/operator/LongMapToObj;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "LongMapToObj.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaIterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final mapper:Lcom/annimon/stream/function/LongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/LongFunction<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;",
            "Lcom/annimon/stream/function/LongFunction<",
            "+TR;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/LongMapToObj;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/LongMapToObj;->mapper:Lcom/annimon/stream/function/LongFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMapToObj;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextIteration()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMapToObj;->mapper:Lcom/annimon/stream/function/LongFunction;

    iget-object v1, p0, Lcom/annimon/stream/operator/LongMapToObj;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
