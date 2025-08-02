.class public Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StickyHeaderGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getSectionItemViewType()I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->access$000(I)I

    move-result v0

    return v0
.end method

.method public isHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
