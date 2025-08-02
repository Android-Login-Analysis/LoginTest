.class public Lcom/annimon/stream/operator/IntArray;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntArray.java"


# instance fields
.field private index:I

.field private final values:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/annimon/stream/operator/IntArray;->values:[I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/annimon/stream/operator/IntArray;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 17
    iget v0, p0, Lcom/annimon/stream/operator/IntArray;->index:I

    iget-object v1, p0, Lcom/annimon/stream/operator/IntArray;->values:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextInt()I
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/IntArray;->values:[I

    iget v1, p0, Lcom/annimon/stream/operator/IntArray;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/annimon/stream/operator/IntArray;->index:I

    aget v0, v0, v1

    return v0
.end method
