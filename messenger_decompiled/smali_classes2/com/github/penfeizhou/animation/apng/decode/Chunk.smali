.class Lcom/github/penfeizhou/animation/apng/decode/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field crc:I

.field fourcc:I

.field length:I

.field offset:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fourCCToInt(Ljava/lang/String;)I
    .locals 2

    .line 25
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

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 31
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
.method innerParse(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method parse(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->available()I

    move-result v0

    .line 37
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->innerParse(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)V

    .line 38
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->available()I

    move-result v1

    sub-int/2addr v0, v1

    .line 39
    iget v1, p0, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    if-gt v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    int-to-long v0, v1

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->skip(J)J

    :cond_0
    return-void

    .line 40
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Out of chunk area"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
