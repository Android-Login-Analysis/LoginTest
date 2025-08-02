.class public Lcom/annimon/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final MATCH_ALL:I = 0x1

.field private static final MATCH_ANY:I = 0x0

.field private static final MATCH_NONE:I = 0x2


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method private constructor <init>(Lcom/annimon/stream/internal/Params;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/internal/Params;",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/annimon/stream/iterator/LazyIterator;

    invoke-direct {v0, p2}, Lcom/annimon/stream/iterator/LazyIterator;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/internal/Params;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    .line 330
    iput-object p2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/annimon/stream/iterator/LazyIterator;

    invoke-direct {v0, p1}, Lcom/annimon/stream/iterator/LazyIterator;-><init>(Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 317
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/Stream;Lcom/annimon/stream/Stream;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/Stream<",
            "+TT;>;",
            "Lcom/annimon/stream/Stream<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 249
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjConcat;

    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    iget-object v3, p1, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/ObjConcat;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    .line 252
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/annimon/stream/Stream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 179
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjGenerate;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/ObjGenerate;-><init>(Lcom/annimon/stream/function/Supplier;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static iterate(Ljava/lang/Object;Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/UnaryOperator;)Lcom/annimon/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/UnaryOperator<",
            "TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 228
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {p0, p2}, Lcom/annimon/stream/Stream;->iterate(Ljava/lang/Object;Lcom/annimon/stream/function/UnaryOperator;)Lcom/annimon/stream/Stream;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->takeWhile(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;Lcom/annimon/stream/function/UnaryOperator;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/annimon/stream/function/UnaryOperator<",
            "TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 202
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjIterate;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/operator/ObjIterate;-><init>(Ljava/lang/Object;Lcom/annimon/stream/function/UnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method private match(Lcom/annimon/stream/function/Predicate;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 1920
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1921
    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1937
    invoke-interface {p1, v3}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    xor-int v4, v3, p2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method public static of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/annimon/stream/Stream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static of(Ljava/util/Iterator;)Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/annimon/stream/Stream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map;)Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/annimon/stream/Stream;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    array-length v0, p0

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0

    .line 90
    :cond_0
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/ObjArray;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 117
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 104
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static range(II)Lcom/annimon/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {p0, p1}, Lcom/annimon/stream/IntStream;->range(II)Lcom/annimon/stream/IntStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static range(JJ)Lcom/annimon/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {p0, p1, p2, p3}, Lcom/annimon/stream/LongStream;->range(JJ)Lcom/annimon/stream/LongStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(II)Lcom/annimon/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-static {p0, p1}, Lcom/annimon/stream/IntStream;->rangeClosed(II)Lcom/annimon/stream/IntStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(JJ)Lcom/annimon/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-static {p0, p1, p2, p3}, Lcom/annimon/stream/LongStream;->rangeClosed(JJ)Lcom/annimon/stream/LongStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lcom/annimon/stream/Stream;Lcom/annimon/stream/Stream;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/Stream<",
            "+TF;>;",
            "Lcom/annimon/stream/Stream<",
            "+TS;>;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TF;-TS;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    iget-object p1, p1, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-static {p0, p1, p2}, Lcom/annimon/stream/Stream;->zip(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TF;>;",
            "Ljava/util/Iterator<",
            "+TS;>;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TF;-TS;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 306
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjZip;

    invoke-direct {v1, p0, p1, p2}, Lcom/annimon/stream/operator/ObjZip;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1683
    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;->match(Lcom/annimon/stream/function/Predicate;I)Z

    move-result p1

    return p1
.end method

.method public anyMatch(Lcom/annimon/stream/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1660
    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;->match(Lcom/annimon/stream/function/Predicate;I)Z

    move-result p1

    return p1
.end method

.method public chunkBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 913
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjChunkBy;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjChunkBy;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1906
    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1908
    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public collect(Lcom/annimon/stream/Collector;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/Collector<",
            "-TT;TA;TR;>;)TR;"
        }
    .end annotation

    .line 1576
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1577
    :goto_0
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1579
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1581
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1582
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1583
    :cond_1
    invoke-static {}, Lcom/annimon/stream/Collectors;->castIdentity()Lcom/annimon/stream/function/Function;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/BiConsumer<",
            "TR;-TT;>;)TR;"
        }
    .end annotation

    .line 1556
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 1557
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1559
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public count()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 1633
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1634
    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
            "Lcom/annimon/stream/Stream<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    .line 410
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public distinct()Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 779
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjDistinct;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/ObjDistinct;-><init>(Ljava/util/Iterator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public distinctBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 800
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjDistinctBy;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjDistinctBy;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1227
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjDropWhile;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjDropWhile;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public dropWhileIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1275
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjDropWhileIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjDropWhileIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public dropWhileIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1249
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->dropWhileIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFilter;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFilter;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 480
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFilterIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjFilterIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 453
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->filterIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 494
    invoke-static {p1}, Lcom/annimon/stream/function/Predicate$Util;->negate(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1776
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Optional;->of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0

    .line 1779
    :cond_0
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "Lcom/annimon/stream/IntPair<",
            "TT;>;>;"
        }
    .end annotation

    .line 1756
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1757
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1758
    invoke-interface {p3, p1, v0}, Lcom/annimon/stream/function/IndexedPredicate;->test(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    new-instance p2, Lcom/annimon/stream/IntPair;

    invoke-direct {p2, p1, v0}, Lcom/annimon/stream/IntPair;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Lcom/annimon/stream/Optional;->of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/2addr p1, p2

    goto :goto_0

    .line 1763
    :cond_1
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public findIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "Lcom/annimon/stream/IntPair<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1728
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->findIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public findLast()Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1793
    new-instance v0, Lcom/annimon/stream/Stream$6;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$6;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->reduce(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1862
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1864
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1867
    invoke-static {v0}, Lcom/annimon/stream/Optional;->of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0

    .line 1865
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1870
    :cond_1
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0
.end method

.method public flatMap(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/Stream<",
            "+TR;>;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 671
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFlatMap;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFlatMap;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public flatMapToDouble(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/DoubleStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/DoubleStream;",
            ">;)",
            "Lcom/annimon/stream/DoubleStream;"
        }
    .end annotation

    .line 716
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFlatMapToDouble;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFlatMapToDouble;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public flatMapToInt(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/IntStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/IntStream;",
            ">;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 686
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFlatMapToInt;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFlatMapToInt;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public flatMapToLong(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/LongStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/LongStream;",
            ">;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 701
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFlatMapToLong;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFlatMapToLong;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1345
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachIndexed(IILcom/annimon/stream/function/IndexedConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1374
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lcom/annimon/stream/function/IndexedConsumer;->accept(ILjava/lang/Object;)V

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachIndexed(Lcom/annimon/stream/function/IndexedConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1359
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->forEachIndexed(IILcom/annimon/stream/function/IndexedConsumer;)V

    return-void
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public groupBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 888
    invoke-static {p1}, Lcom/annimon/stream/Collectors;->groupingBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->collect(Lcom/annimon/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 889
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public indexed()Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "Lcom/annimon/stream/IntPair<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 735
    invoke-virtual {p0, v0, v1}, Lcom/annimon/stream/Stream;->indexed(II)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public indexed(II)Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/annimon/stream/Stream<",
            "Lcom/annimon/stream/IntPair<",
            "TT;>;>;"
        }
    .end annotation

    .line 756
    new-instance v0, Lcom/annimon/stream/Stream$2;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$2;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/annimon/stream/Stream;->mapIndexed(IILcom/annimon/stream/function/IndexedFunction;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1305
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1

    .line 1307
    :cond_0
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjLimit;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/ObjLimit;-><init>(Ljava/util/Iterator;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0

    .line 1302
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 558
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMap;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjMap;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public mapIndexed(IILcom/annimon/stream/function/IndexedFunction;)Lcom/annimon/stream/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(II",
            "Lcom/annimon/stream/function/IndexedFunction<",
            "-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 606
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMapIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjMapIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public mapIndexed(Lcom/annimon/stream/function/IndexedFunction;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IndexedFunction<",
            "-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 580
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->mapIndexed(IILcom/annimon/stream/function/IndexedFunction;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public mapToDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/DoubleStream;"
        }
    .end annotation

    .line 649
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMapToDouble;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjMapToDouble;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/ToDoubleFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/IntStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToIntFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 621
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMapToInt;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjMapToInt;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/ToIntFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public mapToLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/LongStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToLongFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 635
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMapToLong;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjMapToLong;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/ToLongFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public max(Ljava/util/Comparator;)Lcom/annimon/stream/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1621
    invoke-static {p1}, Lcom/annimon/stream/function/BinaryOperator$Util;->maxBy(Ljava/util/Comparator;)Lcom/annimon/stream/function/BinaryOperator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->reduce(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/util/Comparator;)Lcom/annimon/stream/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1602
    invoke-static {p1}, Lcom/annimon/stream/function/BinaryOperator$Util;->minBy(Ljava/util/Comparator;)Lcom/annimon/stream/function/BinaryOperator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->reduce(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public noneMatch(Lcom/annimon/stream/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1706
    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;->match(Lcom/annimon/stream/function/Predicate;I)Z

    move-result p1

    return p1
.end method

.method public nullsOnly()Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 538
    invoke-static {}, Lcom/annimon/stream/function/Predicate$Util;->notNull()Lcom/annimon/stream/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->filterNot(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1884
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    if-nez v0, :cond_0

    .line 1887
    new-instance v0, Lcom/annimon/stream/internal/Params;

    invoke-direct {v0}, Lcom/annimon/stream/internal/Params;-><init>()V

    .line 1888
    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    goto :goto_0

    .line 1891
    :cond_0
    iget-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1892
    invoke-static {v1, p1}, Lcom/annimon/stream/internal/Compose;->runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1894
    :goto_0
    new-instance p1, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1010
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjPeek;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjPeek;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Consumer;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public reduce(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/BiFunction<",
            "TT;TT;TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1481
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1482
    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move-object v1, v2

    goto :goto_0

    .line 1487
    :cond_0
    invoke-interface {p1, v1, v2}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1490
    invoke-static {v1}, Lcom/annimon/stream/Optional;->of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public reduce(Ljava/lang/Object;Lcom/annimon/stream/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TR;-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 1400
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1402
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public reduceIndexed(IILjava/lang/Object;Lcom/annimon/stream/function/IndexedBiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(IITR;",
            "Lcom/annimon/stream/function/IndexedBiFunction<",
            "-TR;-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 1461
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1463
    invoke-interface {p4, p1, p3, v0}, Lcom/annimon/stream/function/IndexedBiFunction;->apply(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public reduceIndexed(Ljava/lang/Object;Lcom/annimon/stream/function/IndexedBiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/annimon/stream/function/IndexedBiFunction<",
            "-TR;-TT;+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1429
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/annimon/stream/Stream;->reduceIndexed(IILjava/lang/Object;Lcom/annimon/stream/function/IndexedBiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    if-lez p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    .line 935
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/annimon/stream/Stream;->slidingWindow(II)Lcom/annimon/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/annimon/stream/Stream$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$4;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1

    .line 933
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepWidth cannot be zero or negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scan(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/BiFunction<",
            "TT;TT;TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1034
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjScan;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjScan;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public scan(Ljava/lang/Object;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TR;-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 1062
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/ObjScanIdentity;-><init>(Ljava/util/Iterator;Ljava/lang/Object;Lcom/annimon/stream/function/BiFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public select(Ljava/lang/Class;)Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TTT;>;"
        }
    .end annotation

    .line 509
    new-instance v0, Lcom/annimon/stream/Stream$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/Stream$1;-><init>(Lcom/annimon/stream/Stream;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public single()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1826
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1828
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1829
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1834
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Stream contains no element"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1334
    :cond_0
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjSkip;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/ObjSkip;-><init>(Ljava/util/Iterator;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0

    .line 1332
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public slidingWindow(I)Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 962
    invoke-virtual {p0, p1, v0}, Lcom/annimon/stream/Stream;->slidingWindow(II)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public slidingWindow(II)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    .line 998
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjSlidingWindow;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/ObjSlidingWindow;-><init>(Ljava/util/Iterator;II)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0

    .line 997
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "stepWidth cannot be zero or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 996
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "windowSize cannot be zero or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sortBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Comparable<",
            "-TR;>;>(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 868
    invoke-static {p1}, Lcom/annimon/stream/ComparatorCompat;->comparing(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public sorted()Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 819
    new-instance v0, Lcom/annimon/stream/Stream$3;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$3;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 847
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjSorted;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjSorted;-><init>(Ljava/util/Iterator;Ljava/util/Comparator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1154
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjTakeUntil;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjTakeUntil;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeUntilIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1206
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeUntilIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1178
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->takeUntilIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1082
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjTakeWhile;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjTakeWhile;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeWhileIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1130
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeWhileIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1104
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->takeWhileIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1502
    new-instance v0, Lcom/annimon/stream/Stream$5;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$5;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->toArray(Lcom/annimon/stream/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/annimon/stream/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IntFunction<",
            "[TR;>;)[TR;"
        }
    .end annotation

    .line 1521
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-static {v0, p1}, Lcom/annimon/stream/internal/Operators;->toArray(Ljava/util/Iterator;Lcom/annimon/stream/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1538
    :goto_0
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public withoutNulls()Lcom/annimon/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 526
    invoke-static {}, Lcom/annimon/stream/function/Predicate$Util;->notNull()Lcom/annimon/stream/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method
