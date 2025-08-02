.class public Lcom/annimon/stream/function/Predicate$Util;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Predicate$Util$1;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method

.method public static negate(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/Predicate$Util$4;-><init>(Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method

.method public static notNull()Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$5;

    invoke-direct {v0}, Lcom/annimon/stream/function/Predicate$Util$5;-><init>()V

    return-object v0
.end method

.method public static or(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Predicate$Util$2;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowablePredicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowablePredicate<",
            "-TT;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, v0}, Lcom/annimon/stream/function/Predicate$Util;->safe(Lcom/annimon/stream/function/ThrowablePredicate;Z)Lcom/annimon/stream/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowablePredicate;Z)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowablePredicate<",
            "-TT;",
            "Ljava/lang/Throwable;",
            ">;Z)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$6;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Predicate$Util$6;-><init>(Lcom/annimon/stream/function/ThrowablePredicate;Z)V

    return-object v0
.end method

.method public static xor(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$3;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Predicate$Util$3;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method
