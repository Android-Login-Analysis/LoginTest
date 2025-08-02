.class public Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AccountSelectionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;
    }
.end annotation


# instance fields
.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateDialog$0$org-thoughtcrime-securesms-accounts-AccountSelectionListFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 57
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lorg/thoughtcrime/securesms/ConnectivityActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 34
    new-instance p1, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;-><init>(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$1;)V

    invoke-direct {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;)V

    .line 37
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getAll()[I

    move-result-object v1

    .line 42
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    const/4 v3, -0x6

    const/4 v4, 0x0

    .line 43
    aput v3, v2, v4

    .line 45
    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v6, v1, v4

    add-int/lit8 v5, v5, 0x1

    .line 46
    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->changeData([II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 54
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1203ed

    .line 55
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;)V

    const v1, 0x7f1200c3

    .line 56
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120097

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c001c

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902d5

    .line 63
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
