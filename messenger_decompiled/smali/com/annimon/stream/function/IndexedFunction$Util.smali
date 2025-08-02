.class public Lcom/annimon/stream/function/IndexedFunction$Util;
.super Ljava/lang/Object;
.source "IndexedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IndexedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/IndexedFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TR;>;)",
            "Lcom/annimon/stream/function/IndexedFunction<",
            "TT;TR;>;"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/annimon/stream/function/IndexedFunction$Util$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/IndexedFunction$Util$1;-><init>(Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method
