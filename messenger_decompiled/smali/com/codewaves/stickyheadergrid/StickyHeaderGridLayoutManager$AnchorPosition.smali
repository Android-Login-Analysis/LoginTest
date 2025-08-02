.class Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;
.super Ljava/lang/Object;
.source "StickyHeaderGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnchorPosition"
.end annotation


# instance fields
.field private item:I

.field private offset:I

.field private section:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I
    .locals 0

    .line 1356
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->section:I

    return p0
.end method

.method static synthetic access$202(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;I)I
    .locals 0

    .line 1356
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->section:I

    return p1
.end method

.method static synthetic access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I
    .locals 0

    .line 1356
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->item:I

    return p0
.end method

.method static synthetic access$402(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;I)I
    .locals 0

    .line 1356
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->item:I

    return p1
.end method

.method static synthetic access$600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;)I
    .locals 0

    .line 1356
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->offset:I

    return p0
.end method

.method static synthetic access$602(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;I)I
    .locals 0

    .line 1356
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->offset:I

    return p1
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 1366
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->section:I

    const/4 v0, 0x0

    .line 1367
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->item:I

    .line 1368
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$AnchorPosition;->offset:I

    return-void
.end method
