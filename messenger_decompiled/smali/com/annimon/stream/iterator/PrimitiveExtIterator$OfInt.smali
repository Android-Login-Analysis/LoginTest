.class public abstract Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "PrimitiveExtIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/iterator/PrimitiveExtIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfInt"
.end annotation


# instance fields
.field protected hasNext:Z

.field protected isInit:Z

.field protected next:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->isInit:Z

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->nextIteration()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->isInit:Z

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->hasNext:Z

    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->isInit:Z

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->hasNext()Z

    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->hasNext:Z

    if-eqz v0, :cond_1

    .line 36
    iget v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->next:I

    .line 37
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->nextIteration()V

    return v0

    .line 34
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected abstract nextIteration()V
.end method
