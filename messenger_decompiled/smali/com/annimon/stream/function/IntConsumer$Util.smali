.class public Lcom/annimon/stream/function/IntConsumer$Util;
.super Ljava/lang/Object;
.source "IntConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IntConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/function/IntConsumer;
    .locals 1

    .line 38
    new-instance v0, Lcom/annimon/stream/function/IntConsumer$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IntConsumer$Util$1;-><init>(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/IntConsumer;)V

    return-object v0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableIntConsumer;)Lcom/annimon/stream/function/IntConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableIntConsumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/IntConsumer;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, v0}, Lcom/annimon/stream/function/IntConsumer$Util;->safe(Lcom/annimon/stream/function/ThrowableIntConsumer;Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/function/IntConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableIntConsumer;Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/function/IntConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableIntConsumer<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/annimon/stream/function/IntConsumer;",
            ")",
            "Lcom/annimon/stream/function/IntConsumer;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/annimon/stream/function/IntConsumer$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IntConsumer$Util$2;-><init>(Lcom/annimon/stream/function/ThrowableIntConsumer;Lcom/annimon/stream/function/IntConsumer;)V

    return-object v0
.end method
