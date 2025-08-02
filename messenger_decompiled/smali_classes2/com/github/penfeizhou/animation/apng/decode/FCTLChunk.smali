.class Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;
.super Lcom/github/penfeizhou/animation/apng/decode/Chunk;
.source "FCTLChunk.java"


# static fields
.field static final APNG_BLEND_OP_OVER:I = 0x1

.field static final APNG_BLEND_OP_SOURCE:I = 0x0

.field static final APNG_DISPOSE_OP_BACKGROUND:I = 0x1

.field static final APNG_DISPOSE_OP_NON:I = 0x0

.field static final APNG_DISPOSE_OP_PREVIOUS:I = 0x2

.field static final ID:I


# instance fields
.field blend_op:B

.field delay_den:S

.field delay_num:S

.field dispose_op:B

.field height:I

.field sequence_number:I

.field width:I

.field x_offset:I

.field y_offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fcTL"

    .line 13
    invoke-static {v0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->fourCCToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->ID:I

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

    .line 106
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->sequence_number:I

    .line 107
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->width:I

    .line 108
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->height:I

    .line 109
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->x_offset:I

    .line 110
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->y_offset:I

    .line 111
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->delay_num:S

    .line 112
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->delay_den:S

    .line 113
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->peek()B

    move-result v0

    iput-byte v0, p0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->dispose_op:B

    .line 114
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->peek()B

    move-result p1

    iput-byte p1, p0, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->blend_op:B

    return-void
.end method
