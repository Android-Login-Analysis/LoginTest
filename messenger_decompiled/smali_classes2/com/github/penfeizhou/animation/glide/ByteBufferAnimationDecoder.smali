.class public Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder;
.super Ljava/lang/Object;
.source "ByteBufferAnimationDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder;->decode(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance p2, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$1;

    invoke-direct {p2, p0, p1}, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$1;-><init>(Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder;Ljava/nio/ByteBuffer;)V

    .line 48
    new-instance p3, Lcom/github/penfeizhou/animation/io/ByteBufferReader;

    invoke-direct {p3, p1}, Lcom/github/penfeizhou/animation/io/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p3}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser;->isAWebP(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 49
    new-instance p3, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;

    invoke-direct {p3, p2, p4}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance p3, Lcom/github/penfeizhou/animation/io/ByteBufferReader;

    invoke-direct {p3, p1}, Lcom/github/penfeizhou/animation/io/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p3}, Lcom/github/penfeizhou/animation/apng/decode/APNGParser;->isAPNG(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 51
    new-instance p3, Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;

    invoke-direct {p3, p2, p4}, Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    goto :goto_0

    .line 52
    :cond_1
    new-instance p3, Lcom/github/penfeizhou/animation/io/ByteBufferReader;

    invoke-direct {p3, p1}, Lcom/github/penfeizhou/animation/io/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p3}, Lcom/github/penfeizhou/animation/gif/decode/GifParser;->isGif(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 53
    new-instance p3, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;

    invoke-direct {p3, p2, p4}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    .line 57
    :goto_0
    new-instance p2, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;I)V

    return-object p2

    :cond_2
    return-object p4
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder;->handles(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/Options;)Z
    .locals 1

    .line 32
    sget-object v0, Lcom/github/penfeizhou/animation/glide/AnimationDecoderOption;->DISABLE_ANIMATION_WEBP_DECODER:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/penfeizhou/animation/io/ByteBufferReader;

    invoke-direct {v0, p1}, Lcom/github/penfeizhou/animation/io/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser;->isAWebP(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/github/penfeizhou/animation/glide/AnimationDecoderOption;->DISABLE_ANIMATION_APNG_DECODER:Lcom/bumptech/glide/load/Option;

    .line 33
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/github/penfeizhou/animation/io/ByteBufferReader;

    invoke-direct {v0, p1}, Lcom/github/penfeizhou/animation/io/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Lcom/github/penfeizhou/animation/apng/decode/APNGParser;->isAPNG(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/github/penfeizhou/animation/glide/AnimationDecoderOption;->DISABLE_ANIMATION_GIF_DECODER:Lcom/bumptech/glide/load/Option;

    .line 34
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Lcom/github/penfeizhou/animation/io/ByteBufferReader;

    invoke-direct {p2, p1}, Lcom/github/penfeizhou/animation/io/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p2}, Lcom/github/penfeizhou/animation/gif/decode/GifParser;->isGif(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
