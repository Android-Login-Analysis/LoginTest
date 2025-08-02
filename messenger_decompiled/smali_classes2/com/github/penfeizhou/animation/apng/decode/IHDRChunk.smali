.class Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;
.super Lcom/github/penfeizhou/animation/apng/decode/Chunk;
.source "IHDRChunk.java"


# static fields
.field static final ID:I


# instance fields
.field data:[B

.field height:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IHDR"

    .line 22
    invoke-static {v0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->fourCCToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;->ID:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 32
    iput-object v0, p0, Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;->data:[B

    return-void
.end method


# virtual methods
.method innerParse(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;->width:I

    .line 37
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;->height:I

    .line 38
    iget-object v0, p0, Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;->data:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->read([BII)I

    return-void
.end method
