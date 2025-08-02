.class Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MediaPreviewActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItemAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/MediaPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleItemPagerAdapter"
.end annotation


# instance fields
.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final mediaType:Ljava/lang/String;

.field private final size:J

.field private final uri:Landroid/net/Uri;

.field private final window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/view/Window;Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 0

    .line 495
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 496
    iput-object p2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 497
    iput-object p3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->window:Landroid/view/Window;

    .line 498
    iput-object p4, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->uri:Landroid/net/Uri;

    .line 499
    iput-object p5, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->mediaType:Ljava/lang/String;

    .line 500
    iput-wide p6, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->size:J

    .line 501
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 532
    check-cast p3, Landroid/widget/FrameLayout;

    const p2, 0x7f0901eb

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/MediaView;

    .line 533
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/MediaView;->cleanup()V

    .line 535
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMediaItemFor(I)Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;
    .locals 11

    .line 540
    new-instance p1, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->mediaType:Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;-><init>(Lorg/thoughtcrime/securesms/recipients/Recipient;Landroid/net/Uri;Ljava/lang/String;IJJZLorg/thoughtcrime/securesms/MediaPreviewActivity$1;)V

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9

    .line 516
    iget-object p2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0096

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0901eb

    .line 517
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/thoughtcrime/securesms/components/MediaView;

    .line 520
    :try_start_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->window:Landroid/view/Window;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->uri:Landroid/net/Uri;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->mediaType:Ljava/lang/String;

    iget-wide v6, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;->size:J

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lorg/thoughtcrime/securesms/components/MediaView;->set(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/view/Window;Landroid/net/Uri;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 522
    invoke-static {}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pause(I)V
    .locals 0

    return-void
.end method
