.class public Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;
.super Lcom/github/penfeizhou/animation/decode/Frame;
.source "APNGFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/decode/Frame<",
        "Lcom/github/penfeizhou/animation/apng/io/APNGReader;",
        "Lcom/github/penfeizhou/animation/apng/io/APNGWriter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final sCRC32:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/zip/CRC32;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPNGEndChunk:[B

.field private static final sPNGSignatures:[B


# instance fields
.field public final blend_op:B

.field public final dispose_op:B

.field ihdrData:[B

.field imageChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/penfeizhou/animation/apng/decode/Chunk;",
            ">;"
        }
    .end annotation
.end field

.field prefixChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/penfeizhou/animation/apng/decode/Chunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 29
    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->sPNGSignatures:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 30
    fill-array-data v0, :array_1

    sput-object v0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->sPNGEndChunk:[B

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->sCRC32:Ljava/lang/ThreadLocal;

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x45t
        0x4et
        0x44t
        -0x52t
        0x42t
        0x60t
        -0x7et
    .end array-data
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/apng/io/APNGReader;Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/decode/Frame;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->imageChunks:Ljava/util/List;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->prefixChunks:Ljava/util/List;

    .line 45
    iget-byte p1, p2, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->blend_op:B

    iput-byte p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->blend_op:B

    .line 46
    iget-byte p1, p2, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->dispose_op:B

    iput-byte p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->dispose_op:B

    .line 47
    iget-short p1, p2, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->delay_num:S

    mul-int/lit16 p1, p1, 0x3e8

    iget-short v0, p2, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->delay_den:S

    const/16 v1, 0x64

    if-nez v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    iget-short v0, p2, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->delay_den:S

    :goto_0
    div-int/2addr p1, v0

    iput p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameDuration:I

    .line 48
    iget p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameDuration:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 54
    iput v1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameDuration:I

    .line 56
    :cond_1
    iget p1, p2, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->width:I

    iput p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameWidth:I

    .line 57
    iget p1, p2, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->height:I

    iput p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameHeight:I

    .line 58
    iget p1, p2, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->x_offset:I

    iput p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameX:I

    .line 59
    iget p1, p2, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->y_offset:I

    iput p1, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameY:I

    return-void
.end method

.method private encode(Lcom/github/penfeizhou/animation/apng/io/APNGWriter;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->prefixChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x21

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/penfeizhou/animation/apng/decode/Chunk;

    .line 67
    iget v2, v2, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->imageChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/penfeizhou/animation/apng/decode/Chunk;

    .line 72
    instance-of v3, v2, Lcom/github/penfeizhou/animation/apng/decode/IDATChunk;

    if-eqz v3, :cond_2

    .line 73
    iget v2, v2, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v2, v2, 0xc

    :goto_2
    add-int/2addr v1, v2

    goto :goto_1

    .line 74
    :cond_2
    instance-of v3, v2, Lcom/github/penfeizhou/animation/apng/decode/FDATChunk;

    if-eqz v3, :cond_1

    .line 75
    iget v2, v2, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 78
    :cond_3
    sget-object v0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->sPNGEndChunk:[B

    array-length v0, v0

    add-int/2addr v1, v0

    .line 79
    invoke-virtual {p1, v1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->reset(I)V

    .line 80
    sget-object v0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->sPNGSignatures:[B

    invoke-virtual {p1, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putBytes([B)V

    const/16 v0, 0xd

    .line 82
    invoke-virtual {p1, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->writeInt(I)V

    .line 83
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->position()I

    move-result v0

    .line 84
    sget v2, Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;->ID:I

    invoke-virtual {p1, v2}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->writeFourCC(I)V

    .line 85
    iget v2, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameWidth:I

    invoke-virtual {p1, v2}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->writeInt(I)V

    .line 86
    iget v2, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameHeight:I

    invoke-virtual {p1, v2}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->writeInt(I)V

    .line 87
    iget-object v2, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->ihdrData:[B

    invoke-virtual {p1, v2}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putBytes([B)V

    .line 88
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->getCRC32()Ljava/util/zip/CRC32;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 90
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 91
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {p1, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->prefixChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;

    .line 95
    instance-of v4, v3, Lcom/github/penfeizhou/animation/apng/decode/IENDChunk;

    if-eqz v4, :cond_4

    goto :goto_3

    .line 98
    :cond_4
    iget-object v4, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v4, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-virtual {v4}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->reset()V

    .line 99
    iget-object v4, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v4, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    iget v5, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->offset:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->skip(J)J

    .line 100
    iget-object v4, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v4, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->position()I

    move-result v6

    iget v7, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v7, v7, 0xc

    invoke-virtual {v4, v5, v6, v7}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->read([BII)I

    .line 101
    iget v3, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v3}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->skip(I)V

    goto :goto_3

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->imageChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;

    .line 105
    instance-of v4, v3, Lcom/github/penfeizhou/animation/apng/decode/IDATChunk;

    if-eqz v4, :cond_7

    .line 106
    iget-object v4, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v4, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-virtual {v4}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->reset()V

    .line 107
    iget-object v4, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v4, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    iget v5, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->offset:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->skip(J)J

    .line 108
    iget-object v4, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v4, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->position()I

    move-result v6

    iget v7, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v7, v7, 0xc

    invoke-virtual {v4, v5, v6, v7}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->read([BII)I

    .line 109
    iget v3, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v3}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->skip(I)V

    goto :goto_4

    .line 110
    :cond_7
    instance-of v4, v3, Lcom/github/penfeizhou/animation/apng/decode/FDATChunk;

    if-eqz v4, :cond_6

    .line 111
    iget v4, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p1, v4}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->writeInt(I)V

    .line 112
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->position()I

    move-result v4

    .line 113
    sget v5, Lcom/github/penfeizhou/animation/apng/decode/IDATChunk;->ID:I

    invoke-virtual {p1, v5}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->writeFourCC(I)V

    .line 115
    iget-object v5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v5, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-virtual {v5}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->reset()V

    .line 117
    iget-object v5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v5, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    iget v6, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->offset:I

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->skip(J)J

    .line 118
    iget-object v5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v5, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->position()I

    move-result v7

    iget v8, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v5, v6, v7, v8}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->read([BII)I

    .line 120
    iget v5, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p1, v5}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->skip(I)V

    .line 121
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 122
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->toByteArray()[B

    move-result-object v5

    iget v3, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    invoke-virtual {v2, v5, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 123
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {p1, v4}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->writeInt(I)V

    goto/16 :goto_4

    .line 127
    :cond_8
    sget-object v0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->sPNGEndChunk:[B

    invoke-virtual {p1, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putBytes([B)V

    return v1
.end method

.method private getCRC32()Ljava/util/zip/CRC32;
    .locals 2

    .line 35
    sget-object v0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->sCRC32:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/CRC32;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/apng/io/APNGWriter;)Landroid/graphics/Bitmap;
    .locals 4

    .line 135
    :try_start_0
    invoke-direct {p0, p5}, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->encode(Lcom/github/penfeizhou/animation/apng/io/APNGWriter;)I

    move-result v0

    .line 136
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 137
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    iput p3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x1

    .line 139
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 140
    iput-object p4, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 141
    invoke-virtual {p5}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->toByteArray()[B

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    invoke-static {p4, v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 148
    :catch_0
    :try_start_2
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 149
    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    iput p3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 151
    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 152
    invoke-static {p4, v2, v0, p5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 156
    :goto_0
    iget-object p5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->srcRect:Landroid/graphics/Rect;

    iput v2, p5, Landroid/graphics/Rect;->left:I

    .line 157
    iget-object p5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->srcRect:Landroid/graphics/Rect;

    iput v2, p5, Landroid/graphics/Rect;->top:I

    .line 158
    iget-object p5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 159
    iget-object p5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 160
    iget-object p5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameX:I

    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 161
    iget-object p5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameY:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 162
    iget-object p5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameX:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 163
    iget-object p5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->frameY:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v0, p3

    float-to-int p3, v0

    iput p3, p5, Landroid/graphics/Rect;->bottom:I

    .line 165
    iget-object p3, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->srcRect:Landroid/graphics/Rect;

    iget-object p5, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p4

    :catch_1
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/io/Writer;)Landroid/graphics/Bitmap;
    .locals 0

    .line 23
    check-cast p5, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;

    invoke-virtual/range {p0 .. p5}, Lcom/github/penfeizhou/animation/apng/decode/APNGFrame;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/apng/io/APNGWriter;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
