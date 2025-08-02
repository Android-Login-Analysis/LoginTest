.class public final Lcom/annimon/stream/IntStream;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY:Lcom/annimon/stream/IntStream;

.field private static final UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/ToIntFunction<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/IntStream$1;

    invoke-direct {v1}, Lcom/annimon/stream/IntStream$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    sput-object v0, Lcom/annimon/stream/IntStream;->EMPTY:Lcom/annimon/stream/IntStream;

    .line 1146
    new-instance v0, Lcom/annimon/stream/IntStream$5;

    invoke-direct {v0}, Lcom/annimon/stream/IntStream$5;-><init>()V

    sput-object v0, Lcom/annimon/stream/IntStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;

    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 235
    iput-object p2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    return-void
.end method

.method private constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/IntStream;Lcom/annimon/stream/IntStream;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 220
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntConcat;

    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    iget-object v3, p1, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/IntConcat;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 223
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/annimon/stream/IntStream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lcom/annimon/stream/IntStream;
    .locals 1

    .line 41
    sget-object v0, Lcom/annimon/stream/IntStream;->EMPTY:Lcom/annimon/stream/IntStream;

    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/IntSupplier;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 144
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntGenerate;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntGenerate;-><init>(Lcom/annimon/stream/function/IntSupplier;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static iterate(ILcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 0

    .line 198
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p0, p2}, Lcom/annimon/stream/IntStream;->iterate(ILcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/annimon/stream/IntStream;->takeWhile(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(ILcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 173
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntIterate;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/operator/IntIterate;-><init>(ILcom/annimon/stream/function/IntUnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static of(I)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 78
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntArray;

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntArray;-><init>([I)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static of(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)Lcom/annimon/stream/IntStream;
    .locals 1

    .line 52
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/annimon/stream/IntStream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static varargs of([I)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 64
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    array-length v0, p0

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntArray;-><init>([I)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static ofCodePoints(Ljava/lang/CharSequence;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 94
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntCodePoints;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntCodePoints;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static range(II)Lcom/annimon/stream/IntStream;
    .locals 0

    if-lt p0, p1, :cond_0

    .line 109
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 111
    invoke-static {p0, p1}, Lcom/annimon/stream/IntStream;->rangeClosed(II)Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(II)Lcom/annimon/stream/IntStream;
    .locals 2

    if-le p0, p1, :cond_0

    .line 126
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p0, p1, :cond_1

    .line 128
    invoke-static {p0}, Lcom/annimon/stream/IntStream;->of(I)Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0

    .line 130
    :cond_1
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntRangeClosed;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/operator/IntRangeClosed;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/IntPredicate;)Z
    .locals 1

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public anyMatch(Lcom/annimon/stream/function/IntPredicate;)Z
    .locals 1

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1141
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/ObjIntConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/ObjIntConsumer<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 826
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 827
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 829
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public count()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 893
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

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
            "Lcom/annimon/stream/IntStream;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 314
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public distinct()Lcom/annimon/stream/IntStream;
    .locals 2

    .line 470
    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->distinct()Lcom/annimon/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/annimon/stream/IntStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 656
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntDropWhile;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntDropWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 349
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntFilter;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntFilter;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public filterNot(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 0

    .line 363
    invoke-static {p1}, Lcom/annimon/stream/function/IntPredicate$Util;->negate(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/IntStream;->filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_0
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public findLast()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1026
    new-instance v0, Lcom/annimon/stream/IntStream$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream$4;-><init>(Lcom/annimon/stream/IntStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/IntStream;->reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/OptionalInt;
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 1097
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    invoke-static {v0}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0

    .line 1098
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IntStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_1
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public flatMap(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/IntStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IntFunction<",
            "+",
            "Lcom/annimon/stream/IntStream;",
            ">;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 451
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntFlatMap;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntFlatMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/IntConsumer;)V
    .locals 1

    .line 731
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/IntStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 685
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1

    .line 687
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntLimit;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/IntLimit;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0

    .line 682
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public map(Lcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 384
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMap;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntUnaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public mapToDouble(Lcom/annimon/stream/function/IntToDoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 428
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMapToDouble;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMapToDouble;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntToDoubleFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public mapToLong(Lcom/annimon/stream/function/IntToLongFunction;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 413
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMapToLong;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMapToLong;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntToLongFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public mapToObj(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IntFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 398
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMapToObj;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMapToObj;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public max()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 876
    new-instance v0, Lcom/annimon/stream/IntStream$3;

    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream$3;-><init>(Lcom/annimon/stream/IntStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/IntStream;->reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public min()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 858
    new-instance v0, Lcom/annimon/stream/IntStream$2;

    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream$2;-><init>(Lcom/annimon/stream/IntStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/IntStream;->reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public noneMatch(Lcom/annimon/stream/function/IntPredicate;)Z
    .locals 1

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 1117
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    if-nez v0, :cond_0

    .line 1120
    new-instance v0, Lcom/annimon/stream/internal/Params;

    invoke-direct {v0}, Lcom/annimon/stream/internal/Params;-><init>()V

    .line 1121
    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    goto :goto_0

    .line 1124
    :cond_0
    iget-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1125
    invoke-static {v1, p1}, Lcom/annimon/stream/internal/Compose;->runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1127
    :goto_0
    new-instance p1, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 544
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntPeek;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntPeek;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntConsumer;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public reduce(ILcom/annimon/stream/function/IntBinaryOperator;)I
    .locals 1

    .line 766
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 768
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 790
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 791
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v2

    goto :goto_0

    .line 797
    :cond_0
    invoke-interface {p1, v1, v2}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 800
    invoke-static {v1}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/IntStream;
    .locals 4

    if-lez p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    .line 530
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntSample;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntSample;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;I)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0

    .line 528
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepWidth cannot be zero or negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scan(ILcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 595
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/IntScanIdentity;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;ILcom/annimon/stream/function/IntBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public scan(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 568
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntScan;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntScan;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public single()I
    .locals 2

    .line 1059
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 1061
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1062
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IntStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "IntStream contains no element"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/IntStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 719
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntSkip;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/IntSkip;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0

    .line 715
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sorted()Lcom/annimon/stream/IntStream;
    .locals 4

    .line 488
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntSorted;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/IntSorted;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/annimon/stream/IntStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public sum()I
    .locals 2

    const/4 v0, 0x0

    .line 841
    :goto_0
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 637
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntTakeUntil;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntTakeUntil;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public takeWhile(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 615
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntTakeWhile;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntTakeWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public toArray()[I
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toIntArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)[I

    move-result-object v0

    return-object v0
.end method
