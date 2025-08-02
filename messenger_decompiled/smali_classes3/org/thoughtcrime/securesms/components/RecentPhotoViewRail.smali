.class public Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;
.super Landroid/widget/FrameLayout;
.source "RecentPhotoViewRail.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;,
        Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0c00f3

    .line 51
    invoke-static {p1, p2, p0}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f090297

    .line 53
    invoke-static {p0, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance p1, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->BASE_URL:Landroid/net/Uri;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->listener:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$1;)V

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public setListener(Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->listener:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;

    .line 61
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;->setListener(Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;)V

    :cond_0
    return-void
.end method
