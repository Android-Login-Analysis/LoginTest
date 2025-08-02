.class public Lcom/annimon/stream/function/DoublePredicate$Util;
.super Ljava/lang/Object;
.source "DoublePredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/DoublePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;
    .locals 1

    .line 33
    new-instance v0, Lcom/annimon/stream/function/DoublePredicate$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/DoublePredicate$Util$1;-><init>(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)V

    return-object v0
.end method

.method public static negate(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;
    .locals 1

    .line 83
    new-instance v0, Lcom/annimon/stream/function/DoublePredicate$Util$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/DoublePredicate$Util$4;-><init>(Lcom/annimon/stream/function/DoublePredicate;)V

    return-object v0
.end method

.method public static or(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;
    .locals 1

    .line 50
    new-instance v0, Lcom/annimon/stream/function/DoublePredicate$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/DoublePredicate$Util$2;-><init>(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)V

    return-object v0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableDoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableDoublePredicate<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/DoublePredicate;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-static {p0, v0}, Lcom/annimon/stream/function/DoublePredicate$Util;->safe(Lcom/annimon/stream/function/ThrowableDoublePredicate;Z)Lcom/annimon/stream/function/DoublePredicate;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableDoublePredicate;Z)Lcom/annimon/stream/function/DoublePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableDoublePredicate<",
            "Ljava/lang/Throwable;",
            ">;Z)",
            "Lcom/annimon/stream/function/DoublePredicate;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/annimon/stream/function/DoublePredicate$Util$5;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/DoublePredicate$Util$5;-><init>(Lcom/annimon/stream/function/ThrowableDoublePredicate;Z)V

    return-object v0
.end method

.method public static xor(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;
    .locals 1

    .line 67
    new-instance v0, Lcom/annimon/stream/function/DoublePredicate$Util$3;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/DoublePredicate$Util$3;-><init>(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)V

    return-object v0
.end method
