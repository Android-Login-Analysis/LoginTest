.class public Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "StickyHeaderGridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnchorItem:I

.field private mAnchorOffset:I

.field private mAnchorSection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1305
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorSection:I

    .line 1275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorItem:I

    .line 1276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorOffset:I

    return-void
.end method

.method public constructor <init>(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;)V
    .locals 1

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    iget v0, p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorSection:I

    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorSection:I

    .line 1281
    iget v0, p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorItem:I

    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorItem:I

    .line 1282
    iget p1, p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorOffset:I

    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorOffset:I

    return-void
.end method

.method static synthetic access$100(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;)I
    .locals 0

    .line 1264
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorSection:I

    return p0
.end method

.method static synthetic access$102(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;I)I
    .locals 0

    .line 1264
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorSection:I

    return p1
.end method

.method static synthetic access$300(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;)I
    .locals 0

    .line 1264
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorItem:I

    return p0
.end method

.method static synthetic access$302(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;I)I
    .locals 0

    .line 1264
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorItem:I

    return p1
.end method

.method static synthetic access$500(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;)I
    .locals 0

    .line 1264
    iget p0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorOffset:I

    return p0
.end method

.method static synthetic access$502(Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;I)I
    .locals 0

    .line 1264
    iput p1, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorOffset:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method hasValidAnchor()Z
    .locals 1

    .line 1286
    iget v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorSection:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method invalidateAnchor()V
    .locals 1

    const/4 v0, -0x1

    .line 1290
    iput v0, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorSection:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1300
    iget p2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorSection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    iget p2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorItem:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    iget p2, p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
