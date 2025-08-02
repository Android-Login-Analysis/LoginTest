.class final Lcom/annimon/stream/LongStream$5;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Lcom/annimon/stream/function/ToLongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/ToLongFunction<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsLong(Ljava/lang/Long;)J
    .locals 2

    .line 1101
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic applyAsLong(Ljava/lang/Object;)J
    .locals 2

    .line 1098
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/annimon/stream/LongStream$5;->applyAsLong(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
