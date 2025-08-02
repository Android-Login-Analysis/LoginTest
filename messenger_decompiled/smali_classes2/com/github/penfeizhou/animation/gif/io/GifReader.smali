.class public Lcom/github/penfeizhou/animation/gif/io/GifReader;
.super Lcom/github/penfeizhou/animation/io/FilterReader;
.source "GifReader.java"


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

    .line 15
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/github/penfeizhou/animation/gif/io/GifReader;->__intBytes:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/io/Reader;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/io/FilterReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    return-void
.end method

.method private static ensureBytes()[B
    .locals 2

    .line 19
    sget-object v0, Lcom/github/penfeizhou/animation/gif/io/GifReader;->__intBytes:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 22
    sget-object v1, Lcom/github/penfeizhou/animation/gif/io/GifReader;->__intBytes:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public readUInt16()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->ensureBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v0, v2, v1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->read([BII)I

    .line 34
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method
