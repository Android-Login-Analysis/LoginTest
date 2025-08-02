.class public final Lcom/annimon/stream/LongStream;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY:Lcom/annimon/stream/LongStream;

.field private static final UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/ToLongFunction<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/LongStream$1;

    invoke-direct {v1}, Lcom/annimon/stream/LongStream$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    sput-object v0, Lcom/annimon/stream/LongStream;->EMPTY:Lcom/annimon/stream/LongStream;

    .line 1098
    new-instance v0, Lcom/annimon/stream/LongStream$5;

    invoke-direct {v0}, Lcom/annimon/stream/LongStream$5;-><init>()V

    sput-object v0, Lcom/annimon/stream/LongStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;

    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 215
    iput-object p2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    return-void
.end method

.method private constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/LongStream;Lcom/annimon/stream/LongStream;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 199
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongConcat;

    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    iget-object v3, p1, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/LongConcat;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 202
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/annimon/stream/LongStream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lcom/annimon/stream/LongStream;
    .locals 1

    .line 44
    sget-object v0, Lcom/annimon/stream/LongStream;->EMPTY:Lcom/annimon/stream/LongStream;

    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/LongSupplier;)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 127
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongGenerate;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/LongGenerate;-><init>(Lcom/annimon/stream/function/LongSupplier;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static iterate(JLcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 0

    .line 179
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {p0, p1, p3}, Lcom/annimon/stream/LongStream;->iterate(JLcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/annimon/stream/LongStream;->takeWhile(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(JLcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 154
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongIterate;

    invoke-direct {v1, p0, p1, p2}, Lcom/annimon/stream/operator/LongIterate;-><init>(JLcom/annimon/stream/function/LongUnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static of(J)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 81
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongArray;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    invoke-direct {v1, v2}, Lcom/annimon/stream/operator/LongArray;-><init>([J)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static of(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)Lcom/annimon/stream/LongStream;
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/annimon/stream/LongStream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static varargs of([J)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 67
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    array-length v0, p0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/LongArray;-><init>([J)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static range(JJ)Lcom/annimon/stream/LongStream;
    .locals 2

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x1

    sub-long/2addr p2, v0

    .line 98
    invoke-static {p0, p1, p2, p3}, Lcom/annimon/stream/LongStream;->rangeClosed(JJ)Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(JJ)Lcom/annimon/stream/LongStream;
    .locals 2

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    .line 115
    invoke-static {p0, p1}, Lcom/annimon/stream/LongStream;->of(J)Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0

    .line 116
    :cond_1
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongRangeClosed;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/annimon/stream/operator/LongRangeClosed;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/LongPredicate;)Z
    .locals 2

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public anyMatch(Lcom/annimon/stream/function/LongPredicate;)Z
    .locals 2

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public boxed()Lcom/annimon/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1091
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1093
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/ObjLongConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/ObjLongConsumer<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 790
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 791
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 793
    invoke-interface {p2, p1, v0, v1}, Lcom/annimon/stream/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public count()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 854
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public custom(Lcom/annimon/stream/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "Lcom/annimon/stream/LongStream;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 303
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public distinct()Lcom/annimon/stream/LongStream;
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->distinct()Lcom/annimon/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/annimon/stream/LongStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->mapToLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 632
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongDropWhile;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongDropWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public filter(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 336
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongFilter;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongFilter;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public filterNot(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 0

    .line 348
    invoke-static {p1}, Lcom/annimon/stream/function/LongPredicate$Util;->negate(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/LongPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/LongStream;->filter(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/OptionalLong;
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0

    .line 967
    :cond_0
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public findLast()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 981
    new-instance v0, Lcom/annimon/stream/LongStream$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream$4;-><init>(Lcom/annimon/stream/LongStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/LongStream;->reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/OptionalLong;
    .locals 3

    .line 1048
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 1053
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1056
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0

    .line 1054
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LongStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flatMap(Lcom/annimon/stream/function/LongFunction;)Lcom/annimon/stream/LongStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/LongFunction<",
            "+",
            "Lcom/annimon/stream/LongStream;",
            ">;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 431
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongFlatMap;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongFlatMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/LongConsumer;)V
    .locals 2

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/LongStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 658
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 659
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongLimit;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/LongLimit;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0

    .line 657
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public map(Lcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 369
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMap;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongUnaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public mapToDouble(Lcom/annimon/stream/function/LongToDoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 409
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMapToDouble;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMapToDouble;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongToDoubleFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public mapToInt(Lcom/annimon/stream/function/LongToIntFunction;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 396
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMapToInt;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMapToInt;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongToIntFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public mapToObj(Lcom/annimon/stream/function/LongFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/LongFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMapToObj;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMapToObj;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public max()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 837
    new-instance v0, Lcom/annimon/stream/LongStream$3;

    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream$3;-><init>(Lcom/annimon/stream/LongStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/LongStream;->reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public min()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 820
    new-instance v0, Lcom/annimon/stream/LongStream$2;

    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream$2;-><init>(Lcom/annimon/stream/LongStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/LongStream;->reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public noneMatch(Lcom/annimon/stream/function/LongPredicate;)Z
    .locals 2

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 1069
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Lcom/annimon/stream/internal/Params;

    invoke-direct {v0}, Lcom/annimon/stream/internal/Params;-><init>()V

    .line 1073
    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    goto :goto_0

    .line 1076
    :cond_0
    iget-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1077
    invoke-static {v1, p1}, Lcom/annimon/stream/internal/Compose;->runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1079
    :goto_0
    new-instance p1, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/LongConsumer;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 520
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongPeek;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongPeek;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongConsumer;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public reduce(JLcom/annimon/stream/function/LongBinaryOperator;)J
    .locals 2

    .line 732
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 734
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/annimon/stream/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 755
    :goto_0
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 756
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move-wide v1, v3

    goto :goto_0

    .line 761
    :cond_0
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/annimon/stream/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 764
    invoke-static {v1, v2}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/LongStream;
    .locals 4

    if-lez p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    .line 508
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongSample;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongSample;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;I)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0

    .line 506
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepWidth cannot be zero or negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scan(JLcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 571
    invoke-static {p3}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/annimon/stream/operator/LongScanIdentity;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;JLcom/annimon/stream/function/LongBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public scan(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 544
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongScan;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongScan;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public single()J
    .locals 3

    .line 1013
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 1018
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    .line 1019
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LongStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "LongStream contains no element"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/LongStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 687
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongSkip;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/LongSkip;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0

    .line 685
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sorted()Lcom/annimon/stream/LongStream;
    .locals 4

    .line 465
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongSorted;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/LongSorted;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 485
    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/annimon/stream/LongStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->mapToLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public sum()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 805
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 806
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 613
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongTakeUntil;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongTakeUntil;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public takeWhile(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 591
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongTakeWhile;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongTakeWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public toArray()[J
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toLongArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)[J

    move-result-object v0

    return-object v0
.end method
