.class public Lcom/annimon/stream/Exceptional;
.super Ljava/lang/Object;
.source "Exceptional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final throwable:Ljava/lang/Throwable;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public static of(Lcom/annimon/stream/function/ThrowableSupplier;)Lcom/annimon/stream/Exceptional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableSupplier<",
            "TT;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :try_start_0
    new-instance v1, Lcom/annimon/stream/Exceptional;

    invoke-interface {p0}, Lcom/annimon/stream/function/ThrowableSupplier;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 45
    new-instance v1, Lcom/annimon/stream/Exceptional;

    invoke-direct {v1, v0, p0}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Throwable;)Lcom/annimon/stream/Exceptional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/annimon/stream/Exceptional;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 271
    :cond_0
    instance-of v1, p1, Lcom/annimon/stream/Exceptional;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 275
    :cond_1
    check-cast p1, Lcom/annimon/stream/Exceptional;

    .line 276
    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/annimon/stream/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    .line 277
    invoke-static {v1, p1}, Lcom/annimon/stream/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getOptional()Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getOrElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public getOrThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    return-object v0

    .line 113
    :cond_0
    throw v0
.end method

.method public getOrThrow(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TT;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 144
    iget-object p1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    return-object p1

    .line 141
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    throw p1
.end method

.method public getOrThrowRuntimeException()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 282
    iget-object v2, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/annimon/stream/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifException(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Exceptional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public ifExceptionIs(Ljava/lang/Class;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Exceptional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/annimon/stream/function/Consumer<",
            "-TE;>;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-interface {p2, p1}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public ifPresent(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Exceptional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public map(Lcom/annimon/stream/function/ThrowableFunction;)Lcom/annimon/stream/Exceptional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableFunction<",
            "-TT;+TU;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/Exceptional<",
            "TU;>;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    new-instance p1, Lcom/annimon/stream/Exceptional;

    invoke-direct {p1, v1, v0}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p1

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :try_start_0
    new-instance v0, Lcom/annimon/stream/Exceptional;

    iget-object v2, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    invoke-interface {p1, v2}, Lcom/annimon/stream/function/ThrowableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 179
    new-instance v0, Lcom/annimon/stream/Exceptional;

    invoke-direct {v0, v1, p1}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Exceptional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;>;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-object p0

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/Exceptional;

    return-object p1
.end method

.method public recover(Lcom/annimon/stream/function/ThrowableFunction;)Lcom/annimon/stream/Exceptional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableFunction<",
            "Ljava/lang/Throwable;",
            "+TT;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-object p0

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 242
    :try_start_0
    new-instance v1, Lcom/annimon/stream/Exceptional;

    iget-object v2, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-interface {p1, v2}, Lcom/annimon/stream/function/ThrowableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 244
    new-instance v1, Lcom/annimon/stream/Exceptional;

    invoke-direct {v1, v0, p1}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public recoverWith(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Exceptional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;>;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-object p0

    .line 261
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/Exceptional;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "Exceptional value %s"

    .line 288
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Exceptional throwable %s"

    .line 289
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
