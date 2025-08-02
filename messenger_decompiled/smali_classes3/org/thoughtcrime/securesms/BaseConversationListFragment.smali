.class public abstract Lorg/thoughtcrime/securesms/BaseConversationListFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseConversationListFragment.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/BaseConversationListFragment$ConversationSelectedListener;
    }
.end annotation


# instance fields
.field protected actionMode:Landroidx/appcompat/view/ActionMode;

.field protected fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private areSomeSelectedChatsUnmuted()Z
    .locals 4

    .line 135
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object v1

    .line 137
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

    .line 138
    invoke-virtual {v0, v3}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/b44t/messenger/DcChat;->isMuted()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private areSomeSelectedChatsUnpinned()Z
    .locals 4

    .line 123
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object v1

    .line 125
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

    .line 126
    invoke-virtual {v0, v3}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/b44t/messenger/DcChat;->getVisibility()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleArchiveAllSelected()V
    .locals 12

    .line 201
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v9

    .line 202
    new-instance v8, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 203
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->offerToArchive()Z

    move-result v10

    if-eqz v10, :cond_0

    const v0, 0x7f100004

    goto :goto_0

    :cond_0
    const v0, 0x7f100006

    .line 210
    :goto_0
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v1

    .line 211
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v3, v11

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 213
    new-instance v0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v1, 0x7f120410

    .line 214
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;-><init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Set;Lcom/b44t/messenger/DcContext;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v11, [Ljava/lang/Void;

    .line 243
    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleDeleteAllSelected()V
    .locals 8

    .line 248
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 250
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/high16 v6, 0x7f100000

    .line 251
    invoke-virtual {v3, v6, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 255
    new-instance v1, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Lcom/b44t/messenger/DcContext;)V

    const v0, 0x7f1200e4

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private handleMarknoticedSelected()V
    .locals 4

    .line 188
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    .line 191
    invoke-virtual {v0, v3}, Lcom/b44t/messenger/DcContext;->marknoticedChat(I)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_1
    return-void
.end method

.method private handleMuteAllSelected()V
    .locals 6

    .line 161
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 163
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->areSomeSelectedChatsUnmuted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1, v0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Ljava/util/Set;Lcom/b44t/messenger/DcContext;)V

    invoke-static {v2, v3}, Lorg/thoughtcrime/securesms/MuteDialog;->show(Landroid/content/Context;Lorg/thoughtcrime/securesms/MuteDialog$MuteSelectionListener;)V

    goto :goto_1

    .line 176
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    const-wide/16 v4, 0x0

    .line 177
    invoke-virtual {v0, v3, v4, v5}, Lcom/b44t/messenger/DcContext;->setChatMuteDuration(IJ)Z

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_2
    :goto_1
    return-void
.end method

.method private handlePinAllSelected()V
    .locals 5

    .line 147
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 149
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->areSomeSelectedChatsUnpinned()Z

    move-result v2

    .line 150
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v4, v3

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 151
    :goto_1
    invoke-virtual {v0, v4, v3}, Lcom/b44t/messenger/DcContext;->setChatVisibility(II)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_2
    return-void
.end method

.method private handleSelectAllThreads()V
    .locals 2

    .line 298
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->selectAllThreads()V

    .line 299
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->updateActionModeItems(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic lambda$initializeFabClickListener$0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private updateActionModeItems(Landroid/view/Menu;)V
    .locals 2

    .line 305
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0901f1

    .line 306
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->offerToArchive()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0800e0

    .line 308
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v1, 0x7f120231

    .line 309
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v1, 0x7f080168

    .line 311
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v1, 0x7f120259

    .line 312
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    const v0, 0x7f090208

    .line 314
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 315
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->areSomeSelectedChatsUnpinned()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08014f

    .line 316
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v1, 0x7f1202fc

    .line 317
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    const v1, 0x7f08016b

    .line 319
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v1, 0x7f120413

    .line 320
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_1
    const v0, 0x7f090206

    .line 322
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 323
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->areSomeSelectedChatsUnmuted()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f120248

    .line 324
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    const v0, 0x7f12025b

    .line 326
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected abstract getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;
.end method

.method protected initializeFabClickListener(Z)V
    .locals 3

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/NewConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    new-instance v0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->acquireRelayMessageContent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 115
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    new-instance v1, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    new-instance v1, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$handleDeleteAllSelected$6$org-thoughtcrime-securesms-BaseConversationListFragment(Lcom/b44t/messenger/DcContext;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 256
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object p2

    .line 258
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 259
    new-instance p3, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;

    invoke-direct {p3, p0, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;-><init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Lcom/b44t/messenger/DcContext;Ljava/util/Set;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 289
    invoke-virtual {p3, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method synthetic lambda$handleMuteAllSelected$5$org-thoughtcrime-securesms-BaseConversationListFragment(Ljava/util/Set;Lcom/b44t/messenger/DcContext;J)V
    .locals 2

    .line 165
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 166
    invoke-virtual {p2, v1, p3, p4}, Lcom/b44t/messenger/DcContext;->setChatMuteDuration(IJ)Z

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_1
    return-void
.end method

.method synthetic lambda$initializeFabClickListener$1$org-thoughtcrime-securesms-BaseConversationListFragment(Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/Long;

    invoke-interface {p1, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->immediatelyRelay(Landroid/app/Activity;[Ljava/lang/Long;)V

    .line 106
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 108
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initializeFabClickListener$2$org-thoughtcrime-securesms-BaseConversationListFragment(Landroid/view/View;)V
    .locals 6

    .line 88
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedUris(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isForwarding(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x7f12005d

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x2

    if-nez v1, :cond_1

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const v5, 0x7f1203d4

    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x7f1203d5

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedText(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda5;-><init>()V

    const/high16 v2, 0x1040000

    .line 103
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Ljava/util/Set;)V

    const p1, 0x7f120254

    .line 104
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method

.method synthetic lambda$initializeFabClickListener$3$org-thoughtcrime-securesms-BaseConversationListFragment(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$initializeFabClickListener$4$org-thoughtcrime-securesms-BaseConversationListFragment(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract offerToArchive()Z
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 362
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 363
    :sswitch_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->handleSelectAllThreads()V

    return p2

    .line 365
    :sswitch_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->handlePinAllSelected()V

    return p2

    .line 367
    :sswitch_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->handleMuteAllSelected()V

    return p2

    .line 368
    :sswitch_3
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->handleMarknoticedSelected()V

    return p2

    .line 364
    :sswitch_4
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->handleDeleteAllSelected()V

    return p2

    .line 366
    :sswitch_5
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->handleArchiveAllSelected()V

    return p2

    :sswitch_data_0
    .sparse-switch
        0x7f0901f1 -> :sswitch_5
        0x7f090200 -> :sswitch_4
        0x7f090204 -> :sswitch_3
        0x7f090206 -> :sswitch_2
        0x7f090208 -> :sswitch_1
        0x7f090210 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 333
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 336
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    const v2, 0x7f080160

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    :cond_0
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->setFabVisibility(Z)V

    .line 339
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->initializeFabClickListener(Z)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0e000a

    .line 343
    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    const-string p2, "1"

    .line 346
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 348
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    .line 349
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06001c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_2
    return v1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 3

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 377
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->initializeBatchMode(Z)V

    .line 379
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x1010451

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 381
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    .line 382
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 385
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 387
    iget-object v1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    const v2, 0x7f0800dd

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_1
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->setFabVisibility(Z)V

    .line 390
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->initializeFabClickListener(Z)V

    return-void
.end method

.method protected onItemClick(J)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$ConversationSelectedListener;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$ConversationSelectedListener;->onCreateConversation(I)V

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->toggleThreadInBatchSet(J)V

    .line 59
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->updateActionModeItems(Landroid/view/Menu;)V

    .line 63
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->getBatchSelections()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public onItemLongClick(J)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->initializeBatchMode(Z)V

    .line 74
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->toggleThreadInBatchSet(J)V

    .line 75
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->notifyDataSetChanged()V

    .line 76
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->updateActionModeItems(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract setFabVisibility(Z)V
.end method
