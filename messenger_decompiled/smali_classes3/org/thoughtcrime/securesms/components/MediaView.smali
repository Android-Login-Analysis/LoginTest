.class public Lorg/thoughtcrime/securesms/components/MediaView;
.super Landroid/widget/FrameLayout;
.source "MediaView.java"


# instance fields
.field private imageView:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

.field private videoView:Lorg/thoughtcrime/securesms/util/views/Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "Lorg/thoughtcrime/securesms/video/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/MediaView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/MediaView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/MediaView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/MediaView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0094

    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/components/MediaView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090184

    .line 52
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/MediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ZoomingImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/MediaView;->imageView:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

    .line 53
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/Stub;

    const v1, 0x7f0903d4

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/MediaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/views/Stub;-><init>(Landroid/view/ViewStub;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MediaView;->imageView:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->cleanup()V

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/video/VideoPlayer;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->cleanup()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/video/VideoPlayer;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public set(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/view/Window;Landroid/net/Uri;Ljava/lang/String;JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "image/"

    .line 64
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 65
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/MediaView;->imageView:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->setVisibility(I)V

    .line 66
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/video/VideoPlayer;

    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->setVisibility(I)V

    .line 67
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/MediaView;->imageView:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

    invoke-virtual {p2, p1, p3, p4}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->setImageUri(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "video/"

    .line 68
    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MediaView;->imageView:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/video/VideoPlayer;

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/video/VideoPlayer;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->setWindow(Landroid/view/Window;)V

    .line 72
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MediaView;->videoView:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/video/VideoPlayer;

    new-instance p2, Lorg/thoughtcrime/securesms/mms/VideoSlide;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/MediaView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4, p3, p5, p6}, Lorg/thoughtcrime/securesms/mms/VideoSlide;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {p1, p2, p7}, Lorg/thoughtcrime/securesms/video/VideoPlayer;->setVideoSource(Lorg/thoughtcrime/securesms/mms/VideoSlide;Z)V

    :goto_0
    return-void

    .line 74
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported media type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
