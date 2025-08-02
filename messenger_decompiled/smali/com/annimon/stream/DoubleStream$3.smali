.class Lcom/annimon/stream/DoubleStream$3;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Lcom/annimon/stream/function/DoubleBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/DoubleStream;->max()Lcom/annimon/stream/OptionalDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/DoubleStream;


# direct methods
.method constructor <init>(Lcom/annimon/stream/DoubleStream;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/annimon/stream/DoubleStream$3;->this$0:Lcom/annimon/stream/DoubleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsDouble(DD)D
    .locals 0

    .line 806
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method
