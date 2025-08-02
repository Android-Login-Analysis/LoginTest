.class public Lcom/annimon/stream/operator/LongGenerate;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongGenerate.java"


# instance fields
.field private final supplier:Lcom/annimon/stream/function/LongSupplier;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/function/LongSupplier;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/annimon/stream/operator/LongGenerate;->supplier:Lcom/annimon/stream/function/LongSupplier;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextLong()J
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/LongGenerate;->supplier:Lcom/annimon/stream/function/LongSupplier;

    invoke-interface {v0}, Lcom/annimon/stream/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    return-wide v0
.end method
