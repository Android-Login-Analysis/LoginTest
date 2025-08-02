.class public Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "StickyHeaderGridLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROW_COUNT:I = 0x10

.field public static final TAG:Ljava/lang/String; = "StickyLayoutManager"


# instance fields
.field private mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

.field private mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

.field private mAverageHeaderHeight:I

.field private final mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

.field private mFillViewSet:[Landroid/view/View;

.field private mFloatingHeaderPosition:I

.field private mFloatingHeaderView:Landroid/view/View;

.field private mHeaderOverlapMargin:I

.field private mHeaderStateListener:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;

.field private mHeadersStartPosition:I

.field private mLayoutRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mPendingScrollPositionOffset:I

.field private mSpanCount:I

.field private mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

.field private mStickOffset:I

.field private mStickyHeadeState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

.field private mStickyHeaderSection:I

.field private mStickyHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 96
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 33
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderSection:I

    .line 53
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingScrollPosition:I

    .line 55
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    invoke-direct {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;-><init>()V

    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    .line 57
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;-><init>(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$1;)V

    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    .line 97
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanCount:I

    .line 98
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillViewSet:[Landroid/view/View;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderOverlapMargin:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Span count should be at least 1. Provided "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$700(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;I)I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPositionSectionHeaderHeight(I)I

    move-result p0

    return p0
.end method

.method private addOffScreenRows(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZ)V
    .locals 7

    if-eqz p5, :cond_1

    .line 726
    :goto_0
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getBottomRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object p3

    .line 727
    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result p5

    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    add-int v5, p5, v0

    .line 728
    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result p5

    invoke-direct {p0, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    add-int/2addr v0, p4

    if-ge p5, v0, :cond_3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p5

    if-lt v5, p5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    .line 731
    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZII)V

    goto :goto_0

    .line 737
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getTopRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object p4

    .line 738
    invoke-static {p4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result p5

    add-int/lit8 v4, p5, -0x1

    .line 739
    invoke-static {p4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result p5

    invoke-direct {p0, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    sub-int v0, p3, v0

    if-lt p5, v0, :cond_3

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    .line 742
    invoke-static {p4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZII)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private addRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZII)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p4

    move/from16 v8, p5

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    if-eqz p3, :cond_0

    .line 684
    iget-object v3, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget v3, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderPosition:I

    if-ne v7, v3, :cond_0

    .line 685
    invoke-direct/range {p0 .. p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeFloatingHeader(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 688
    :cond_0
    iget-object v3, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v3, v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemViewInternalType(I)I

    move-result v3

    const/4 v9, 0x0

    if-nez v3, :cond_4

    .line 690
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v10

    if-eqz p3, :cond_1

    .line 692
    iget v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    invoke-virtual {v6, v10, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 695
    :cond_1
    invoke-virtual {v6, v10}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addView(Landroid/view/View;)V

    .line 697
    :goto_0
    invoke-virtual {v6, v10, v9, v9}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 698
    invoke-virtual {v6, v10}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v11

    .line 699
    iget v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderOverlapMargin:I

    if-lt v11, v0, :cond_2

    move v12, v0

    goto :goto_1

    :cond_2
    move v12, v11

    :goto_1
    if-eqz p3, :cond_3

    sub-int v0, v8, v11

    add-int v13, v0, v12

    add-int v5, v8, v12

    move-object/from16 v0, p0

    move-object v1, v10

    move v3, v13

    .line 701
    invoke-virtual/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 702
    iget-object v14, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    new-instance v15, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    const/4 v3, 0x1

    move-object v0, v15

    move/from16 v2, p4

    move v4, v13

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v14, v9, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int v9, v8, v11

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p5

    move v5, v9

    .line 705
    invoke-virtual/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 706
    iget-object v13, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    new-instance v14, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    const/4 v3, 0x1

    sub-int v5, v9, v12

    move-object v0, v14

    move/from16 v2, p4

    move/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    sub-int/2addr v11, v12

    .line 708
    iput v11, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAverageHeaderHeight:I

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    .line 712
    invoke-direct {v6, v0, v1, v7, v8}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->fillTopRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    move-result-object v0

    .line 713
    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    new-instance v2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1000(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v3

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1100(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v4

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$900(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v0

    sub-int v0, v8, v0

    invoke-direct {v2, v3, v4, v0, v8}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;-><init>(IIII)V

    invoke-virtual {v1, v9, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 716
    :cond_5
    invoke-direct {v6, v0, v1, v7, v8}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->fillBottomRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    move-result-object v0

    .line 717
    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    new-instance v2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1000(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v3

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1100(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v4

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$900(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-direct {v2, v3, v4, v8, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method private clearHiddenRows(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 6

    .line 614
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingTop()I

    move-result v0

    .line 619
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_5

    .line 622
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getTopRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object p3

    .line 623
    :goto_0
    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v4

    invoke-direct {p0, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v5

    sub-int v5, v0, v5

    if-lt v4, v5, :cond_1

    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v4

    if-le v4, v1, :cond_6

    .line 624
    :cond_1
    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1700(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 625
    iget p3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    iget-object v4, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int/2addr p3, v4

    invoke-virtual {p0, p3, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 628
    :goto_2
    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 629
    invoke-virtual {p0, v2, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 630
    iget v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 633
    :cond_4
    :goto_3
    iget-object p3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 634
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getTopRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object p3

    goto :goto_0

    .line 638
    :cond_5
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getBottomRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object p3

    .line 639
    :goto_4
    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v4

    if-lt v4, v0, :cond_7

    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v4

    invoke-direct {p0, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v5

    add-int/2addr v5, v1

    if-le v4, v5, :cond_6

    goto :goto_5

    :cond_6
    return-void

    .line 640
    :cond_7
    :goto_5
    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1700(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 641
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-virtual {p0, p3, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    .line 644
    :goto_6
    invoke-static {p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 645
    iget v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 646
    iget v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 649
    :cond_9
    :goto_7
    iget-object p3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 650
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getBottomRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object p3

    goto :goto_4
.end method

.method private clearState()V
    .locals 7

    const/4 v0, 0x0

    .line 1084
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    .line 1085
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickOffset:I

    const/4 v1, 0x0

    .line 1086
    iput-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    const/4 v2, -0x1

    .line 1087
    iput v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderPosition:I

    .line 1088
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAverageHeaderHeight:I

    .line 1089
    iget-object v3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1091
    iget v3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderSection:I

    if-eq v3, v2, :cond_1

    .line 1092
    iget-object v4, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderStateListener:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;

    if-eqz v4, :cond_0

    .line 1093
    iget-object v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderView:Landroid/view/View;

    sget-object v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->NORMAL:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    invoke-interface {v4, v3, v5, v6, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;->onHeaderStateChanged(ILandroid/view/View;Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;I)V

    .line 1095
    :cond_0
    iput v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderSection:I

    .line 1096
    iput-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderView:Landroid/view/View;

    .line 1097
    sget-object v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->NORMAL:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeadeState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    :cond_1
    return-void
.end method

.method private clearViewsAndStickHeaders(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 0

    .line 656
    invoke-direct {p0, p1, p2, p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->clearHiddenRows(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 657
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 658
    invoke-direct {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->stickTopHeader(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 660
    :cond_0
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->updateTopPosition()V

    return-void
.end method

.method private fillBottomRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;
    .locals 15

    move-object v6, p0

    move/from16 v7, p3

    .line 495
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 496
    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v1, v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result v1

    .line 498
    iget-object v2, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v2, v1, v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemSectionOffset(II)I

    move-result v2

    .line 499
    iget-object v3, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    invoke-virtual {v3, v1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;->getSpanSize(II)I

    move-result v3

    .line 500
    iget-object v4, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    iget v5, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v1, v2, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;->getSpanIndex(III)I

    move-result v4

    .line 505
    iget-object v5, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillViewSet:[Landroid/view/View;

    const/4 v8, 0x0

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    move v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 506
    :goto_0
    iget v11, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanCount:I

    if-ge v4, v11, :cond_2

    .line 508
    invoke-direct {p0, v0, v4, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getSpanWidth(III)I

    move-result v11

    move-object/from16 v12, p1

    .line 509
    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v13

    .line 510
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;

    .line 511
    invoke-static {v14, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->access$1302(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;I)I

    .line 512
    invoke-static {v14, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->access$1402(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;I)I

    .line 514
    iget v14, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    invoke-virtual {p0, v13, v14}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addView(Landroid/view/View;I)V

    .line 515
    iget v14, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    sub-int v11, v0, v11

    .line 516
    invoke-virtual {p0, v13, v11, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 517
    iget-object v11, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillViewSet:[Landroid/view/View;

    aput-object v13, v11, v9

    add-int/lit8 v9, v9, 0x1

    .line 520
    invoke-virtual {p0, v13}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_0

    move v10, v11

    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 528
    iget-object v11, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v11, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionItemCount(I)I

    move-result v11

    if-lt v2, v11, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v4, v3

    .line 533
    iget-object v3, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    invoke-virtual {v3, v1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;->getSpanSize(II)I

    move-result v3

    goto :goto_0

    .line 537
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingLeft()I

    move-result v0

    move v2, v0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_3

    .line 539
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillViewSet:[Landroid/view/View;

    aget-object v1, v0, v8

    .line 540
    invoke-virtual {p0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    .line 541
    invoke-virtual {p0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    add-int v11, v2, v3

    add-int v5, p4, v0

    move-object v0, p0

    move/from16 v3, p4

    move v4, v11

    .line 542
    invoke-virtual/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    add-int/lit8 v8, v8, 0x1

    move v2, v11

    goto :goto_2

    .line 546
    :cond_3
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillViewSet:[Landroid/view/View;

    add-int/lit8 v2, v9, -0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1502(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;Landroid/view/View;)Landroid/view/View;

    .line 547
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    invoke-static {v0, v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1002(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;I)I

    .line 548
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    invoke-static {v0, v9}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1102(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;I)I

    .line 549
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    invoke-static {v0, v10}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$902(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;I)I

    .line 551
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    return-object v0
.end method

.method private fillTopRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;
    .locals 14

    move-object v6, p0

    move/from16 v0, p3

    .line 555
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 556
    iget-object v2, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v2, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result v2

    .line 558
    iget-object v3, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v3, v2, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemSectionOffset(II)I

    move-result v3

    .line 559
    iget-object v4, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v2, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;->getSpanSize(II)I

    move-result v4

    .line 560
    iget-object v5, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    iget v7, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v2, v3, v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;->getSpanIndex(III)I

    move-result v5

    .line 564
    iget-object v7, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillViewSet:[Landroid/view/View;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ltz v5, :cond_2

    .line 567
    invoke-direct {p0, v1, v5, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getSpanWidth(III)I

    move-result v10

    move-object v11, p1

    .line 568
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v12

    .line 569
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;

    .line 570
    invoke-static {v13, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->access$1302(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;I)I

    .line 571
    invoke-static {v13, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->access$1402(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;I)I

    .line 573
    invoke-virtual {p0, v12, v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addView(Landroid/view/View;I)V

    .line 574
    iget v4, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    sub-int v4, v1, v10

    .line 575
    invoke-virtual {p0, v12, v4, v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 576
    iget-object v4, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillViewSet:[Landroid/view/View;

    aput-object v12, v4, v8

    add-int/lit8 v8, v8, 0x1

    .line 579
    invoke-virtual {p0, v12}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v4

    if-ge v9, v4, :cond_0

    move v9, v4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    goto :goto_1

    .line 591
    :cond_1
    iget-object v4, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v2, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;->getSpanSize(II)I

    move-result v4

    sub-int/2addr v5, v4

    goto :goto_0

    :cond_2
    :goto_1
    move v7, v0

    .line 596
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v10, v8, -0x1

    move v2, v0

    move v11, v10

    :goto_2
    if-ltz v11, :cond_3

    .line 598
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillViewSet:[Landroid/view/View;

    aget-object v1, v0, v11

    .line 599
    invoke-virtual {p0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    .line 600
    invoke-virtual {p0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    sub-int v4, p4, v9

    add-int v12, v2, v3

    sub-int v0, v9, v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, v4

    move v4, v12

    .line 601
    invoke-virtual/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    add-int/lit8 v11, v11, -0x1

    move v2, v12

    goto :goto_2

    .line 605
    :cond_3
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillViewSet:[Landroid/view/View;

    aget-object v1, v1, v10

    invoke-static {v0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1502(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;Landroid/view/View;)Landroid/view/View;

    .line 606
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1002(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;I)I

    .line 607
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    invoke-static {v0, v8}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1102(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;I)I

    .line 608
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    invoke-static {v0, v9}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$902(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;I)I

    .line 610
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFillResult:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    return-object v0
.end method

.method private findFirstRowItem(I)I
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemSectionOffset(II)I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    .line 470
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;->getSpanIndex(III)I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private getAdapterPositionChecked(II)I
    .locals 1

    if-ltz p1, :cond_3

    .line 326
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_2

    .line 329
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionItemCount(I)I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionItemPosition(II)I

    move-result p1

    return p1

    .line 330
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {p2, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionHeaderPosition(I)I

    move-result p1

    return p1

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private getAdapterPositionFromAnchor(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I
    .locals 3

    .line 314
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v0

    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v0

    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionItemCount(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v1

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionItemPosition(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 319
    invoke-static {p1, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$602(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;I)I

    .line 320
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionHeaderPosition(I)I

    move-result p1

    return p1

    .line 315
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->reset()V

    const/4 p1, -0x1

    return p1
.end method

.method private getBottomRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    return-object v0
.end method

.method private getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 268
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getHeight()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getFirstVisiblePosition(IZ)I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 848
    iget v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    if-gtz v2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 851
    iget v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 855
    :cond_2
    iget v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    :goto_0
    if-ne p1, v1, :cond_3

    .line 856
    iget p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result p1

    .line 857
    :goto_1
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingTop()I

    move-result v1

    :goto_2
    if-ge v2, p1, :cond_6

    .line 859
    invoke-virtual {p0, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 860
    invoke-virtual {p0, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 861
    invoke-direct {p0, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPositionSectionHeaderHeight(I)I

    move-result v5

    .line 862
    invoke-virtual {p0, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v6

    .line 863
    invoke-virtual {p0, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v3

    if-eqz p2, :cond_4

    add-int/2addr v5, v1

    if-lt v6, v5, :cond_5

    return v4

    :cond_4
    add-int/2addr v5, v1

    if-lt v3, v5, :cond_5

    return v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return v0
.end method

.method private getFirstVisibleRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;
    .locals 4

    .line 904
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingTop()I

    move-result v0

    .line 905
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    .line 906
    invoke-static {v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v3

    if-le v3, v0, :cond_0

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFirstVisibleSectionHeader()I
    .locals 7

    .line 914
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingTop()I

    move-result v0

    .line 917
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v1, :cond_2

    .line 918
    iget-object v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    .line 919
    invoke-static {v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1700(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    .line 922
    :cond_0
    invoke-static {v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v5

    if-le v5, v0, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getHeaderRow(I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;
    .locals 4

    .line 940
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 941
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    .line 942
    invoke-static {v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1700(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLastVisiblePosition(I)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 881
    iget v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    if-gtz v2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 884
    iget v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 888
    iget v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result v2

    :goto_0
    sub-int/2addr v2, v1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 889
    :cond_3
    iget p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    .line 890
    :goto_1
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    :goto_2
    if-lt v2, p1, :cond_5

    .line 892
    invoke-virtual {p0, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 893
    invoke-virtual {p0, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_4

    .line 896
    invoke-virtual {p0, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method private getNextVisibleSectionHeader(I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;
    .locals 3

    add-int/lit8 p1, p1, 0x1

    .line 930
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 931
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    .line 932
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1700(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPositionSectionHeaderHeight(I)I
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 444
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v2, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->isSectionHeaderSticky(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v2, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemSectionOffset(II)I

    move-result p1

    if-ltz p1, :cond_2

    .line 447
    iget-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {p1, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionHeaderPosition(I)I

    move-result p1

    .line 448
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderPosition:I

    if-ne p1, v2, :cond_0

    .line 449
    invoke-virtual {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderOverlapMargin:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 452
    :cond_0
    invoke-direct {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getHeaderRow(I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 454
    invoke-virtual {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->getHeight()I

    move-result p1

    return p1

    .line 458
    :cond_1
    iget p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAverageHeaderHeight:I

    return p1

    :cond_2
    return v1
.end method

.method private getSpanLeft(II)I
    .locals 2

    .line 487
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanCount:I

    div-int v1, p1, v0

    mul-int v0, v0, v1

    sub-int/2addr p1, v0

    .line 489
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int v1, v1, p2

    add-int/2addr v1, p1

    return v1
.end method

.method private getSpanWidth(III)I
    .locals 2

    .line 479
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanCount:I

    div-int v1, p1, v0

    mul-int v0, v0, v1

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    sub-int/2addr p1, p2

    .line 481
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int v1, v1, p3

    add-int/2addr v1, p1

    return v1
.end method

.method private getTopRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    return-object v0
.end method

.method private getViewType(I)I
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemViewType(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private getViewType(Landroid/view/View;)I
    .locals 0

    .line 1076
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private offsetRowsVertical(I)V
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    .line 673
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1602(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;I)I

    .line 674
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1202(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;I)I

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->offsetChildrenVertical(I)V

    return-void
.end method

.method private onHeaderChanged(ILandroid/view/View;Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;I)V
    .locals 2

    .line 961
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderSection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 962
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->onHeaderUnstick()V

    .line 965
    :cond_0
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderSection:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeadeState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    invoke-virtual {v0, p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->PUSHED:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    invoke-virtual {p3, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 967
    :goto_1
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderSection:I

    .line 968
    iput-object p2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderView:Landroid/view/View;

    .line 969
    iput-object p3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeadeState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    if-eqz v0, :cond_3

    .line 971
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderStateListener:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;

    if-eqz v0, :cond_3

    .line 972
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;->onHeaderStateChanged(ILandroid/view/View;Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;I)V

    :cond_3
    return-void
.end method

.method private onHeaderUnstick()V
    .locals 6

    .line 977
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderSection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 978
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderStateListener:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;

    if-eqz v2, :cond_0

    .line 979
    iget-object v3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderView:Landroid/view/View;

    sget-object v4, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->NORMAL:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    const/4 v5, 0x0

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;->onHeaderStateChanged(ILandroid/view/View;Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;I)V

    .line 981
    :cond_0
    iput v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderSection:I

    const/4 v0, 0x0

    .line 982
    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeaderView:Landroid/view/View;

    .line 983
    sget-object v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->NORMAL:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickyHeadeState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    :cond_1
    return-void
.end method

.method private removeFloatingHeader(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 955
    iput-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    const/4 v1, -0x1

    .line 956
    iput v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderPosition:I

    .line 957
    invoke-virtual {p0, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method private stickTopHeader(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 9

    .line 988
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getFirstVisibleSectionHeader()I

    move-result v0

    .line 989
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingTop()I

    move-result v1

    .line 990
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingLeft()I

    move-result v4

    .line 991
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int v6, v2, v3

    .line 995
    sget-object v2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->NORMAL:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    .line 1000
    invoke-direct {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeFloatingHeader(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1002
    iget-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    .line 1003
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result v2

    .line 1004
    iget-object v4, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v4, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->isSectionHeaderSticky(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1005
    invoke-direct {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getNextVisibleSectionHeader(I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->getHeight()I

    move-result v3

    .line 1009
    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    sub-int v0, v1, v0

    neg-int v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1012
    :cond_0
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickOffset:I

    .line 1013
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1900(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickOffset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1015
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1900(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Landroid/view/View;

    move-result-object p1

    if-nez v3, :cond_1

    sget-object v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->STICKY:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->PUSHED:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    :goto_0
    invoke-direct {p0, v2, p1, v0, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->onHeaderChanged(ILandroid/view/View;Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;I)V

    goto/16 :goto_3

    .line 1018
    :cond_2
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->onHeaderUnstick()V

    .line 1019
    iput v3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickOffset:I

    goto/16 :goto_3

    .line 1024
    :cond_3
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getFirstVisibleRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1026
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result v0

    .line 1027
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v2, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->isSectionHeaderSticky(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1028
    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v2, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionHeaderPosition(I)I

    move-result v2

    .line 1029
    iget-object v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderPosition:I

    if-eq v5, v2, :cond_5

    .line 1030
    :cond_4
    invoke-direct {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeFloatingHeader(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1033
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 1034
    iget v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    invoke-virtual {p0, p1, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addView(Landroid/view/View;I)V

    .line 1035
    invoke-virtual {p0, p1, v3, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1036
    iput-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    .line 1037
    iput v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderPosition:I

    .line 1041
    :cond_5
    iget-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    .line 1043
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result v2

    iget v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    sub-int/2addr v2, v5

    const/4 v7, 0x1

    if-le v2, v7, :cond_6

    add-int/2addr v5, v7

    .line 1044
    invoke-virtual {p0, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1045
    iget v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderOverlapMargin:I

    sub-int v5, p1, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1046
    invoke-virtual {p0, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    neg-int v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    move v8, v3

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    .line 1049
    :goto_1
    iget-object v3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    sub-int v5, v1, v8

    add-int/2addr v1, p1

    sub-int v7, v1, v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1050
    iget-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mFloatingHeaderView:Landroid/view/View;

    if-nez v8, :cond_7

    sget-object v1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->STICKY:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->PUSHED:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    :goto_2
    invoke-direct {p0, v0, p1, v1, v8}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->onHeaderChanged(ILandroid/view/View;Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;I)V

    goto :goto_3

    .line 1053
    :cond_8
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->onHeaderUnstick()V

    goto :goto_3

    .line 1057
    :cond_9
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->onHeaderUnstick()V

    :goto_3
    return-void
.end method

.method private updateTopPosition()V
    .locals 5

    .line 1063
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    invoke-virtual {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->reset()V

    .line 1067
    :cond_0
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getFirstVisibleRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1069
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$202(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;I)I

    .line 1070
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    iget-object v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v3

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemSectionOffset(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$402(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;I)I

    .line 1071
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$602(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;I)I

    :cond_1
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 235
    instance-of p1, p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getFirstVisibleRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 310
    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1103
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1107
    :cond_0
    invoke-virtual {p0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1108
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 1113
    :cond_1
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .line 1118
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1122
    :cond_0
    invoke-virtual {p0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1123
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 1128
    :cond_1
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingTop()I

    move-result v2

    .line 1129
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getTopRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object v3

    .line 1130
    invoke-static {v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1135
    :cond_2
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1136
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 1137
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 1142
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    invoke-virtual {p0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1147
    iget v2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeadersStartPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1152
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 185
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 190
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 195
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getFirstVisibleHeaderPosition(Z)I
    .locals 1

    const/4 v0, 0x0

    .line 835
    invoke-direct {p0, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getFirstVisiblePosition(IZ)I

    move-result p1

    return p1
.end method

.method public getFirstVisibleItemPosition(Z)I
    .locals 1

    const/4 v0, 0x1

    .line 816
    invoke-direct {p0, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getFirstVisiblePosition(IZ)I

    move-result p1

    return p1
.end method

.method public getHeaderStateChangeListener()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderStateListener:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;

    return-object v0
.end method

.method public getLastVisibleHeaderPosition()I
    .locals 1

    const/4 v0, 0x0

    .line 844
    invoke-direct {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getLastVisiblePosition(I)I

    move-result v0

    return v0
.end method

.method public getLastVisibleItemPosition()I
    .locals 1

    const/4 v0, 0x1

    .line 825
    invoke-direct {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getLastVisiblePosition(I)I

    move-result v0

    return v0
.end method

.method public getSpanSizeLookup()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 158
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    :try_start_0
    check-cast p2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    iput-object p2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeAllViews()V

    .line 168
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->clearState()V

    return-void

    .line 164
    :catch_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Adapter used with StickyHeaderGridLayoutManager must be kind of StickyHeaderGridAdapter"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 176
    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    iput-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 179
    :catch_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Adapter used with StickyHeaderGridLayoutManager must be kind of StickyHeaderGridAdapter"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 337
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    if-eqz v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 345
    :cond_0
    iget v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v0, :cond_1

    .line 347
    iget v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->access$100(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;)I

    move-result v0

    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;)I

    move-result v1

    invoke-direct {v6, v0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getAdapterPositionChecked(II)I

    move-result v0

    .line 351
    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->access$500(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;)I

    move-result v1

    const/4 v2, 0x0

    .line 352
    iput-object v2, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    invoke-direct {v6, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getAdapterPositionFromAnchor(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v0

    .line 356
    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v1

    :goto_0
    const/4 v9, -0x1

    const/4 v10, 0x0

    if-ltz v0, :cond_3

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 362
    :cond_3
    iput v9, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingScrollPosition:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_4
    if-lez v1, :cond_5

    const/4 v1, 0x0

    .line 369
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->clearState()V

    .line 373
    invoke-direct {v6, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->findFirstRowItem(I)I

    move-result v11

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingLeft()I

    move-result v12

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int v13, v0, v2

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int v14, v0, v2

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    move v15, v0

    move v5, v11

    .line 383
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lt v5, v0, :cond_6

    goto/16 :goto_4

    .line 388
    :cond_6
    iget-object v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAdapter:Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;

    invoke-virtual {v0, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemViewInternalType(I)I

    move-result v0

    if-nez v0, :cond_8

    .line 390
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 391
    invoke-virtual {v6, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addView(Landroid/view/View;)V

    .line 392
    invoke-virtual {v6, v4, v10, v10}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 394
    invoke-virtual {v6, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    .line 395
    iget v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderOverlapMargin:I

    if-lt v3, v0, :cond_7

    move/from16 v16, v0

    goto :goto_2

    :cond_7
    move/from16 v16, v3

    :goto_2
    add-int v17, v15, v3

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v12

    move/from16 v18, v3

    move v3, v15

    move-object/from16 v19, v4

    move v4, v13

    move/from16 v21, v5

    move/from16 v5, v17

    .line 397
    invoke-virtual/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    sub-int v0, v17, v16

    sub-int v3, v18, v16

    .line 401
    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    new-instance v2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    const/16 v18, 0x1

    move v4, v15

    move-object v15, v2

    move-object/from16 v16, v19

    move/from16 v17, v21

    move/from16 v19, v4

    move/from16 v20, v0

    invoke-direct/range {v15 .. v20}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v21

    add-int/lit8 v5, v1, 0x1

    .line 403
    iput v3, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAverageHeaderHeight:I

    move v15, v0

    goto :goto_3

    :cond_8
    move v1, v5

    move v4, v15

    .line 406
    invoke-direct {v6, v7, v8, v1, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->fillBottomRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;

    move-result-object v0

    .line 407
    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$900(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v2

    add-int v15, v4, v2

    .line 408
    iget-object v2, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    new-instance v3, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1000(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v5

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1100(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v9

    invoke-direct {v3, v5, v9, v4, v15}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;-><init>(IIII)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;->access$1100(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$FillResult;)I

    move-result v0

    add-int v5, v1, v0

    .line 413
    :goto_3
    invoke-direct {v6, v8}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    add-int/2addr v0, v14

    if-lt v15, v0, :cond_b

    .line 418
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getBottomRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object v0

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    if-ge v0, v14, :cond_9

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getBottomRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object v0

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    sub-int/2addr v0, v14

    invoke-virtual {v6, v0, v7, v8}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    goto :goto_5

    .line 422
    :cond_9
    invoke-direct {v6, v7, v8, v10}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->clearViewsAndStickHeaders(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 426
    :goto_5
    iget v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v0, :cond_a

    const/4 v0, -0x1

    .line 427
    iput v0, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingScrollPosition:I

    .line 429
    invoke-direct {v6, v11}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPositionSectionHeaderHeight(I)I

    move-result v0

    if-eqz v0, :cond_a

    neg-int v0, v0

    .line 431
    invoke-virtual {v6, v0, v7, v8}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    :cond_a
    return-void

    :cond_b
    const/4 v9, -0x1

    goto/16 :goto_1

    .line 338
    :cond_c
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->clearState()V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 438
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 439
    iput-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 224
    instance-of v0, p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 225
    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    iput-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    .line 226
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_0
    const-string p1, "StickyLayoutManager"

    const-string v0, "invalid saved state class"

    .line 229
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;-><init>(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;)V

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->access$102(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;I)I

    .line 212
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->access$302(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;I)I

    .line 213
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mAnchor:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;

    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->access$600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->access$502(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;I)I

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->invalidateAnchor()V

    :goto_0
    return-object v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getItemCount()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 259
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingScrollPosition:I

    const/4 p1, 0x0

    .line 260
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 261
    iget-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mPendingSavedState:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->invalidateAnchor()V

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->requestLayout()V

    return-void

    .line 256
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "adapter position out of range"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 13

    move-object v6, p0

    move v7, p1

    .line 749
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingLeft()I

    .line 755
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getWidth()I

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingRight()I

    .line 756
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingTop()I

    move-result v9

    .line 757
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int v10, v0, v1

    .line 760
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getFirstVisibleSectionHeader()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 762
    iget-object v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mLayoutRows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    invoke-static {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1900(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Landroid/view/View;

    move-result-object v0

    iget v1, v6, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mStickOffset:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    const/4 v11, 0x1

    const/4 v0, 0x0

    if-ltz v7, :cond_4

    :goto_0
    if-ge v0, v7, :cond_3

    .line 768
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getBottomRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object v1

    .line 769
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v2

    sub-int/2addr v2, v10

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v7, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v2, v2

    .line 771
    invoke-direct {p0, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->offsetRowsVertical(I)V

    sub-int v12, v0, v2

    .line 774
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v2

    add-int v4, v0, v2

    if-ge v12, v7, :cond_6

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lt v4, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 779
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZII)V

    move v0, v12

    goto :goto_0

    :cond_3
    move v12, v0

    goto :goto_2

    :cond_4
    :goto_1
    if-le v0, v7, :cond_3

    .line 785
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->getTopRow()Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;

    move-result-object v1

    .line 786
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v0, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 788
    invoke-direct {p0, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->offsetRowsVertical(I)V

    sub-int v12, v0, v2

    .line 791
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    if-le v12, v7, :cond_6

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v4, v0, :cond_6

    if-gez v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    .line 796
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addRow(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZII)V

    move v0, v12

    goto :goto_1

    :cond_6
    :goto_2
    if-ne v12, v7, :cond_8

    if-ltz v7, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move v3, v9

    move v4, v10

    .line 802
    invoke-direct/range {v0 .. v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->addOffScreenRows(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZ)V

    :cond_8
    move-object v0, p2

    move-object/from16 v1, p3

    if-ltz v7, :cond_9

    const/4 v8, 0x1

    .line 805
    :cond_9
    invoke-direct {p0, p2, v1, v8}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->clearViewsAndStickHeaders(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    return v12
.end method

.method public setHeaderBottomOverlapMargin(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderOverlapMargin:I

    return-void
.end method

.method public setHeaderStateChangeListener(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mHeaderStateListener:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderStateChangeListener;

    return-void
.end method

.method public setSpanSizeLookup(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    if-nez p1, :cond_0

    .line 114
    new-instance p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->mSpanSizeLookup:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;

    :cond_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 278
    new-instance p2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$1;-><init>(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;Landroid/content/Context;)V

    .line 295
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 296
    invoke-virtual {p0, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
