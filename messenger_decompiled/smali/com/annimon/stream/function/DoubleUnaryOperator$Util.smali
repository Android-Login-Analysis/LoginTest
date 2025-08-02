.class public Lcom/annimon/stream/function/DoubleUnaryOperator$Util;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/DoubleUnaryOperator;
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

.method public static identity()Lcom/annimon/stream/function/DoubleUnaryOperator;
    .locals 1

    .line 31
    new-instance v0, Lcom/annimon/stream/function/DoubleUnaryOperator$Util$1;

    invoke-direct {v0}, Lcom/annimon/stream/function/DoubleUnaryOperator$Util$1;-><init>()V

    return-object v0
.end method
