.class Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecentPhotoViewRail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecentPhotoViewHolder"
.end annotation


# instance fields
.field final imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903aa

    .line 137
    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method
