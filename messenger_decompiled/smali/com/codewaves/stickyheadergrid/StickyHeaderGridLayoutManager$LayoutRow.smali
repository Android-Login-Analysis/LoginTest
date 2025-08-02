.class Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;
.super Ljava/lang/Object;
.source "StickyHeaderGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutRow"
.end annotation


# instance fields
.field private adapterPosition:I

.field private bottom:I

.field private header:Z

.field private headerView:Landroid/view/View;

.field private length:I

.field private top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1327
    iput-boolean v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->header:Z

    const/4 v0, 0x0

    .line 1328
    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->headerView:Landroid/view/View;

    .line 1329
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->adapterPosition:I

    .line 1330
    iput p2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->length:I

    .line 1331
    iput p3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->top:I

    .line 1332
    iput p4, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->bottom:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 1

    .line 1335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1336
    iput-boolean v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->header:Z

    .line 1337
    iput-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->headerView:Landroid/view/View;

    .line 1338
    iput p2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->adapterPosition:I

    .line 1339
    iput p3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->length:I

    .line 1340
    iput p4, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->top:I

    .line 1341
    iput p5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->bottom:I

    return-void
.end method

.method static synthetic access$1200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I
    .locals 0

    .line 1318
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->bottom:I

    return p0
.end method

.method static synthetic access$1202(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;I)I
    .locals 0

    .line 1318
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->bottom:I

    return p1
.end method

.method static synthetic access$1600(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I
    .locals 0

    .line 1318
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->top:I

    return p0
.end method

.method static synthetic access$1602(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;I)I
    .locals 0

    .line 1318
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->top:I

    return p1
.end method

.method static synthetic access$1700(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Z
    .locals 0

    .line 1318
    iget-boolean p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->header:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I
    .locals 0

    .line 1318
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->length:I

    return p0
.end method

.method static synthetic access$1900(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)Landroid/view/View;
    .locals 0

    .line 1318
    iget-object p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->headerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;)I
    .locals 0

    .line 1318
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->adapterPosition:I

    return p0
.end method


# virtual methods
.method getHeight()I
    .locals 2

    .line 1345
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->bottom:I

    iget v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$LayoutRow;->top:I

    sub-int/2addr v0, v1

    return v0
.end method
