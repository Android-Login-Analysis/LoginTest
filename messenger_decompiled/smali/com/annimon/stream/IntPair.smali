.class public final Lcom/annimon/stream/IntPair;
.super Ljava/lang/Object;
.source "IntPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final first:I

.field private final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/annimon/stream/IntPair;->first:I

    .line 16
    iput-object p2, p0, Lcom/annimon/stream/IntPair;->second:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 51
    :cond_2
    check-cast p1, Lcom/annimon/stream/IntPair;

    .line 52
    iget v2, p0, Lcom/annimon/stream/IntPair;->first:I

    iget v3, p1, Lcom/annimon/stream/IntPair;->first:I

    if-eq v2, v3, :cond_3

    return v1

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/annimon/stream/IntPair;->second:Ljava/lang/Object;

    iget-object p1, p1, Lcom/annimon/stream/IntPair;->second:Ljava/lang/Object;

    if-eq v2, p1, :cond_5

    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public getFirst()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/annimon/stream/IntPair;->first:I

    return v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/annimon/stream/IntPair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x2a7

    .line 40
    iget v1, p0, Lcom/annimon/stream/IntPair;->first:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    .line 41
    iget-object v1, p0, Lcom/annimon/stream/IntPair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntPair["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/annimon/stream/IntPair;->first:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/annimon/stream/IntPair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
