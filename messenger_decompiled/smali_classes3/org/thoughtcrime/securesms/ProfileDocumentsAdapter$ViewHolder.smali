.class Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;
.super Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;
.source "ProfileDocumentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private final audioView:Lorg/thoughtcrime/securesms/components/AudioView;

.field private final date:Landroid/widget/TextView;

.field private final documentView:Lorg/thoughtcrime/securesms/components/DocumentView;

.field private final webxdcView:Lorg/thoughtcrime/securesms/components/WebxdcView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900f7

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/DocumentView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->documentView:Lorg/thoughtcrime/securesms/components/DocumentView;

    const v0, 0x7f09006b

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AudioView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->audioView:Lorg/thoughtcrime/securesms/components/AudioView;

    const v0, 0x7f0903e4

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/WebxdcView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->webxdcView:Lorg/thoughtcrime/securesms/components/WebxdcView;

    const v0, 0x7f0900d5

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->date:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/DocumentView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->documentView:Lorg/thoughtcrime/securesms/components/DocumentView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/WebxdcView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->webxdcView:Lorg/thoughtcrime/securesms/components/WebxdcView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Lorg/thoughtcrime/securesms/components/AudioView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->audioView:Lorg/thoughtcrime/securesms/components/AudioView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ViewHolder;->date:Landroid/widget/TextView;

    return-object p0
.end method
