.class public Lcom/annimon/stream/function/LongConsumer$Util;
.super Ljava/lang/Object;
.source "LongConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/LongConsumer;
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

.method public static andThen(Lcom/annimon/stream/function/LongConsumer;Lcom/annimon/stream/function/LongConsumer;)Lcom/annimon/stream/function/LongConsumer;
    .locals 1

    .line 34
    new-instance v0, Lcom/annimon/stream/function/LongConsumer$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/LongConsumer$Util$1;-><init>(Lcom/annimon/stream/function/LongConsumer;Lcom/annimon/stream/function/LongConsumer;)V

    return-object v0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableLongConsumer;)Lcom/annimon/stream/function/LongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableLongConsumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/LongConsumer;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-static {p0, v0}, Lcom/annimon/stream/function/LongConsumer$Util;->safe(Lcom/annimon/stream/function/ThrowableLongConsumer;Lcom/annimon/stream/function/LongConsumer;)Lcom/annimon/stream/function/LongConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableLongConsumer;Lcom/annimon/stream/function/LongConsumer;)Lcom/annimon/stream/function/LongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableLongConsumer<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/annimon/stream/function/LongConsumer;",
            ")",
            "Lcom/annimon/stream/function/LongConsumer;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/annimon/stream/function/LongConsumer$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/LongConsumer$Util$2;-><init>(Lcom/annimon/stream/function/ThrowableLongConsumer;Lcom/annimon/stream/function/LongConsumer;)V

    return-object v0
.end method
