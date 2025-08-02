.class public Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "StickyHeaderGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field private mSpanIndex:I

.field private mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1166
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 1158
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1159
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1162
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 1158
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1159
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1174
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 1158
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1159
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1170
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    .line 1158
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1159
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    .line 1178
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const/4 p1, -0x1

    .line 1158
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1159
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method static synthetic access$1302(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;I)I
    .locals 0

    .line 1155
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanIndex:I

    return p1
.end method

.method static synthetic access$1402(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;I)I
    .locals 0

    .line 1155
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanSize:I

    return p1
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 1

    .line 1182
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    .line 1186
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
