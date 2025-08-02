.class public Lcom/github/penfeizhou/animation/apng/io/APNGWriter;
.super Lcom/github/penfeizhou/animation/io/ByteBufferWriter;
.source "APNGWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/io/ByteBufferWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public reset(I)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/github/penfeizhou/animation/io/ByteBufferWriter;->reset(I)V

    .line 34
    iget-object p1, p0, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->byteBuffer:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeFourCC(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putByte(B)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putByte(B)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putByte(B)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putByte(B)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putByte(B)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putByte(B)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putByte(B)V

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;->putByte(B)V

    return-void
.end method
