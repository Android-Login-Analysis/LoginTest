.class public Lorg/thoughtcrime/securesms/ProfileGalleryFragment;
.super Lorg/thoughtcrime/securesms/MessageSelectorFragment;
.source "ProfileGalleryFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/MessageSelectorFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;",
        ">;",
        "Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;"
    }
.end annotation


# static fields
.field public static final CHAT_ID_EXTRA:Ljava/lang/String; = "chat_id"

.field public static final LOCALE_EXTRA:Ljava/lang/String; = "locale_extra"


# instance fields
.field private final actionModeCallback:Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;

.field private chatId:I

.field private gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

.field private locale:Ljava/util/Locale;

.field protected noMedia:Landroid/widget/TextView;

.field protected recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;-><init>()V

    .line 50
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;-><init>(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;Lorg/thoughtcrime/securesms/ProfileGalleryFragment$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionModeCallback:Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->chatId:I

    return p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->updateActionModeBar()V

    return-void
.end method

.method private getCols()I
    .locals 2

    .line 102
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method private getListAdapter()Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    return-object v0
.end method

.method private handleMediaMultiSelectClick(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->toggleSelection(Lcom/b44t/messenger/DcMsg;)V

    .line 154
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->getSelectedMediaCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->updateActionModeBar()V

    :goto_0
    return-void
.end method

.method private handleMediaPreviewClick(Lcom/b44t/messenger/DcMsg;)V
    .locals 4

    .line 163
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 172
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "dc_msg_id"

    .line 173
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->chatId:I

    invoke-static {v2}, Lorg/thoughtcrime/securesms/database/Address;->fromChat(I)Lorg/thoughtcrime/securesms/database/Address;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "outgoing"

    .line 175
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "left_is_recent"

    const/4 v2, 0x0

    .line 176
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "opened_from_profile"

    const/4 v2, 0x1

    .line 177
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateActionModeBar()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->getSelectedMediaCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->setCorrectMenuVisibility(Landroid/view/Menu;)V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    if-eqz p1, :cond_0

    .line 109
    new-instance p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getCols()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;-><init>(I)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 60
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->chatId:I

    .line 61
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "locale_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->locale:Ljava/util/Locale;

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance p1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->chatId:I

    const/16 v3, 0x14

    const/16 v4, 0x15

    const/16 v5, 0x32

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;-><init>(Landroid/content/Context;IIII)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p3, 0x7f0c00e2

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901db

    .line 71
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f090253

    .line 72
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->noMedia:Landroid/widget/TextView;

    .line 73
    new-instance p2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getCols()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;-><init>(I)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    .line 75
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    .line 77
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->locale:Ljava/util/Locale;

    move-object v0, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$ItemClickListener;)V

    .line 75
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 80
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 83
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p2

    const/16 p3, 0x7d0

    .line 84
    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 p3, 0x7d5

    .line 85
    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 93
    invoke-super {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onDestroyView()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->onLoadFinished(Landroidx/loader/content/Loader;Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;",
            ">;",
            "Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;",
            ")V"
        }
    .end annotation

    .line 121
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->setMedia(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;)V

    .line 122
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->notifyAllSectionsDataSetChanged()V

    .line 124
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->noMedia:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-lez p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->chatId:I

    if-nez p1, :cond_1

    .line 126
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->noMedia:Landroid/widget/TextView;

    const p2, 0x7f1203f7

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    new-instance v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->setMedia(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;)V

    return-void
.end method

.method public onMediaClicked(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->handleMediaMultiSelectClick(Lcom/b44t/messenger/DcMsg;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->handleMediaPreviewClick(Lcom/b44t/messenger/DcMsg;)V

    :goto_0
    return-void
.end method

.method public onMediaLongClicked(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->toggleSelection(Lcom/b44t/messenger/DcMsg;)V

    .line 185
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 187
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionModeCallback:Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_0
    return-void
.end method

.method protected setCorrectMenuVisibility(Landroid/view/Menu;)V
    .locals 5

    .line 193
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return-void

    .line 200
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const v4, 0x7f0900e7

    .line 201
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f090339

    .line 202
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f090330

    .line 203
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b44t/messenger/DcMsg;

    .line 207
    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    const v0, 0x7f09020a

    .line 212
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method
