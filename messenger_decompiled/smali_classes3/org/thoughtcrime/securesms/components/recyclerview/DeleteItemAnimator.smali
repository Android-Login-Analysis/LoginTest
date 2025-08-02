.class public Lorg/thoughtcrime/securesms/components/recyclerview/DeleteItemAnimator;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "DeleteItemAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/recyclerview/DeleteItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/recyclerview/DeleteItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/recyclerview/DeleteItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1
.end method
