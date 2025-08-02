.class Lcom/annimon/stream/IntStream$3;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Lcom/annimon/stream/function/IntBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/IntStream;->max()Lcom/annimon/stream/OptionalInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/IntStream;


# direct methods
.method constructor <init>(Lcom/annimon/stream/IntStream;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/annimon/stream/IntStream$3;->this$0:Lcom/annimon/stream/IntStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsInt(II)I
    .locals 0

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method
