.class public abstract Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StickyHeaderGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;,
        Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StickyHeaderGridAdapter"

.field public static final TYPE_HEADER:I = 0x0

.field public static final TYPE_ITEM:I = 0x1


# instance fields
.field private mSectionIndices:[I

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalItemNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->externalViewType(I)I

    move-result p0

    return p0
.end method

.method private calculateSections()V
    .locals 8

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 72
    new-instance v4, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;-><init>(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$1;)V

    .line 73
    invoke-static {v4, v3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$202(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;I)I

    .line 74
    invoke-virtual {p0, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionItemCount(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$302(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;I)I

    .line 75
    invoke-static {v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$402(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;I)I

    .line 76
    iget-object v5, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iput v3, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mTotalItemNumber:I

    .line 83
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSectionIndices:[I

    .line 84
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 85
    iget-object v4, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    const/4 v5, 0x0

    .line 86
    :goto_2
    invoke-static {v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 87
    iget-object v6, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSectionIndices:[I

    add-int v7, v3, v5

    aput v2, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 89
    :cond_1
    invoke-static {v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static externalViewType(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private getAdapterPosition(II)I
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    :cond_0
    const-string v0, "section "

    if-ltz p1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    .line 199
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    add-int/2addr p1, p2

    return p1

    .line 195
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 191
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getItemSectionHeaderPosition(I)I
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionHeaderPosition(I)I

    move-result p1

    return p1
.end method

.method private getItemViewInternalType(II)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private static internalViewType(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private notifySectionItemRangeRemoved(III)V
    .locals 4

    .line 590
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 592
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    const-string v0, ", size is "

    const-string v1, "Invalid index "

    if-ltz p2, :cond_2

    .line 597
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v2

    if-ge p2, v2, :cond_2

    add-int v2, p2, p3

    .line 600
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 605
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyItemRangeRemoved(II)V

    :goto_0
    return-void

    .line 601
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 598
    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public getAdapterPositionSection(I)I
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const-string v0, "position "

    if-ltz p1, :cond_3

    .line 252
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSectionIndices:[I

    aget p1, v0, p1

    return p1

    .line 253
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getItemCount()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 118
    :cond_0
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mTotalItemNumber:I

    return v0
.end method

.method public getItemSectionOffset(II)I
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    :cond_0
    const-string v0, "section "

    if-ltz p1, :cond_3

    .line 219
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, " >="

    if-ge p1, v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    .line 224
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 225
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v0

    if-ge p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "localPosition: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 216
    :cond_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected getItemViewInternalType(I)I
    .locals 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    .line 96
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v1

    sub-int/2addr p1, v1

    .line 98
    invoke-direct {p0, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemViewInternalType(II)I

    move-result p1

    return p1
.end method

.method public final getItemViewType(I)I
    .locals 3

    .line 162
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPositionSection(I)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    .line 164
    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v1

    sub-int/2addr p1, v1

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemViewInternalType(II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v2

    .line 173
    invoke-virtual {p0, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionItemViewType(II)I

    move-result p1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getSectionHeaderViewType(I)I

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 v0, v1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method public getSectionCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSectionHeaderPosition(I)I
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPosition(II)I

    move-result p1

    return p1
.end method

.method public getSectionHeaderViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSectionItemCount(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSectionItemPosition(II)I
    .locals 0

    add-int/lit8 p2, p2, 0x1

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getAdapterPosition(II)I

    move-result p1

    return p1
.end method

.method public getSectionItemViewType(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSectionHeaderSticky(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public notifyAllSectionsDataSetChanged()V
    .locals 0

    .line 472
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 473
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifySectionDataSetChanged(I)V
    .locals 1

    .line 477
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 478
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    .line 483
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v0

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyItemRangeChanged(II)V

    :goto_0
    return-void
.end method

.method public notifySectionHeaderChanged(I)V
    .locals 1

    .line 488
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 489
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    .line 494
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyItemRangeChanged(II)V

    :goto_0
    return-void
.end method

.method public notifySectionInserted(I)V
    .locals 1

    .line 515
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 516
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    .line 521
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v0

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method

.method public notifySectionItemChanged(II)V
    .locals 3

    .line 499
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 500
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    .line 506
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 510
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyItemChanged(I)V

    :goto_0
    return-void

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", size is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifySectionItemInserted(II)V
    .locals 3

    .line 526
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 527
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    if-ltz p2, :cond_1

    .line 533
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 537
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyItemInserted(I)V

    :goto_0
    return-void

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", size is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifySectionItemRangeInserted(III)V
    .locals 4

    .line 542
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 543
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    const-string v0, ", size is "

    const-string v1, "Invalid index "

    if-ltz p2, :cond_2

    .line 549
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v2

    if-ge p2, v2, :cond_2

    add-int v2, p2, p3

    .line 552
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 556
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void

    .line 553
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 550
    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public notifySectionItemRemoved(II)V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 575
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    if-ltz p2, :cond_1

    .line 580
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 584
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 585
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyItemRemoved(I)V

    :goto_0
    return-void

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", size is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifySectionRemoved(I)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 563
    invoke-virtual {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;

    .line 567
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 568
    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$200(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result v0

    invoke-static {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;->access$400(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$Section;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->notifyItemRangeRemoved(II)V

    :goto_0
    return-void
.end method

.method public abstract onBindHeaderViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;I)V
.end method

.method public abstract onBindItemViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;II)V
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->onBindViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;I)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->calculateSections()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->mSectionIndices:[I

    aget v0, v0, p2

    .line 143
    invoke-virtual {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->internalViewType(I)I

    move-result v1

    .line 144
    invoke-virtual {p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-static {v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->externalViewType(I)I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 151
    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;

    .line 152
    invoke-virtual {p0, v0, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->getItemSectionOffset(II)I

    move-result p2

    .line 153
    invoke-virtual {p0, p1, v0, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->onBindItemViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;II)V

    goto :goto_0

    .line 156
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid viewType: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_2
    check-cast p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->onBindHeaderViewHolder(Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;I)V

    :goto_0
    return-void
.end method

.method public abstract onCreateHeaderViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;
.end method

.method public abstract onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;
    .locals 3

    .line 123
    invoke-static {p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->internalViewType(I)I

    move-result v0

    .line 124
    invoke-static {p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->externalViewType(I)I

    move-result v1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 130
    invoke-virtual {p0, p1, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid viewType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;I)Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;

    move-result-object p1

    return-object p1
.end method
