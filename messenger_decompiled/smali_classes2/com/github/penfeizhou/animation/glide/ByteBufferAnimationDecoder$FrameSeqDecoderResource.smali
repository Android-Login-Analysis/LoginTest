.class Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;
.super Ljava/lang/Object;
.source "ByteBufferAnimationDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameSeqDecoderResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final decoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

.field private final size:I


# direct methods
.method constructor <init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;->decoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    .line 66
    iput p2, p0, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;->size:I

    return-void
.end method


# virtual methods
.method public get()Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;->decoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;->get()Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;",
            ">;"
        }
    .end annotation

    .line 72
    const-class v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;->size:I

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$FrameSeqDecoderResource;->decoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->stop()V

    return-void
.end method
