.class public Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;
.super Lorg/thoughtcrime/securesms/MessageSelectorFragment;
.source "ProfileDocumentsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/MessageSelectorFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;",
        ">;",
        "Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;"
    }
.end annotation


# static fields
.field public static final CHAT_ID_EXTRA:Ljava/lang/String; = "chat_id"

.field public static final LOCALE_EXTRA:Ljava/lang/String; = "locale_extra"

.field public static final SHOW_AUDIO_EXTRA:Ljava/lang/String; = "show_audio"

.field public static final SHOW_WEBXDC_EXTRA:Ljava/lang/String; = "show_webxdc"


# instance fields
.field private final actionModeCallback:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;

.field protected chatId:I

.field private gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

.field protected locale:Ljava/util/Locale;

.field protected noMedia:Landroid/widget/TextView;

.field protected recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private showAudio:Z

.field private showWebxdc:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;-><init>()V

    .line 50
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionModeCallback:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->updateActionModeBar()V

    return-void
.end method

.method private getListAdapter()Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    return-object v0
.end method

.method private handleMediaMultiSelectClick(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->toggleSelection(Lcom/b44t/messenger/DcMsg;)V

    .line 162
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMediaCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->updateActionModeBar()V

    :goto_0
    return-void
.end method

.method private handleMediaPreviewClick(Lcom/b44t/messenger/DcMsg;)V
    .locals 3

    .line 172
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    .line 182
    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->openWebxdcActivity(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v0, p1, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openForViewOrShare(Landroid/content/Context;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateActionModeBar()V
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMediaCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->setCorrectMenuVisibility(Landroid/view/Menu;)V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;-><init>(I)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    .line 108
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 62
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->chatId:I

    .line 63
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "show_audio"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->showAudio:Z

    .line 64
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "show_webxdc"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->showWebxdc:Z

    .line 65
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "locale_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->locale:Ljava/util/Locale;

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 12
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

    .line 114
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->showAudio:Z

    if-eqz p1, :cond_0

    .line 115
    new-instance p1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->chatId:I

    const/16 v3, 0x28

    const/16 v4, 0x29

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;-><init>(Landroid/content/Context;IIII)V

    return-object p1

    .line 116
    :cond_0
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->showWebxdc:Z

    if-eqz p1, :cond_1

    .line 117
    new-instance p1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->chatId:I

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;-><init>(Landroid/content/Context;IIII)V

    return-object p1

    .line 119
    :cond_1
    new-instance p1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->chatId:I

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;-><init>(Landroid/content/Context;IIII)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c00e1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902d5

    .line 75
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f090252

    .line 76
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->noMedia:Landroid/widget/TextView;

    .line 77
    new-instance p2, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;-><init>(I)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    .line 79
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    .line 80
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$ItemClickListener;)V

    .line 79
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->gridManager:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 86
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p2

    const/16 p3, 0x7d0

    .line 87
    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 p3, 0x7d5

    .line 88
    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 95
    invoke-super {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onDestroyView()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->onLoadFinished(Landroidx/loader/content/Loader;Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;)V

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

    .line 125
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->setMedia(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;)V

    .line 126
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->notifyAllSectionsDataSetChanged()V

    .line 128
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->noMedia:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 129
    iget p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->chatId:I

    if-nez p1, :cond_1

    .line 130
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->noMedia:Landroid/widget/TextView;

    const p2, 0x7f1203f7

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 131
    :cond_1
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->showAudio:Z

    if-eqz p1, :cond_2

    .line 132
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->noMedia:Landroid/widget/TextView;

    const p2, 0x7f1203f8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 133
    :cond_2
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->showWebxdc:Z

    if-eqz p1, :cond_3

    .line 134
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->noMedia:Landroid/widget/TextView;

    const p2, 0x7f120403

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 141
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    new-instance v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->setMedia(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;)V

    return-void
.end method

.method public onMediaClicked(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->handleMediaMultiSelectClick(Lcom/b44t/messenger/DcMsg;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->handleMediaPreviewClick(Lcom/b44t/messenger/DcMsg;)V

    :goto_0
    return-void
.end method

.method public onMediaLongClicked(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->toggleSelection(Lcom/b44t/messenger/DcMsg;)V

    .line 193
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionModeCallback:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_0
    return-void
.end method

.method protected setCorrectMenuVisibility(Landroid/view/Menu;)V
    .locals 6

    .line 199
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return-void

    .line 206
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

    .line 207
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f090339

    .line 208
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f090330

    .line 209
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 212
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/b44t/messenger/DcMsg;

    .line 213
    invoke-virtual {v5}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    const v5, 0x7f09020a

    .line 218
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v1, :cond_4

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    const v0, 0x7f0901ee

    .line 221
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method
