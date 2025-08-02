.class public final Lcom/annimon/stream/internal/Compose;
.super Ljava/lang/Object;
.source "Compose.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;
    .locals 1

    .line 30
    new-instance v0, Lcom/annimon/stream/internal/Compose$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/internal/Compose$2;-><init>(Ljava/io/Closeable;Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 10
    new-instance v0, Lcom/annimon/stream/internal/Compose$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/internal/Compose$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method
