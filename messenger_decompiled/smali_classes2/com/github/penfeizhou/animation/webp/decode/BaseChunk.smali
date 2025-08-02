.class public Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;
.super Ljava/lang/Object;
.source "BaseChunk.java"


# static fields
.field public static final CHUNCK_HEADER_OFFSET:I = 0x8


# instance fields
.field public chunkFourCC:I

.field public offset:I

.field public payloadSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fourCCToInt(Ljava/lang/String;)I
    .locals 2

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const p0, -0x45210001

    return p0
.end method


# virtual methods
.method innerParse(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method final parse(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->available()I

    move-result v0

    .line 33
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;->innerParse(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)V

    .line 34
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->available()I

    move-result v1

    sub-int/2addr v0, v1

    .line 39
    iget v1, p0, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;->payloadSize:I

    and-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    int-to-long v0, v1

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->skip(J)J

    :cond_0
    return-void

    .line 41
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Out of chunk area"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
