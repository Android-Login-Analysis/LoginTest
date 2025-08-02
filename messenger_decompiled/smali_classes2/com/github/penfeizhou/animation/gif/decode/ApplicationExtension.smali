.class public Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;
.super Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;
.source "ApplicationExtension.java"


# instance fields
.field public identifier:Ljava/lang/String;

.field public loopCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;->loopCount:I

    return-void
.end method


# virtual methods
.method public receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;->identifier:Ljava/lang/String;

    const-string v1, "NETSCAPE2.0"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;->loopCount:I

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->retrieve(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->isTerminal()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 36
    :cond_2
    invoke-static {p1}, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->retrieve(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->isTerminal()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
