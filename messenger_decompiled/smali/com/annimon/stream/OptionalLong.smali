.class public final Lcom/annimon/stream/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# static fields
.field private static final EMPTY:Lcom/annimon/stream/OptionalLong;


# instance fields
.field private final isPresent:Z

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/annimon/stream/OptionalLong;

    invoke-direct {v0}, Lcom/annimon/stream/OptionalLong;-><init>()V

    sput-object v0, Lcom/annimon/stream/OptionalLong;->EMPTY:Lcom/annimon/stream/OptionalLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    .line 53
    iput-wide p1, p0, Lcom/annimon/stream/OptionalLong;->value:J

    return-void
.end method

.method public static empty()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 29
    sget-object v0, Lcom/annimon/stream/OptionalLong;->EMPTY:Lcom/annimon/stream/OptionalLong;

    return-object v0
.end method

.method public static of(J)Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 39
    new-instance v0, Lcom/annimon/stream/OptionalLong;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/OptionalLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 267
    :cond_0
    instance-of v1, p1, Lcom/annimon/stream/OptionalLong;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 271
    :cond_1
    check-cast p1, Lcom/annimon/stream/OptionalLong;

    .line 272
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v3, p1, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/annimon/stream/OptionalLong;->value:J

    iget-wide v5, p1, Lcom/annimon/stream/OptionalLong;->value:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public executeIfAbsent(Ljava/lang/Runnable;)Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalLong;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-object p0
.end method

.method public executeIfPresent(Lcom/annimon/stream/function/LongConsumer;)Lcom/annimon/stream/OptionalLong;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalLong;->ifPresent(Lcom/annimon/stream/function/LongConsumer;)V

    return-object p0
.end method

.method public filter(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/OptionalLong;
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalLong;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 143
    :cond_0
    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAsLong()J
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 67
    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    return-wide v0

    .line 65
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 279
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Lcom/annimon/stream/function/LongConsumer;)V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 87
    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Lcom/annimon/stream/function/LongConsumer;Ljava/lang/Runnable;)V
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    return v0
.end method

.method public map(Lcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/OptionalLong;
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalLong;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    return-object p1

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method public mapToInt(Lcom/annimon/stream/function/LongToIntFunction;)Lcom/annimon/stream/OptionalInt;
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalLong;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    return-object p1

    .line 194
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongToIntFunction;->applyAsInt(J)I

    move-result p1

    invoke-static {p1}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    return-object p1
.end method

.method public mapToObj(Lcom/annimon/stream/function/LongFunction;)Lcom/annimon/stream/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/LongFunction<",
            "TU;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalLong;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    .line 177
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/OptionalLong;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/OptionalLong;",
            ">;)",
            "Lcom/annimon/stream/OptionalLong;"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalLong;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 223
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/OptionalLong;

    return-object p1
.end method

.method public orElse(J)J
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/annimon/stream/OptionalLong;->value:J

    :cond_0
    return-wide p1
.end method

.method public orElseGet(Lcom/annimon/stream/function/LongSupplier;)J
    .locals 2

    .line 245
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public orElseThrow(Lcom/annimon/stream/function/Supplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TX;>;)J^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 257
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 258
    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    return-wide v0

    .line 260
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public stream()Lcom/annimon/stream/LongStream;
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalLong;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    iget-wide v0, p0, Lcom/annimon/stream/OptionalLong;->value:J

    invoke-static {v0, v1}, Lcom/annimon/stream/LongStream;->of(J)Lcom/annimon/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 284
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/annimon/stream/OptionalLong;->value:J

    .line 285
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OptionalLong[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalLong.empty"

    :goto_0
    return-object v0
.end method
