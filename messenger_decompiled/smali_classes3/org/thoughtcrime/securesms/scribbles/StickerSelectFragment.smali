.class public Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;
.super Landroidx/fragment/app/Fragment;
.source "StickerSelectFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;,
        Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private assetDirectory:Ljava/lang/String;

.field private glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private listener:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->listener:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;
    .locals 3

    .line 48
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "assetDirectory"

    .line 51
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 72
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "assetDirectory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->assetDirectory:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 75
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance p1, Lorg/thoughtcrime/securesms/scribbles/StickerLoader;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->assetDirectory:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lorg/thoughtcrime/securesms/scribbles/StickerLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00f9

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09037c

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->onLoadFinished(Landroidx/loader/content/Loader;[Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "[",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-direct {v0, p0, v1, v2, p2}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;-><init>(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setListener(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->listener:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;

    return-void
.end method
