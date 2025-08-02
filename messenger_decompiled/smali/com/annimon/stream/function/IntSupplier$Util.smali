.class public Lcom/annimon/stream/function/IntSupplier$Util;
.super Ljava/lang/Object;
.source "IntSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IntSupplier;
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

.method public static safe(Lcom/annimon/stream/function/ThrowableIntSupplier;)Lcom/annimon/stream/function/IntSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableIntSupplier<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/IntSupplier;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lcom/annimon/stream/function/IntSupplier$Util;->safe(Lcom/annimon/stream/function/ThrowableIntSupplier;I)Lcom/annimon/stream/function/IntSupplier;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableIntSupplier;I)Lcom/annimon/stream/function/IntSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableIntSupplier<",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lcom/annimon/stream/function/IntSupplier;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/annimon/stream/function/IntSupplier$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IntSupplier$Util$1;-><init>(Lcom/annimon/stream/function/ThrowableIntSupplier;I)V

    return-object v0
.end method
