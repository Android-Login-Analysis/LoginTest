.class public final Lcom/annimon/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/annimon/stream/Collectors$CollectorsImpl;,
        Lcom/annimon/stream/Collectors$Tuple1;
    }
.end annotation


# static fields
.field private static final DOUBLE_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Supplier<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final LONG_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Supplier<",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/annimon/stream/Collectors$1;

    invoke-direct {v0}, Lcom/annimon/stream/Collectors$1;-><init>()V

    sput-object v0, Lcom/annimon/stream/Collectors;->LONG_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    .line 27
    new-instance v0, Lcom/annimon/stream/Collectors$2;

    invoke-direct {v0}, Lcom/annimon/stream/Collectors$2;-><init>()V

    sput-object v0, Lcom/annimon/stream/Collectors;->DOUBLE_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static averaging(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    new-instance v0, Lcom/annimon/stream/Collectors$12;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Collectors$12;-><init>(Lcom/annimon/stream/function/Function;)V

    invoke-static {v0}, Lcom/annimon/stream/Collectors;->averagingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static averagingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    sget-object v1, Lcom/annimon/stream/Collectors;->DOUBLE_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    new-instance v2, Lcom/annimon/stream/Collectors$16;

    invoke-direct {v2, p0}, Lcom/annimon/stream/Collectors$16;-><init>(Lcom/annimon/stream/function/ToDoubleFunction;)V

    new-instance p0, Lcom/annimon/stream/Collectors$17;

    invoke-direct {p0}, Lcom/annimon/stream/Collectors$17;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method private static averagingHelper(Lcom/annimon/stream/function/BiConsumer;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/BiConsumer<",
            "[JTT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    sget-object v1, Lcom/annimon/stream/Collectors;->LONG_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    new-instance v2, Lcom/annimon/stream/Collectors$15;

    invoke-direct {v2}, Lcom/annimon/stream/Collectors$15;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method public static averagingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToIntFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/annimon/stream/Collectors$13;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Collectors$13;-><init>(Lcom/annimon/stream/function/ToIntFunction;)V

    invoke-static {v0}, Lcom/annimon/stream/Collectors;->averagingHelper(Lcom/annimon/stream/function/BiConsumer;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static averagingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToLongFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/annimon/stream/Collectors$14;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Collectors$14;-><init>(Lcom/annimon/stream/function/ToLongFunction;)V

    invoke-static {v0}, Lcom/annimon/stream/Collectors;->averagingHelper(Lcom/annimon/stream/function/BiConsumer;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static castIdentity()Lcom/annimon/stream/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/function/Function<",
            "TA;TR;>;"
        }
    .end annotation

    .line 778
    new-instance v0, Lcom/annimon/stream/Collectors$38;

    invoke-direct {v0}, Lcom/annimon/stream/Collectors$38;-><init>()V

    return-object v0
.end method

.method public static collectingAndThen(Lcom/annimon/stream/Collector;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "IR:",
            "Ljava/lang/Object;",
            "OR:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/Collector<",
            "TT;TA;TIR;>;",
            "Lcom/annimon/stream/function/Function<",
            "TIR;TOR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;TA;TOR;>;"
        }
    .end annotation

    .line 658
    invoke-interface {p0}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    .line 660
    invoke-static {}, Lcom/annimon/stream/Collectors;->castIdentity()Lcom/annimon/stream/function/Function;

    move-result-object v0

    .line 662
    :cond_0
    new-instance v1, Lcom/annimon/stream/Collectors$CollectorsImpl;

    invoke-interface {p0}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v2

    invoke-interface {p0}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    move-result-object p0

    .line 663
    invoke-static {v0, p1}, Lcom/annimon/stream/function/Function$Util;->andThen(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/Function;

    move-result-object p1

    invoke-direct {v1, v2, p0, p1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v1
.end method

.method public static counting()Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 460
    new-instance v0, Lcom/annimon/stream/Collectors$25;

    invoke-direct {v0}, Lcom/annimon/stream/Collectors$25;-><init>()V

    invoke-static {v0}, Lcom/annimon/stream/Collectors;->summingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static filtering(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/Collector<",
            "-TT;TA;TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 558
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    move-result-object v0

    .line 559
    new-instance v1, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 561
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v2

    new-instance v3, Lcom/annimon/stream/Collectors$32;

    invoke-direct {v3, p0, v0}, Lcom/annimon/stream/Collectors$32;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/BiConsumer;)V

    .line 571
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v1
.end method

.method public static flatMapping(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/Stream<",
            "+TU;>;>;",
            "Lcom/annimon/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 622
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    move-result-object v0

    .line 623
    new-instance v1, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 625
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v2

    new-instance v3, Lcom/annimon/stream/Collectors$34;

    invoke-direct {v3, p0, v0}, Lcom/annimon/stream/Collectors$34;-><init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BiConsumer;)V

    .line 641
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v1
.end method

.method public static groupingBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 678
    invoke-static {}, Lcom/annimon/stream/Collectors;->toList()Lcom/annimon/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/annimon/stream/Collectors;->groupingBy(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingBy(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 698
    invoke-static {}, Lcom/annimon/stream/Collectors;->hashMapSupplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v0

    .line 697
    invoke-static {p0, v0, p1}, Lcom/annimon/stream/Collectors;->groupingBy(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingBy(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TD;>;>(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Supplier<",
            "TM;>;",
            "Lcom/annimon/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 722
    invoke-interface {p2}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    new-instance v1, Lcom/annimon/stream/Collectors$35;

    invoke-direct {v1, v0}, Lcom/annimon/stream/Collectors$35;-><init>(Lcom/annimon/stream/function/Function;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 743
    :goto_0
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v2, Lcom/annimon/stream/Collectors$36;

    invoke-direct {v2, p0, p2}, Lcom/annimon/stream/Collectors$36;-><init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)V

    invoke-direct {v0, p1, v2, v1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method private static hashMapSupplier()Lcom/annimon/stream/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/function/Supplier<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 767
    new-instance v0, Lcom/annimon/stream/Collectors$37;

    invoke-direct {v0}, Lcom/annimon/stream/Collectors$37;-><init>()V

    return-object v0
.end method

.method public static joining()Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 183
    invoke-static {v0}, Lcom/annimon/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lcom/annimon/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/annimon/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 193
    invoke-static {p0, v0, v0}, Lcom/annimon/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/annimon/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/annimon/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Lcom/annimon/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$9;

    invoke-direct {v1}, Lcom/annimon/stream/Collectors$9;-><init>()V

    new-instance v2, Lcom/annimon/stream/Collectors$10;

    invoke-direct {v2, p0, p1}, Lcom/annimon/stream/Collectors$10;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/annimon/stream/Collectors$11;

    invoke-direct {p0, p3, p2}, Lcom/annimon/stream/Collectors$11;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method public static mapping(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TU;>;",
            "Lcom/annimon/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 590
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    move-result-object v0

    .line 591
    new-instance v1, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 593
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v2

    new-instance v3, Lcom/annimon/stream/Collectors$33;

    invoke-direct {v3, v0, p0}, Lcom/annimon/stream/Collectors$33;-><init>(Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 602
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v1
.end method

.method public static reducing(Ljava/lang/Object;Lcom/annimon/stream/function/BinaryOperator;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 479
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$26;

    invoke-direct {v1, p0}, Lcom/annimon/stream/Collectors$26;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/annimon/stream/Collectors$27;

    invoke-direct {p0, p1}, Lcom/annimon/stream/Collectors$27;-><init>(Lcom/annimon/stream/function/BinaryOperator;)V

    new-instance p1, Lcom/annimon/stream/Collectors$28;

    invoke-direct {p1}, Lcom/annimon/stream/Collectors$28;-><init>()V

    invoke-direct {v0, v1, p0, p1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method public static reducing(Ljava/lang/Object;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BinaryOperator;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TR;>;",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 519
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$29;

    invoke-direct {v1, p0}, Lcom/annimon/stream/Collectors$29;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/annimon/stream/Collectors$30;

    invoke-direct {p0, p2, p1}, Lcom/annimon/stream/Collectors$30;-><init>(Lcom/annimon/stream/function/BinaryOperator;Lcom/annimon/stream/function/Function;)V

    new-instance p1, Lcom/annimon/stream/Collectors$31;

    invoke-direct {p1}, Lcom/annimon/stream/Collectors$31;-><init>()V

    invoke-direct {v0, v1, p0, p1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method public static summingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 433
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    sget-object v1, Lcom/annimon/stream/Collectors;->DOUBLE_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    new-instance v2, Lcom/annimon/stream/Collectors$23;

    invoke-direct {v2, p0}, Lcom/annimon/stream/Collectors$23;-><init>(Lcom/annimon/stream/function/ToDoubleFunction;)V

    new-instance p0, Lcom/annimon/stream/Collectors$24;

    invoke-direct {p0}, Lcom/annimon/stream/Collectors$24;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method public static summingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToIntFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$18;

    invoke-direct {v1}, Lcom/annimon/stream/Collectors$18;-><init>()V

    new-instance v2, Lcom/annimon/stream/Collectors$19;

    invoke-direct {v2, p0}, Lcom/annimon/stream/Collectors$19;-><init>(Lcom/annimon/stream/function/ToIntFunction;)V

    new-instance p0, Lcom/annimon/stream/Collectors$20;

    invoke-direct {p0}, Lcom/annimon/stream/Collectors$20;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method public static summingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToLongFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    sget-object v1, Lcom/annimon/stream/Collectors;->LONG_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    new-instance v2, Lcom/annimon/stream/Collectors$21;

    invoke-direct {v2, p0}, Lcom/annimon/stream/Collectors$21;-><init>(Lcom/annimon/stream/function/ToLongFunction;)V

    new-instance p0, Lcom/annimon/stream/Collectors$22;

    invoke-direct {p0}, Lcom/annimon/stream/Collectors$22;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method public static toCollection(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$3;

    invoke-direct {v1}, Lcom/annimon/stream/Collectors$3;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V

    return-object v0
.end method

.method public static toList()Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$4;

    invoke-direct {v1}, Lcom/annimon/stream/Collectors$4;-><init>()V

    new-instance v2, Lcom/annimon/stream/Collectors$5;

    invoke-direct {v2}, Lcom/annimon/stream/Collectors$5;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V

    return-object v0
.end method

.method public static toMap(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/annimon/stream/function/UnaryOperator$Util;->identity()Lcom/annimon/stream/function/UnaryOperator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/annimon/stream/Collectors;->toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TV;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/annimon/stream/Collectors;->hashMapSupplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v0

    .line 136
    invoke-static {p0, p1, v0}, Lcom/annimon/stream/Collectors;->toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TV;>;",
            "Lcom/annimon/stream/function/Supplier<",
            "TM;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$8;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/Collectors$8;-><init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, p2, v1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V

    return-object v0
.end method

.method public static toSet()Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$6;

    invoke-direct {v1}, Lcom/annimon/stream/Collectors$6;-><init>()V

    new-instance v2, Lcom/annimon/stream/Collectors$7;

    invoke-direct {v2}, Lcom/annimon/stream/Collectors$7;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V

    return-object v0
.end method
