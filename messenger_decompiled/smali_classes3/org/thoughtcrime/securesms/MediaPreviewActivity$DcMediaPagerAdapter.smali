.class Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;
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
    name = "DcMediaPagerAdapter"
.end annotation


# instance fields
.field private active:Z

.field private autoPlayPosition:I

.field private final context:Landroid/content/Context;

.field private final gallery:Lcom/b44t/messenger/DcMediaGalleryElement;

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final leftIsRecent:Z

.field private final mediaViews:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/thoughtcrime/securesms/components/MediaView;",
            ">;"
        }
    .end annotation
.end field

.field private final window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/view/Window;Lcom/b44t/messenger/DcMediaGalleryElement;Z)V
    .locals 1

    .line 565
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 551
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->mediaViews:Ljava/util/WeakHashMap;

    .line 566
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->context:Landroid/content/Context;

    .line 567
    iput-object p2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 568
    iput-object p3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->window:Landroid/view/Window;

    .line 569
    iput-object p4, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->gallery:Lcom/b44t/messenger/DcMediaGalleryElement;

    .line 570
    iput-boolean p5, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->leftIsRecent:Z

    .line 571
    invoke-virtual {p4}, Lcom/b44t/messenger/DcMediaGalleryElement;->getPosition()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->autoPlayPosition:I

    return-void
.end method

.method private getCursorPosition(I)I
    .locals 1

    .line 648
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->leftIsRecent:Z

    if-eqz v0, :cond_0

    return p1

    .line 649
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->gallery:Lcom/b44t/messenger/DcMediaGalleryElement;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMediaGalleryElement;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 619
    check-cast p3, Landroid/widget/FrameLayout;

    const v0, 0x7f0901eb

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/MediaView;

    .line 620
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/MediaView;->cleanup()V

    .line 622
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->mediaViews:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 581
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->active:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 582
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->gallery:Lcom/b44t/messenger/DcMediaGalleryElement;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMediaGalleryElement;->getCount()I

    move-result v0

    return v0
.end method

.method public getMediaItemFor(I)Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;
    .locals 12

    .line 627
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->gallery:Lcom/b44t/messenger/DcMediaGalleryElement;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->getCursorPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcMediaGalleryElement;->moveToPosition(I)V

    .line 628
    iget-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->gallery:Lcom/b44t/messenger/DcMediaGalleryElement;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMediaGalleryElement;->getMessage()Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    .line 630
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    new-instance v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/recipients/Recipient;->fromChat(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object v2

    .line 633
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFileAsFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 634
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFilemime()Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v5

    .line 636
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getDateReceived()J

    move-result-wide v6

    .line 637
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFilebytes()J

    move-result-wide v8

    .line 638
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v10

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;-><init>(Lorg/thoughtcrime/securesms/recipients/Recipient;Landroid/net/Uri;Ljava/lang/String;IJJZLorg/thoughtcrime/securesms/MediaPreviewActivity$1;)V

    return-object v0

    .line 630
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11

    .line 592
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901eb

    .line 593
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/MediaView;

    .line 594
    iget v3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->autoPlayPosition:I

    if-ne p2, v3, :cond_0

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 595
    :goto_0
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->getCursorPosition(I)I

    move-result v2

    const/4 v3, -0x1

    .line 597
    iput v3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->autoPlayPosition:I

    .line 599
    iget-object v3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->gallery:Lcom/b44t/messenger/DcMediaGalleryElement;

    invoke-virtual {v3, v2}, Lcom/b44t/messenger/DcMediaGalleryElement;->moveToPosition(I)V

    .line 601
    iget-object v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->gallery:Lcom/b44t/messenger/DcMediaGalleryElement;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMediaGalleryElement;->getMessage()Lcom/b44t/messenger/DcMsg;

    move-result-object v2

    .line 605
    :try_start_0
    iget-object v4, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->window:Landroid/view/Window;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getFileAsFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 606
    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getFilemime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getFilebytes()J

    move-result-wide v8

    move-object v3, v1

    .line 605
    invoke-virtual/range {v3 .. v10}, Lorg/thoughtcrime/securesms/components/MediaView;->set(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/view/Window;Landroid/net/Uri;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 608
    invoke-static {}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->access$1100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    :goto_1
    iget-object v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->mediaViews:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
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
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->mediaViews:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/MediaView;

    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/MediaView;->pause()V

    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 575
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->active:Z

    .line 576
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
