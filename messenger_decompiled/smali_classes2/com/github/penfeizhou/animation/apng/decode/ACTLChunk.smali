.class Lcom/github/penfeizhou/animation/apng/decode/ACTLChunk;
.super Lcom/github/penfeizhou/animation/apng/decode/Chunk;
.source "ACTLChunk.java"


# static fields
.field static final ID:I


# instance fields
.field num_frames:I

.field num_plays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "acTL"

    .line 13
    invoke-static {v0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->fourCCToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/penfeizhou/animation/apng/decode/ACTLChunk;->ID:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;-><init>()V

    return-void
.end method


# virtual methods
.method innerParse(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/apng/decode/ACTLChunk;->num_frames:I

    .line 20
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result p1

    iput p1, p0, Lcom/github/penfeizhou/animation/apng/decode/ACTLChunk;->num_plays:I

    return-void
.end method
