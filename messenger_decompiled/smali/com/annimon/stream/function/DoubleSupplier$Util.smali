.class public Lcom/annimon/stream/function/DoubleSupplier$Util;
.super Ljava/lang/Object;
.source "DoubleSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/DoubleSupplier;
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

.method public static safe(Lcom/annimon/stream/function/ThrowableDoubleSupplier;)Lcom/annimon/stream/function/DoubleSupplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableDoubleSupplier<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/DoubleSupplier;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 33
    invoke-static {p0, v0, v1}, Lcom/annimon/stream/function/DoubleSupplier$Util;->safe(Lcom/annimon/stream/function/ThrowableDoubleSupplier;D)Lcom/annimon/stream/function/DoubleSupplier;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableDoubleSupplier;D)Lcom/annimon/stream/function/DoubleSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableDoubleSupplier<",
            "Ljava/lang/Throwable;",
            ">;D)",
            "Lcom/annimon/stream/function/DoubleSupplier;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/annimon/stream/function/DoubleSupplier$Util$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/annimon/stream/function/DoubleSupplier$Util$1;-><init>(Lcom/annimon/stream/function/ThrowableDoubleSupplier;D)V

    return-object v0
.end method
