.class public Lcom/github/penfeizhou/animation/apng/APNGDrawable;
.super Lcom/github/penfeizhou/animation/FrameAnimationDrawable;
.source "APNGDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/FrameAnimationDrawable<",
        "Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/loader/Loader;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;)V

    return-void
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/github/penfeizhou/animation/apng/APNGDrawable;
    .locals 1

    .line 35
    new-instance v0, Lcom/github/penfeizhou/animation/loader/AssetStreamLoader;

    invoke-direct {v0, p0, p1}, Lcom/github/penfeizhou/animation/loader/AssetStreamLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance p0, Lcom/github/penfeizhou/animation/apng/APNGDrawable;

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/apng/APNGDrawable;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;)V

    return-object p0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/github/penfeizhou/animation/apng/APNGDrawable;
    .locals 1

    .line 40
    new-instance v0, Lcom/github/penfeizhou/animation/loader/FileLoader;

    invoke-direct {v0, p0}, Lcom/github/penfeizhou/animation/loader/FileLoader;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance p0, Lcom/github/penfeizhou/animation/apng/APNGDrawable;

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/apng/APNGDrawable;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;)V

    return-object p0
.end method

.method public static fromResource(Landroid/content/Context;I)Lcom/github/penfeizhou/animation/apng/APNGDrawable;
    .locals 1

    .line 45
    new-instance v0, Lcom/github/penfeizhou/animation/loader/ResourceStreamLoader;

    invoke-direct {v0, p0, p1}, Lcom/github/penfeizhou/animation/loader/ResourceStreamLoader;-><init>(Landroid/content/Context;I)V

    .line 46
    new-instance p0, Lcom/github/penfeizhou/animation/apng/APNGDrawable;

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/apng/APNGDrawable;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;)V

    return-object p0
.end method


# virtual methods
.method protected createFrameSeqDecoder(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;
    .locals 1

    .line 30
    new-instance v0, Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;

    invoke-direct {v0, p1, p2}, Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    return-object v0
.end method

.method protected bridge synthetic createFrameSeqDecoder(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/github/penfeizhou/animation/apng/APNGDrawable;->createFrameSeqDecoder(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;

    move-result-object p1

    return-object p1
.end method
