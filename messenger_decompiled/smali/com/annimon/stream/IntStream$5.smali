.class final Lcom/annimon/stream/IntStream$5;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Lcom/annimon/stream/function/ToIntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/ToIntFunction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsInt(Ljava/lang/Integer;)I
    .locals 0

    .line 1149
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public bridge synthetic applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1146
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/annimon/stream/IntStream$5;->applyAsInt(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
