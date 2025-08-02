.class Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;
.super Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;
.source "ProfileGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;,
        Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$HeaderHolder;,
        Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final itemClickListener:Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;

.field private final locale:Ljava/util/Locale;

.field private media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

.field private final selected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 62
    iput-object p4, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->locale:Ljava/util/Locale;

    .line 63
    iput-object p3, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    .line 64
    iput-object p5, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;

    .line 65
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selected:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 140
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getSectionCount()I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getSectionCount()I

    move-result v0

    return v0
.end method

.method public getSectionItemCount(I)I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getSectionItemCount(I)I

    move-result p1

    return p1
.end method

.method public getSelectedMedia()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selected:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMediaCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindItemViewHolder$0$org-thoughtcrime-securesms-ProfileGalleryAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;->onMediaClicked(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method synthetic lambda$onBindItemViewHolder$1$org-thoughtcrime-securesms-ProfileGalleryAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)Z
    .locals 0

    .line 100
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;->onMediaLongClicked(Lcom/b44t/messenger/DcMsg;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBindHeaderViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;I)V
    .locals 2

    .line 84
    check-cast p1, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$HeaderHolder;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$HeaderHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p2, v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getName(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;II)V
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {v0, p2, p3}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->get(II)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    .line 90
    check-cast p1, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ViewHolder;

    iget-object p3, p1, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ViewHolder;->imageView:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    .line 91
    iget-object p1, p1, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ViewHolder;->selectedIndicator:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getSlideForMsg(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {p3, v1, v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 98
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 104
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selected:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;
    .locals 3

    .line 74
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$HeaderHolder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$HeaderHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;
    .locals 3

    .line 79
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ViewHolder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public selectAll()V
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 126
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selected:Ljava/util/Set;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getAll()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMedia(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    return-void
.end method

.method public toggleSelection(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->notifyDataSetChanged()V

    return-void
.end method
