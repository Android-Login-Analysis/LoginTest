.class public Lcom/annimon/stream/function/Supplier$Util;
.super Ljava/lang/Object;
.source "Supplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableSupplier;)Lcom/annimon/stream/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableSupplier<",
            "+TT;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, v0}, Lcom/annimon/stream/function/Supplier$Util;->safe(Lcom/annimon/stream/function/ThrowableSupplier;Ljava/lang/Object;)Lcom/annimon/stream/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableSupplier;Ljava/lang/Object;)Lcom/annimon/stream/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableSupplier<",
            "+TT;",
            "Ljava/lang/Throwable;",
            ">;TT;)",
            "Lcom/annimon/stream/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/annimon/stream/function/Supplier$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Supplier$Util$1;-><init>(Lcom/annimon/stream/function/ThrowableSupplier;Ljava/lang/Object;)V

    return-object v0
.end method
