.class public Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;
.super Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;
.source "GraphicControlExtension.java"


# instance fields
.field private blockSize:I

.field public delayTime:I

.field private packedFields:B

.field public transparentColorIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public disposalMethod()I
    .locals 1

    .line 43
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->packedFields:B

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->blockSize:I

    .line 21
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    iput-byte v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->packedFields:B

    .line 22
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->delayTime:I

    .line 23
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->transparentColorIndex:I

    .line 24
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance p1, Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;

    invoke-direct {p1}, Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->blockSize:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public transparencyFlag()Z
    .locals 2

    .line 79
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->packedFields:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public userInputFlag()Z
    .locals 2

    .line 62
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->packedFields:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
