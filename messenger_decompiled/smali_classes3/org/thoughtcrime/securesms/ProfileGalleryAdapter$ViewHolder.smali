.class Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ViewHolder;
.super Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;
.source "ProfileGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field final imageView:Lorg/thoughtcrime/securesms/components/ThumbnailView;

.field final selectedIndicator:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090184

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ThumbnailView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ViewHolder;->imageView:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    const v0, 0x7f090320

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ViewHolder;->selectedIndicator:Landroid/view/View;

    return-void
.end method
