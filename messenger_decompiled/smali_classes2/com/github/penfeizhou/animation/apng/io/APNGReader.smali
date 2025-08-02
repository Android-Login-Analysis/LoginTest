.class public Lcom/github/penfeizhou/animation/apng/io/APNGReader;
.super Lcom/github/penfeizhou/animation/io/FilterReader;
.source "APNGReader.java"


# static fields
.field private static __intBytes:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->__intBytes:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/io/Reader;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/io/FilterReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    return-void
.end method

.method protected static ensureBytes()[B
    .locals 2

    .line 20
    sget-object v0, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->__intBytes:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 23
    sget-object v1, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->__intBytes:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public matchFourCC(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readFourCC()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    mul-int/lit8 v4, v3, 0x8

    shr-int v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public readFourCC()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->ensureBytes()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0, v0, v2, v1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->read([BII)I

    .line 67
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->ensureBytes()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0, v0, v2, v1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->read([BII)I

    const/4 v1, 0x3

    .line 35
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->ensureBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p0, v0, v2, v1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->read([BII)I

    const/4 v1, 0x1

    .line 44
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method
