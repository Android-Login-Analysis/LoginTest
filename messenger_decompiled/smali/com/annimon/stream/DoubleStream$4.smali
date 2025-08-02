.class Lcom/annimon/stream/DoubleStream$4;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Lcom/annimon/stream/function/DoubleBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/DoubleStream;->findLast()Lcom/annimon/stream/OptionalDouble;
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

    .line 965
    iput-object p1, p0, Lcom/annimon/stream/DoubleStream$4;->this$0:Lcom/annimon/stream/DoubleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsDouble(DD)D
    .locals 0

    return-wide p3
.end method
