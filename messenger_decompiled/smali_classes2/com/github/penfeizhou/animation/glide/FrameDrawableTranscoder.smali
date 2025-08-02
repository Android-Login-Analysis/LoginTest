.class Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder;
.super Ljava/lang/Object;
.source "FrameDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;",
            ">;",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    .line 32
    sget-object v0, Lcom/github/penfeizhou/animation/glide/AnimationDecoderOption;->NO_ANIMATION_BOUNDS_MEASURE:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 33
    instance-of v0, p1, Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/github/penfeizhou/animation/apng/APNGDrawable;

    check-cast p1, Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;

    invoke-direct {v0, p1}, Lcom/github/penfeizhou/animation/apng/APNGDrawable;-><init>(Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/github/penfeizhou/animation/apng/APNGDrawable;->setAutoPlay(Z)V

    .line 36
    invoke-virtual {v0, p2}, Lcom/github/penfeizhou/animation/apng/APNGDrawable;->setNoMeasure(Z)V

    .line 37
    new-instance p1, Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$1;

    invoke-direct {p1, p0, v0, v0}, Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$1;-><init>(Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder;Landroid/graphics/drawable/Drawable;Lcom/github/penfeizhou/animation/apng/APNGDrawable;)V

    return-object p1

    .line 59
    :cond_0
    instance-of v0, p1, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lcom/github/penfeizhou/animation/webp/WebPDrawable;

    check-cast p1, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;

    invoke-direct {v0, p1}, Lcom/github/penfeizhou/animation/webp/WebPDrawable;-><init>(Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/github/penfeizhou/animation/webp/WebPDrawable;->setAutoPlay(Z)V

    .line 62
    invoke-virtual {v0, p2}, Lcom/github/penfeizhou/animation/webp/WebPDrawable;->setNoMeasure(Z)V

    .line 63
    new-instance p1, Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$2;

    invoke-direct {p1, p0, v0, v0}, Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$2;-><init>(Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder;Landroid/graphics/drawable/Drawable;Lcom/github/penfeizhou/animation/webp/WebPDrawable;)V

    return-object p1

    .line 84
    :cond_1
    instance-of v0, p1, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Lcom/github/penfeizhou/animation/gif/GifDrawable;

    check-cast p1, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;

    invoke-direct {v0, p1}, Lcom/github/penfeizhou/animation/gif/GifDrawable;-><init>(Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/github/penfeizhou/animation/gif/GifDrawable;->setAutoPlay(Z)V

    .line 87
    invoke-virtual {v0, p2}, Lcom/github/penfeizhou/animation/gif/GifDrawable;->setNoMeasure(Z)V

    .line 88
    new-instance p1, Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$3;

    invoke-direct {p1, p0, v0, v0}, Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$3;-><init>(Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder;Landroid/graphics/drawable/Drawable;Lcom/github/penfeizhou/animation/gif/GifDrawable;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
