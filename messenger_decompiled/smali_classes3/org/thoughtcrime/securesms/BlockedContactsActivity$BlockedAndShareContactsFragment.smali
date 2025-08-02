.class public Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;
.super Landroidx/fragment/app/Fragment;
.source "BlockedContactsActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;
.implements Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/BlockedContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedAndShareContactsFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
        ">;",
        "Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;",
        "Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;"
    }
.end annotation


# instance fields
.field private emptyStateView:Landroid/widget/TextView;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    return-object v0
.end method

.method private initializeAdapter()V
    .locals 7

    .line 79
    new-instance v6, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 80
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;ZZ)V

    .line 84
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private restartLoader()V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private unblockContact(I)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, p1, v1}, Lcom/b44t/messenger/DcContext;->blockContact(II)V

    .line 135
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->restartLoader()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 1

    .line 110
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result p1

    const/16 v0, 0x7ee

    if-ne p1, v0, :cond_0

    .line 111
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->restartLoader()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onItemClick$0$org-thoughtcrime-securesms-BlockedContactsActivity$BlockedAndShareContactsFragment(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 129
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->getContactId()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->unblockContact(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->initializeAdapter()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance p1, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;-><init>(Landroid/content/Context;ILjava/lang/String;ZZZZ)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c002e

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902d5

    .line 59
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const p2, 0x1020004

    .line 61
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->emptyStateView:Landroid/widget/TextView;

    const p3, 0x7f12008b

    .line 62
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method public onItemClick(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;Z)V
    .locals 2

    .line 125
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120062

    .line 126
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;)V

    const p1, 0x7f12025a

    .line 129
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onItemLongClick(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->onLoadFinished(Landroidx/loader/content/Loader;Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
            ">;",
            "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->changeData(Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;)V

    .line 97
    iget-object p2, p0, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->emptyStateView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;->getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->changeData(Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;)V

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
