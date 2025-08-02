.class public Lcom/github/penfeizhou/animation/gif/decode/PlaintTextExtension;
.super Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;
.source "PlaintTextExtension.java"


# instance fields
.field private plainTextData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/PlaintTextExtension;->plainTextData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    .line 20
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    .line 21
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    .line 22
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    .line 23
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->readUInt16()I

    .line 24
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    .line 25
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    .line 26
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    .line 27
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    .line 29
    :goto_0
    invoke-static {p1}, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->retrieve(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->isTerminal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/PlaintTextExtension;->plainTextData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
