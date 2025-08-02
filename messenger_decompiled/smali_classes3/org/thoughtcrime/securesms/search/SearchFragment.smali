.class public Lorg/thoughtcrime/securesms/search/SearchFragment;
.super Lorg/thoughtcrime/securesms/BaseConversationListFragment;
.source "SearchFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# static fields
.field public static final EXTRA_LOCALE:Ljava/lang/String; = "locale"

.field public static final TAG:Ljava/lang/String; = "SearchFragment"


# instance fields
.field private listAdapter:Lorg/thoughtcrime/securesms/search/SearchListAdapter;

.field private listDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

.field private listView:Landroidx/recyclerview/widget/RecyclerView;

.field private locale:Ljava/util/Locale;

.field private noResultsView:Landroid/widget/TextView;

.field private pendingQuery:Ljava/lang/String;

.field private viewModel:Lorg/thoughtcrime/securesms/search/SearchViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onContactClicked$1(Lcom/b44t/messenger/DcContext;Lcom/b44t/messenger/DcContact;Lorg/thoughtcrime/securesms/ConversationListActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 179
    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/b44t/messenger/DcContext;->createChatByContactId(I)I

    move-result p0

    .line 180
    invoke-virtual {p2, p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->onCreateConversation(I)V

    return-void
.end method

.method public static newInstance(Ljava/util/Locale;)Lorg/thoughtcrime/securesms/search/SearchFragment;
    .locals 2

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "locale"

    .line 62
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 64
    new-instance p0, Lorg/thoughtcrime/securesms/search/SearchFragment;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;-><init>()V

    .line 65
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listAdapter:Lorg/thoughtcrime/securesms/search/SearchListAdapter;

    return-object v0
.end method

.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->viewModel:Lorg/thoughtcrime/securesms/search/SearchViewModel;

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->updateQuery()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onStart$0$org-thoughtcrime-securesms-search-SearchFragment(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V
    .locals 3

    .line 0
    if-eqz p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/search/model/SearchResult;->EMPTY:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    .line 121
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listAdapter:Lorg/thoughtcrime/securesms/search/SearchListAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->updateResults(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V

    .line 122
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->invalidateLayouts()V

    .line 124
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->viewModel:Lorg/thoughtcrime/securesms/search/SearchViewModel;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->getLastQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->noResultsView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 128
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->noResultsView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->viewModel:Lorg/thoughtcrime/securesms/search/SearchViewModel;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->getLastQuery()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v0, 0x7f1203b8

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/search/SearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 132
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->noResultsView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected offerToArchive()Z
    .locals 4

    .line 221
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listAdapter:Lorg/thoughtcrime/securesms/search/SearchListAdapter;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object v1

    .line 223
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    .line 224
    invoke-virtual {v0, v3}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Lcom/b44t/messenger/DcChat;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 140
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onContactClicked(Lcom/b44t/messenger/DcContact;)V
    .locals 7

    .line 165
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationListActivity;

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    .line 172
    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getChatIdByContactId(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 174
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getNameNAddr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const v5, 0x7f120061

    invoke-virtual {p0, v5, v4}, Lorg/thoughtcrime/securesms/search/SearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 177
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p1, v0}, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lcom/b44t/messenger/DcContext;Lcom/b44t/messenger/DcContact;Lorg/thoughtcrime/securesms/ConversationListActivity;)V

    const p1, 0x104000a

    .line 178
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->onCreateConversation(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConversationClicked(Lcom/b44t/messenger/DcChatlist$Item;)V
    .locals 2

    .line 155
    iget p1, p1, Lcom/b44t/messenger/DcChatlist$Item;->chatId:I

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/search/SearchFragment;->onItemClick(J)V

    return-void
.end method

.method public onConversationLongClicked(Lcom/b44t/messenger/DcChatlist$Item;)V
    .locals 2

    .line 160
    iget p1, p1, Lcom/b44t/messenger/DcChatlist$Item;->chatId:I

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/search/SearchFragment;->onItemLongClick(J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->locale:Ljava/util/Locale;

    .line 76
    new-instance p1, Lorg/thoughtcrime/securesms/search/SearchViewModel$Factory;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/thoughtcrime/securesms/search/SearchViewModel$Factory;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lorg/thoughtcrime/securesms/search/SearchViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/search/SearchViewModel;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->viewModel:Lorg/thoughtcrime/securesms/search/SearchViewModel;

    .line 77
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 v0, 0x7e4

    .line 78
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7ee

    .line 79
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7d5

    .line 80
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7d0

    .line 81
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7d8

    .line 82
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7da

    .line 83
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7dc

    .line 84
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7df

    .line 85
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 87
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->pendingQuery:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->viewModel:Lorg/thoughtcrime/securesms/search/SearchViewModel;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->updateQuery(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->pendingQuery:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0073

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 150
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->onDestroy()V

    return-void
.end method

.method public onMessageClicked(Lcom/b44t/messenger/DcMsg;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationListActivity;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v2

    .line 199
    invoke-static {p1, v1}, Lcom/b44t/messenger/DcMsg;->getMessagePosition(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcContext;)I

    move-result p1

    .line 200
    invoke-virtual {v0, v2, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->openConversation(II)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 116
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->onStart()V

    .line 117
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->viewModel:Lorg/thoughtcrime/securesms/search/SearchViewModel;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->setForwardingMode(Z)V

    .line 118
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->viewModel:Lorg/thoughtcrime/securesms/search/SearchViewModel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->getSearchResult()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/search/SearchFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const p2, 0x7f090312

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->noResultsView:Landroid/widget/TextView;

    const p2, 0x7f090310

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f090141

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    .line 105
    new-instance p1, Lorg/thoughtcrime/securesms/search/SearchListAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->locale:Ljava/util/Locale;

    invoke-direct {p1, p2, v0, p0, v1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Ljava/util/Locale;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listAdapter:Lorg/thoughtcrime/securesms/search/SearchListAdapter;

    .line 106
    new-instance p1, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listAdapter:Lorg/thoughtcrime/securesms/search/SearchListAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;-><init>(Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;ZZ)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    .line 108
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listAdapter:Lorg/thoughtcrime/securesms/search/SearchListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 111
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method

.method protected setFabVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->viewModel:Lorg/thoughtcrime/securesms/search/SearchViewModel;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->updateQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment;->pendingQuery:Ljava/lang/String;

    :goto_0
    return-void
.end method
