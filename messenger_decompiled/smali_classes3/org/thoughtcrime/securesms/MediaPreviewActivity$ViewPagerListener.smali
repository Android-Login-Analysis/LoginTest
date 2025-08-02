.class Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;
.super Lorg/thoughtcrime/securesms/components/viewpager/ExtendedOnPageChangedListener;
.source "MediaPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/MediaPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;->this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/viewpager/ExtendedOnPageChangedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;Lorg/thoughtcrime/securesms/MediaPreviewActivity$1;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;-><init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 456
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/components/viewpager/ExtendedOnPageChangedListener;->onPageSelected(I)V

    .line 458
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;->this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->access$800(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItemAdapter;

    if-eqz v0, :cond_1

    .line 461
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItemAdapter;->getMediaItemFor(I)Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    move-result-object p1

    .line 462
    invoke-static {p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$900(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$900(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;->this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->addListener(Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;)V

    .line 464
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;->this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->access$1000(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)V

    :cond_1
    return-void
.end method

.method public onPageUnselected(I)V
    .locals 3

    .line 471
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;->this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->access$800(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItemAdapter;

    if-eqz v0, :cond_1

    .line 474
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItemAdapter;->getMediaItemFor(I)Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    move-result-object v1

    .line 475
    invoke-static {v1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$900(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$900(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;->this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/recipients/Recipient;->removeListener(Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;)V

    .line 477
    :cond_0
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItemAdapter;->pause(I)V

    :cond_1
    return-void
.end method
