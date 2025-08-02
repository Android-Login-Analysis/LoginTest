.class public final Lcom/annimon/stream/DoubleStream;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY:Lcom/annimon/stream/DoubleStream;

.field private static final UNBOX_FUNCTION:Lcom/annimon/stream/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    new-instance v1, Lcom/annimon/stream/DoubleStream$1;

    invoke-direct {v1}, Lcom/annimon/stream/DoubleStream$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    sput-object v0, Lcom/annimon/stream/DoubleStream;->EMPTY:Lcom/annimon/stream/DoubleStream;

    .line 1082
    new-instance v0, Lcom/annimon/stream/DoubleStream$5;

    invoke-direct {v0}, Lcom/annimon/stream/DoubleStream$5;-><init>()V

    sput-object v0, Lcom/annimon/stream/DoubleStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToDoubleFunction;

    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 180
    iput-object p2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    return-void
.end method

.method private constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/DoubleStream;Lcom/annimon/stream/DoubleStream;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 164
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    new-instance v1, Lcom/annimon/stream/operator/DoubleConcat;

    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    iget-object v3, p1, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/DoubleConcat;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 167
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/annimon/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lcom/annimon/stream/DoubleStream;
    .locals 1

    .line 44
    sget-object v0, Lcom/annimon/stream/DoubleStream;->EMPTY:Lcom/annimon/stream/DoubleStream;

    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/DoubleSupplier;)Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 92
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    new-instance v1, Lcom/annimon/stream/operator/DoubleGenerate;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/DoubleGenerate;-><init>(Lcom/annimon/stream/function/DoubleSupplier;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public static iterate(DLcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 0

    .line 144
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p0, p1, p3}, Lcom/annimon/stream/DoubleStream;->iterate(DLcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/annimon/stream/DoubleStream;->takeWhile(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(DLcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 119
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    new-instance v1, Lcom/annimon/stream/operator/DoubleIterate;

    invoke-direct {v1, p0, p1, p2}, Lcom/annimon/stream/operator/DoubleIterate;-><init>(DLcom/annimon/stream/function/DoubleUnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public static of(D)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 81
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    new-instance v1, Lcom/annimon/stream/operator/DoubleArray;

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    invoke-direct {v1, v2}, Lcom/annimon/stream/operator/DoubleArray;-><init>([D)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public static of(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)Lcom/annimon/stream/DoubleStream;
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public static varargs of([D)Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 67
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    array-length v0, p0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/annimon/stream/DoubleStream;->empty()Lcom/annimon/stream/DoubleStream;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    new-instance v1, Lcom/annimon/stream/operator/DoubleArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/DoubleArray;-><init>([D)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/DoublePredicate;)Z
    .locals 2

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public anyMatch(Lcom/annimon/stream/function/DoublePredicate;)Z
    .locals 2

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public average()Lcom/annimon/stream/OptionalDouble;
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v0

    .line 837
    :goto_0
    iget-object v6, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v6}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 838
    iget-object v6, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v6}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v6

    add-double/2addr v2, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_0

    :cond_0
    cmp-long v6, v4, v0

    if-nez v6, :cond_1

    .line 841
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    move-result-object v0

    return-object v0

    :cond_1
    long-to-double v0, v4

    .line 842
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public boxed()Lcom/annimon/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1077
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/ObjDoubleConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/ObjDoubleConsumer<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 756
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 757
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    .line 759
    invoke-interface {p2, p1, v0, v1}, Lcom/annimon/stream/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public count()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 820
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

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
            "Lcom/annimon/stream/DoubleStream;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 269
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public distinct()Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcom/annimon/stream/DoubleStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->distinct()Lcom/annimon/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/annimon/stream/DoubleStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToDoubleFunction;

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->mapToDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 598
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleDropWhile;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleDropWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public filter(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 302
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleFilter;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleFilter;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public filterNot(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 0

    .line 314
    invoke-static {p1}, Lcom/annimon/stream/function/DoublePredicate$Util;->negate(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/DoubleStream;->filter(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/OptionalDouble;
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    move-result-object v0

    return-object v0

    .line 951
    :cond_0
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public findLast()Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 965
    new-instance v0, Lcom/annimon/stream/DoubleStream$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/DoubleStream$4;-><init>(Lcom/annimon/stream/DoubleStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/DoubleStream;->reduce(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/OptionalDouble;
    .locals 3

    .line 1032
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    move-result-object v0

    return-object v0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    .line 1037
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1040
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    move-result-object v0

    return-object v0

    .line 1038
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DoubleStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flatMap(Lcom/annimon/stream/function/DoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/DoubleFunction<",
            "+",
            "Lcom/annimon/stream/DoubleStream;",
            ">;)",
            "Lcom/annimon/stream/DoubleStream;"
        }
    .end annotation

    .line 397
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleFlatMap;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleFlatMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/DoubleConsumer;)V
    .locals 2

    .line 664
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleConsumer;->accept(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/DoubleStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 624
    invoke-static {}, Lcom/annimon/stream/DoubleStream;->empty()Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1

    .line 625
    :cond_0
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleLimit;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/DoubleLimit;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0

    .line 623
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public map(Lcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 335
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleMap;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleUnaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public mapToInt(Lcom/annimon/stream/function/DoubleToIntFunction;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 362
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleMapToInt;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleMapToInt;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleToIntFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public mapToLong(Lcom/annimon/stream/function/DoubleToLongFunction;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 375
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleMapToLong;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleMapToLong;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleToLongFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public mapToObj(Lcom/annimon/stream/function/DoubleFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/DoubleFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleMapToObj;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleMapToObj;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public max()Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 803
    new-instance v0, Lcom/annimon/stream/DoubleStream$3;

    invoke-direct {v0, p0}, Lcom/annimon/stream/DoubleStream$3;-><init>(Lcom/annimon/stream/DoubleStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/DoubleStream;->reduce(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public min()Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 786
    new-instance v0, Lcom/annimon/stream/DoubleStream$2;

    invoke-direct {v0, p0}, Lcom/annimon/stream/DoubleStream$2;-><init>(Lcom/annimon/stream/DoubleStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/DoubleStream;->reduce(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public noneMatch(Lcom/annimon/stream/function/DoublePredicate;)Z
    .locals 2

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 1053
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Lcom/annimon/stream/internal/Params;

    invoke-direct {v0}, Lcom/annimon/stream/internal/Params;-><init>()V

    .line 1057
    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1061
    invoke-static {v1, p1}, Lcom/annimon/stream/internal/Compose;->runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1063
    :goto_0
    new-instance p1, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/DoubleConsumer;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 486
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoublePeek;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoublePeek;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleConsumer;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public reduce(DLcom/annimon/stream/function/DoubleBinaryOperator;)D
    .locals 2

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    .line 700
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/annimon/stream/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide p1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public reduce(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/OptionalDouble;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 721
    :goto_0
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move-wide v1, v3

    goto :goto_0

    .line 727
    :cond_0
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/annimon/stream/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 730
    invoke-static {v1, v2}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/DoubleStream;
    .locals 4

    if-lez p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    .line 474
    :cond_0
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleSample;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleSample;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;I)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0

    .line 472
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepWidth cannot be zero or negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scan(DLcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 537
    invoke-static {p3}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/annimon/stream/operator/DoubleScanIdentity;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;DLcom/annimon/stream/function/DoubleBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public scan(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 510
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleScan;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleScan;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public single()D
    .locals 3

    .line 997
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    .line 1002
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    .line 1003
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DoubleStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "DoubleStream contains no element"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/DoubleStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 653
    :cond_0
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleSkip;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/DoubleSkip;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0

    .line 651
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sorted()Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 431
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleSorted;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/DoubleSorted;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/DoubleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/annimon/stream/DoubleStream;"
        }
    .end annotation

    .line 451
    invoke-virtual {p0}, Lcom/annimon/stream/DoubleStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/annimon/stream/DoubleStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToDoubleFunction;

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->mapToDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public sum()D
    .locals 4

    const-wide/16 v0, 0x0

    .line 771
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 579
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleTakeUntil;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleTakeUntil;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public takeWhile(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 557
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleTakeWhile;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleTakeWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public toArray()[D
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toDoubleArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)[D

    move-result-object v0

    return-object v0
.end method
