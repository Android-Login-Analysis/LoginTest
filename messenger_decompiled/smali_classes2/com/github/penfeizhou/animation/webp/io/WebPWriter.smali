.class public Lcom/github/penfeizhou/animation/webp/io/WebPWriter;
.super Lcom/github/penfeizhou/animation/io/ByteBufferWriter;
.source "WebPWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/io/ByteBufferWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public put1Based(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putUInt24(I)V

    return-void
.end method

.method public putFourCC(Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    const/4 v0, 0x2

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    const/4 v0, 0x3

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    return-void

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->skip(I)V

    return-void
.end method

.method public putUInt16(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    return-void
.end method

.method public putUInt24(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    return-void
.end method

.method public putUInt32(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    return-void
.end method
