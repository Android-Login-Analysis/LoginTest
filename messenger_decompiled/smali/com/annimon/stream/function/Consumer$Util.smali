.class public Lcom/annimon/stream/function/Consumer$Util;
.super Ljava/lang/Object;
.source "Consumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Lcom/annimon/stream/function/Consumer;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/annimon/stream/function/Consumer$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Consumer$Util$1;-><init>(Lcom/annimon/stream/function/Consumer;Lcom/annimon/stream/function/Consumer;)V

    return-object v0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableConsumer;)Lcom/annimon/stream/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableConsumer<",
            "-TT;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lcom/annimon/stream/function/Consumer$Util;->safe(Lcom/annimon/stream/function/ThrowableConsumer;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableConsumer;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableConsumer<",
            "-TT;",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/annimon/stream/function/Consumer$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Consumer$Util$2;-><init>(Lcom/annimon/stream/function/ThrowableConsumer;Lcom/annimon/stream/function/Consumer;)V

    return-object v0
.end method
