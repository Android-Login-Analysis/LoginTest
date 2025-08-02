.class Lcom/annimon/stream/LongStream$2;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Lcom/annimon/stream/function/LongBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/LongStream;->min()Lcom/annimon/stream/OptionalLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/LongStream;


# direct methods
.method constructor <init>(Lcom/annimon/stream/LongStream;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/annimon/stream/LongStream$2;->this$0:Lcom/annimon/stream/LongStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsLong(JJ)J
    .locals 0

    .line 823
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method
