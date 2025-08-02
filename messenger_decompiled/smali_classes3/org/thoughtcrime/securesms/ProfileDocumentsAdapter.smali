.class Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;
.super Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;
.source "ProfileDocumentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;,
        Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$HeaderHolder;,
        Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

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
.method constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->context:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->locale:Ljava/util/Locale;

    .line 68
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    .line 69
    iput-object p4, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    .line 70
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 174
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getSectionCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getSectionCount()I

    move-result v0

    return v0
.end method

.method public getSectionItemCount(I)I
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

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

    .line 169
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMediaCount()I
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindItemViewHolder$0$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaClicked(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method synthetic lambda$onBindItemViewHolder$1$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)Z
    .locals 0

    .line 105
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaLongClicked(Lcom/b44t/messenger/DcMsg;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onBindItemViewHolder$2$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaClicked(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method synthetic lambda$onBindItemViewHolder$3$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 0

    .line 115
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaClicked(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method synthetic lambda$onBindItemViewHolder$4$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)Z
    .locals 0

    .line 116
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaLongClicked(Lcom/b44t/messenger/DcMsg;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onBindItemViewHolder$5$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaClicked(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method synthetic lambda$onBindItemViewHolder$6$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 0

    .line 125
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaClicked(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method synthetic lambda$onBindItemViewHolder$7$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)Z
    .locals 0

    .line 126
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaLongClicked(Lcom/b44t/messenger/DcMsg;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onBindItemViewHolder$8$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaClicked(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method synthetic lambda$onBindItemViewHolder$9$org-thoughtcrime-securesms-ProfileDocumentsAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)Z
    .locals 0

    .line 135
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;->onMediaLongClicked(Lcom/b44t/messenger/DcMsg;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBindHeaderViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;I)V
    .locals 2

    .line 89
    check-cast p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$HeaderHolder;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$HeaderHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p2, v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getName(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;II)V
    .locals 3

    .line 94
    check-cast p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;

    .line 95
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {v0, p2, p3}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->get(II)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    .line 96
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->context:Landroid/content/Context;

    invoke-static {p3, p2}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getSlideForMsg(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object p3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    .line 98
    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/mms/Slide;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$000(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/DocumentView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 100
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 102
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 103
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object v0

    check-cast p3, Lorg/thoughtcrime/securesms/mms/AudioSlide;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getDuration()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lorg/thoughtcrime/securesms/components/AudioView;->setAudio(Lorg/thoughtcrime/securesms/mms/AudioSlide;I)V

    .line 104
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object p3

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/AudioView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object p3

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/AudioView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object p3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/AudioView;->disablePlayer(Z)V

    .line 107
    iget-object p3, p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 109
    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/mms/Slide;->isWebxdcDocument()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 111
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$000(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/DocumentView;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 113
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object p3

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 114
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object p3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->context:Landroid/content/Context;

    const v1, 0x7f120434

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setWebxdc(Lcom/b44t/messenger/DcMsg;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object p3

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object p3

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    iget-object p3, p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 119
    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/mms/Slide;->hasDocument()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 121
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 123
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$000(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/DocumentView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 124
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$000(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/DocumentView;

    move-result-object v0

    check-cast p3, Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    invoke-virtual {v0, p3}, Lorg/thoughtcrime/securesms/components/DocumentView;->setDocument(Lorg/thoughtcrime/securesms/mms/DocumentSlide;)V

    .line 125
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$000(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/DocumentView;

    move-result-object p3

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/DocumentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$000(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/DocumentView;

    move-result-object p3

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/DocumentView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    iget-object p3, p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$000(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/DocumentView;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 131
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 132
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 135
    :goto_0
    iget-object p3, p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 136
    iget-object p3, p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 138
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->access$300(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getTimestamp()J

    move-result-wide v1

    invoke-static {p3, v0, v1, v2}, Lorg/thoughtcrime/securesms/util/DateUtils;->getBriefRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Locale;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;
    .locals 3

    .line 79
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$HeaderHolder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$HeaderHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;
    .locals 3

    .line 84
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00e0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public selectAll()V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 160
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getAll()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMedia(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->media:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    return-void
.end method

.method public toggleSelection(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selected:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->notifyDataSetChanged()V

    return-void
.end method
