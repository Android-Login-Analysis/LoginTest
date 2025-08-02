.class public Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;
.super Ljava/lang/Object;
.source "ImageDescriptor.java"

# interfaces
.implements Lcom/github/penfeizhou/animation/gif/decode/Block;


# instance fields
.field private flag:B

.field public frameHeight:I

.field public frameWidth:I

.field public frameX:I

.field public frameY:I

.field public imageDataOffset:I

.field public localColorTable:Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

.field public lzwMinimumCodeSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interlaceFlag()Z
    .locals 2

    .line 154
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->flag:B

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public localColorTableFlag()Z
    .locals 2

    .line 150
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->flag:B

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public localColorTableSize()I
    .locals 2

    .line 162
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->flag:B

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    shl-int v0, v1, v0

    return v0
.end method

.method public receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->frameX:I

    .line 133
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->frameY:I

    .line 134
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->frameWidth:I

    .line 135
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->frameHeight:I

    .line 136
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    iput-byte v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->flag:B

    .line 137
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->localColorTableFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->localColorTableSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;-><init>(I)V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->localColorTable:Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    .line 139
    invoke-virtual {v0, p1}, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->lzwMinimumCodeSize:I

    .line 142
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->position()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->imageDataOffset:I

    .line 144
    :goto_0
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 145
    invoke-virtual {p1, v0, v1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->skip(J)J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sortFlag()Z
    .locals 2

    .line 158
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->flag:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
