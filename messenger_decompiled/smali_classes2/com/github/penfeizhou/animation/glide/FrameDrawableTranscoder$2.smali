.class Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$2;
.super Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "FrameDrawableTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder;

.field final synthetic val$webPDrawable:Lcom/github/penfeizhou/animation/webp/WebPDrawable;


# direct methods
.method constructor <init>(Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder;Landroid/graphics/drawable/Drawable;Lcom/github/penfeizhou/animation/webp/WebPDrawable;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$2;->this$0:Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder;

    iput-object p3, p0, Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$2;->val$webPDrawable:Lcom/github/penfeizhou/animation/webp/WebPDrawable;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 67
    const-class v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/github/penfeizhou/animation/glide/FrameDrawableTranscoder$2;->val$webPDrawable:Lcom/github/penfeizhou/animation/webp/WebPDrawable;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/webp/WebPDrawable;->getMemorySize()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->initialize()V

    return-void
.end method

.method public recycle()V
    .locals 0

    return-void
.end method
