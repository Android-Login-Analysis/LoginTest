.class public Lorg/thoughtcrime/securesms/components/ZoomingImageView;
.super Landroid/widget/FrameLayout;
.source "ZoomingImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/ZoomingImageView$AttachmentBitmapDecoderFactory;,
        Lorg/thoughtcrime/securesms/components/ZoomingImageView$AttachmentRegionDecoderFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.thoughtcrime.securesms.components.ZoomingImageView"


# instance fields
.field private final photoView:Lcom/github/chrisbanes/photoview/PhotoView;

.field private final subsamplingImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0c0112

    .line 54
    invoke-static {p1, p2, p0}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090186

    .line 56
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/chrisbanes/photoview/PhotoView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    const p1, 0x7f090383

    .line 57
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->subsamplingImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 p2, -0x1

    .line 59
    invoke-virtual {p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/ZoomingImageView;Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->setImageViewUri(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/components/ZoomingImageView;Landroid/net/Uri;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->setSubsamplingImageViewUri(Landroid/net/Uri;)V

    return-void
.end method

.method private setImageViewUri(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->subsamplingImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setVisibility(I)V

    .line 102
    new-instance v0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;

    invoke-direct {v0, p2}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 103
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->dontTransform()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    const/high16 p2, -0x80000000

    .line 105
    invoke-virtual {p1, p2, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->override(II)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 106
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private setSubsamplingImageViewUri(Landroid/net/Uri;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->subsamplingImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v1, Lorg/thoughtcrime/securesms/components/ZoomingImageView$AttachmentBitmapDecoderFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/components/ZoomingImageView$AttachmentBitmapDecoderFactory;-><init>(Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setBitmapDecoderFactory(Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;)V

    .line 111
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->subsamplingImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v1, Lorg/thoughtcrime/securesms/components/ZoomingImageView$AttachmentRegionDecoderFactory;

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/components/ZoomingImageView$AttachmentRegionDecoderFactory;-><init>(Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setRegionDecoderFactory(Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;)V

    .line 113
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->subsamplingImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->subsamplingImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->uri(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->subsamplingImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->recycle()V

    return-void
.end method

.method public setImageUri(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8

    .line 65
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 66
    invoke-static {}, Lorg/thoughtcrime/securesms/util/BitmapUtil;->getMaxTextureSize()I

    move-result v5

    .line 68
    sget-object v0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Max texture size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v7, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;-><init>(Lorg/thoughtcrime/securesms/components/ZoomingImageView;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;ILorg/thoughtcrime/securesms/mms/GlideRequests;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 95
    invoke-virtual {v7, p1, p2}, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
