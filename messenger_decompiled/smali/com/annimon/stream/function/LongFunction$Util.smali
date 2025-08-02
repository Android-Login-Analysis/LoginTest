.class public Lcom/annimon/stream/function/LongFunction$Util;
.super Ljava/lang/Object;
.source "LongFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/LongFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableLongFunction;)Lcom/annimon/stream/function/LongFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableLongFunction<",
            "+TR;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/LongFunction<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0}, Lcom/annimon/stream/function/LongFunction$Util;->safe(Lcom/annimon/stream/function/ThrowableLongFunction;Ljava/lang/Object;)Lcom/annimon/stream/function/LongFunction;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableLongFunction;Ljava/lang/Object;)Lcom/annimon/stream/function/LongFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableLongFunction<",
            "+TR;",
            "Ljava/lang/Throwable;",
            ">;TR;)",
            "Lcom/annimon/stream/function/LongFunction<",
            "TR;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/annimon/stream/function/LongFunction$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/LongFunction$Util$1;-><init>(Lcom/annimon/stream/function/ThrowableLongFunction;Ljava/lang/Object;)V

    return-object v0
.end method
