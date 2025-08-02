.class public Lcom/annimon/stream/operator/DoubleGenerate;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleGenerate.java"


# instance fields
.field private final supplier:Lcom/annimon/stream/function/DoubleSupplier;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/function/DoubleSupplier;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleGenerate;->supplier:Lcom/annimon/stream/function/DoubleSupplier;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextDouble()D
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleGenerate;->supplier:Lcom/annimon/stream/function/DoubleSupplier;

    invoke-interface {v0}, Lcom/annimon/stream/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    return-wide v0
.end method
