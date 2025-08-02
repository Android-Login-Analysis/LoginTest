.class public Lcom/github/penfeizhou/animation/gif/io/GifWriter;
.super Ljava/lang/Object;
.source "GifWriter.java"

# interfaces
.implements Lcom/github/penfeizhou/animation/io/Writer;


# instance fields
.field protected intBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2800

    .line 17
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->reset(I)V

    return-void
.end method


# virtual methods
.method public asBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->intBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public asIntArray()[I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public position()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    return v0
.end method

.method public putByte(B)V
    .locals 0

    return-void
.end method

.method public putBytes([B)V
    .locals 0

    return-void
.end method

.method public reset(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->intBuffer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 50
    :cond_0
    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->intBuffer:Ljava/nio/IntBuffer;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 53
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    .line 54
    iget-object p1, p0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->intBuffer:Ljava/nio/IntBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public skip(I)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->position()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public toByteArray()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
