.class final Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "StickyHeaderGridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;
    .locals 1

    .line 1308
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    invoke-direct {v0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1305
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;
    .locals 0

    .line 1313
    new-array p1, p1, [Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1305
    invoke-virtual {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState$1;->newArray(I)[Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method
