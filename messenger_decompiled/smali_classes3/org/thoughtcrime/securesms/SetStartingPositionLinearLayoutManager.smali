.class Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SetStartingPositionLinearLayoutManager.java"


# instance fields
.field private pendingStartingPos:I


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->pendingStartingPos:I

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 24
    iget v0, p0, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->pendingStartingPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 27
    iget v0, p0, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->pendingStartingPos:I

    add-int/lit8 v0, v0, 0x1

    .line 28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 29
    iget v0, p0, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->pendingStartingPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->getHeight()I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 32
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->pendingStartingPos:I

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->scrollToPosition(I)V

    .line 34
    :goto_0
    iput v1, p0, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->pendingStartingPos:I

    .line 37
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->pendingStartingPos:I

    .line 43
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public setStartingPosition(I)V
    .locals 0

    .line 47
    iput p1, p0, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->pendingStartingPos:I

    return-void
.end method
