.class public Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;
.super Ljava/lang/Object;
.source "DataSubBlock.java"

# interfaces
.implements Lcom/github/penfeizhou/animation/gif/decode/Block;


# static fields
.field public static final sBlockTerminal:Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;


# instance fields
.field private final blockSize:I

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;-><init>(I)V

    sput-object v0, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->sBlockTerminal:Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->blockSize:I

    return-void
.end method

.method public static retrieve(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 25
    sget-object p0, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->sBlockTerminal:Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;

    return-object p0

    .line 27
    :cond_0
    new-instance v1, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;

    invoke-direct {v1, v0}, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;-><init>(I)V

    .line 28
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->position()I

    move-result v0

    iput v0, v1, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->offset:I

    .line 29
    invoke-virtual {v1, p0}, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V

    return-object v1
.end method


# virtual methods
.method public isTerminal()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->sBlockTerminal:Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->blockSize:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->skip(J)J

    return-void
.end method

.method public size()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/DataSubBlock;->blockSize:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
