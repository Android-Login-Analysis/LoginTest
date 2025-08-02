.class Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;
.super Ljava/lang/Object;
.source "StickyHeaderGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Section"
.end annotation


# instance fields
.field private itemNumber:I

.field private length:I

.field private position:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->position:I

    return p0
.end method

.method static synthetic access$202(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->position:I

    return p1
.end method

.method static synthetic access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->itemNumber:I

    return p0
.end method

.method static synthetic access$302(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->itemNumber:I

    return p1
.end method

.method static synthetic access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->length:I

    return p0
.end method

.method static synthetic access$402(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->length:I

    return p1
.end method
