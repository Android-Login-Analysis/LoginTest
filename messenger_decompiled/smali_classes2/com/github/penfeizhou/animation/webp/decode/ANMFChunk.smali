.class public Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;
.super Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;
.source "ANMFChunk.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FLAG_BLENDING_METHOD:I = 0x2

.field private static final FLAG_DISPOSAL_METHOD:I = 0x1

.field static final ID:I


# instance fields
.field alphChunk:Lcom/github/penfeizhou/animation/webp/decode/ALPHChunk;

.field flags:B

.field frameDuration:I

.field frameHeight:I

.field frameWidth:I

.field frameX:I

.field frameY:I

.field vp8Chunk:Lcom/github/penfeizhou/animation/webp/decode/VP8Chunk;

.field vp8LChunk:Lcom/github/penfeizhou/animation/webp/decode/VP8LChunk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ANMF"

    .line 31
    invoke-static {v0}, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;->fourCCToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;-><init>()V

    return-void
.end method


# virtual methods
.method blendingMethod()Z
    .locals 2

    .line 119
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->flags:B

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

.method disposalMethod()Z
    .locals 2

    .line 123
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->flags:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method innerParse(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->available()I

    move-result v0

    .line 96
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->getUInt24()I

    move-result v1

    iput v1, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameX:I

    .line 97
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->getUInt24()I

    move-result v1

    iput v1, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameY:I

    .line 98
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->get1Based()I

    move-result v1

    iput v1, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameWidth:I

    .line 99
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->get1Based()I

    move-result v1

    iput v1, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameHeight:I

    .line 100
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->getUInt24()I

    move-result v1

    iput v1, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameDuration:I

    .line 101
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->peek()B

    move-result v1

    iput-byte v1, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->flags:B

    .line 102
    iget v1, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->payloadSize:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->available()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 104
    invoke-static {p1}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser;->parseChunk(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;

    move-result-object v2

    .line 105
    instance-of v3, v2, Lcom/github/penfeizhou/animation/webp/decode/ALPHChunk;

    if-eqz v3, :cond_1

    .line 107
    check-cast v2, Lcom/github/penfeizhou/animation/webp/decode/ALPHChunk;

    iput-object v2, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->alphChunk:Lcom/github/penfeizhou/animation/webp/decode/ALPHChunk;

    goto :goto_0

    .line 108
    :cond_1
    instance-of v3, v2, Lcom/github/penfeizhou/animation/webp/decode/VP8Chunk;

    if-eqz v3, :cond_2

    .line 110
    check-cast v2, Lcom/github/penfeizhou/animation/webp/decode/VP8Chunk;

    iput-object v2, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->vp8Chunk:Lcom/github/penfeizhou/animation/webp/decode/VP8Chunk;

    goto :goto_0

    .line 111
    :cond_2
    instance-of v3, v2, Lcom/github/penfeizhou/animation/webp/decode/VP8LChunk;

    if-eqz v3, :cond_0

    .line 113
    check-cast v2, Lcom/github/penfeizhou/animation/webp/decode/VP8LChunk;

    iput-object v2, p0, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->vp8LChunk:Lcom/github/penfeizhou/animation/webp/decode/VP8LChunk;

    goto :goto_0

    :cond_3
    return-void
.end method
