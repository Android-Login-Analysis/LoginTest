.class public abstract Lcom/github/penfeizhou/animation/loader/ByteBufferLoader;
.super Ljava/lang/Object;
.source "ByteBufferLoader.java"

# interfaces
.implements Lcom/github/penfeizhou/animation/loader/Loader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method public obtain()Lcom/github/penfeizhou/animation/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/github/penfeizhou/animation/io/ByteBufferReader;

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/loader/ByteBufferLoader;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/io/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
