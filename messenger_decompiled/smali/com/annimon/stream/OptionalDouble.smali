.class public final Lcom/annimon/stream/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final EMPTY:Lcom/annimon/stream/OptionalDouble;


# instance fields
.field private final isPresent:Z

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/annimon/stream/OptionalDouble;

    invoke-direct {v0}, Lcom/annimon/stream/OptionalDouble;-><init>()V

    sput-object v0, Lcom/annimon/stream/OptionalDouble;->EMPTY:Lcom/annimon/stream/OptionalDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    return-void
.end method

.method private constructor <init>(D)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 54
    iput-wide p1, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    return-void
.end method

.method public static empty()Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 30
    sget-object v0, Lcom/annimon/stream/OptionalDouble;->EMPTY:Lcom/annimon/stream/OptionalDouble;

    return-object v0
.end method

.method public static of(D)Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 40
    new-instance v0, Lcom/annimon/stream/OptionalDouble;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 285
    :cond_0
    instance-of v1, p1, Lcom/annimon/stream/OptionalDouble;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 289
    :cond_1
    check-cast p1, Lcom/annimon/stream/OptionalDouble;

    .line 290
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v3, p1, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    iget-wide v5, p1, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 291
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public executeIfAbsent(Ljava/lang/Runnable;)Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-object p0
.end method

.method public executeIfPresent(Lcom/annimon/stream/function/DoubleConsumer;)Lcom/annimon/stream/OptionalDouble;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalDouble;->ifPresent(Lcom/annimon/stream/function/DoubleConsumer;)V

    return-object p0
.end method

.method public filter(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/OptionalDouble;
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 144
    :cond_0
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAsDouble()D
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 68
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    return-wide v0

    .line 66
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 297
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Lcom/annimon/stream/function/DoubleConsumer;)V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 88
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleConsumer;->accept(D)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Lcom/annimon/stream/function/DoubleConsumer;Ljava/lang/Runnable;)V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 103
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleConsumer;->accept(D)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    return v0
.end method

.method public map(Lcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/OptionalDouble;
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    return-object p1
.end method

.method public mapToInt(Lcom/annimon/stream/function/DoubleToIntFunction;)Lcom/annimon/stream/OptionalInt;
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    return-object p1

    .line 195
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleToIntFunction;->applyAsInt(D)I

    move-result p1

    invoke-static {p1}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    return-object p1
.end method

.method public mapToLong(Lcom/annimon/stream/function/DoubleToLongFunction;)Lcom/annimon/stream/OptionalLong;
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleToLongFunction;->applyAsLong(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method public mapToObj(Lcom/annimon/stream/function/DoubleFunction;)Lcom/annimon/stream/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/DoubleFunction<",
            "TU;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    .line 178
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/OptionalDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/OptionalDouble;",
            ">;)",
            "Lcom/annimon/stream/OptionalDouble;"
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 241
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/OptionalDouble;

    return-object p1
.end method

.method public orElse(D)D
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    :cond_0
    return-wide p1
.end method

.method public orElseGet(Lcom/annimon/stream/function/DoubleSupplier;)D
    .locals 2

    .line 263
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public orElseThrow(Lcom/annimon/stream/function/Supplier;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TX;>;)D^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 276
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    return-wide v0

    .line 278
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public stream()Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/annimon/stream/DoubleStream;->empty()Lcom/annimon/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    invoke-static {v0, v1}, Lcom/annimon/stream/DoubleStream;->of(D)Lcom/annimon/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 302
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 303
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OptionalDouble[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalDouble.empty"

    :goto_0
    return-object v0
.end method
