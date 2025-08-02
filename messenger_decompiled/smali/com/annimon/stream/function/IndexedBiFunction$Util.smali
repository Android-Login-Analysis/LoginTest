.class public Lcom/annimon/stream/function/IndexedBiFunction$Util;
.super Ljava/lang/Object;
.source "IndexedBiFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IndexedBiFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/function/IndexedBiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Lcom/annimon/stream/function/IndexedBiFunction<",
            "TT;TU;TR;>;"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/annimon/stream/function/IndexedBiFunction$Util$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/IndexedBiFunction$Util$1;-><init>(Lcom/annimon/stream/function/BiFunction;)V

    return-object v0
.end method
