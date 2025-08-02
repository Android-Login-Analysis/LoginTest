.class Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$1;
.super Lcom/github/penfeizhou/animation/loader/ByteBufferLoader;
.source "ByteBufferAnimationDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder;->decode(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder;

.field final synthetic val$source:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$1;->this$0:Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder;

    iput-object p2, p0, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$1;->val$source:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/loader/ByteBufferLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$1;->val$source:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    iget-object v0, p0, Lcom/github/penfeizhou/animation/glide/ByteBufferAnimationDecoder$1;->val$source:Ljava/nio/ByteBuffer;

    return-object v0
.end method
