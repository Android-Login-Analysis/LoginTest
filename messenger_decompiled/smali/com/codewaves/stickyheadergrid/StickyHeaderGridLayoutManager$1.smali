.class Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "StickyHeaderGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$1;->this$0:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 8

    .line 281
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$1;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$1;->this$0:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    invoke-virtual {v1, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$1;->this$0:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    invoke-static {v2, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->access$700(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;I)I

    move-result v1

    .line 288
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v3

    .line 289
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v4

    .line 290
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p1

    add-int v5, p1, v1

    .line 291
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    sub-int v6, p1, v0

    move-object v2, p0

    move v7, p2

    .line 292
    invoke-virtual/range {v2 .. v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$1;->calculateDtToFit(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
