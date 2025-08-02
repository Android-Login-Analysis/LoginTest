.class public Lorg/thoughtcrime/securesms/ConversationListFragment;
.super Lorg/thoughtcrime/securesms/BaseConversationListFragment;
.source "ConversationListFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# static fields
.field public static final ARCHIVE:Ljava/lang/String; = "archive"

.field public static final RELOAD_LIST:Ljava/lang/String; = "reload_list"

.field private static final TAG:Ljava/lang/String; = "ConversationListFragment"


# instance fields
.field private archive:Z

.field private chatlistJustLoaded:Z

.field private emptySearch:Landroid/widget/TextView;

.field private emptyState:Landroid/view/View;

.field private inLoadChatlist:Z

.field private list:Landroidx/recyclerview/widget/RecyclerView;

.field private final loadChatlistLock:Ljava/lang/Object;

.field private locale:Ljava/util/Locale;

.field private needsAnotherLoad:Z

.field private final queryFilter:Ljava/lang/String;

.field private reloadTimer:Ljava/util/Timer;

.field private reloadTimerInstantly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;-><init>()V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->queryFilter:Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->loadChatlistLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/ConversationListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private loadChatlist()V
    .locals 4

    .line 266
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->archive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 274
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 277
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationListFragment;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring call to loadChatlist()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_2
    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/b44t/messenger/DcContext;->getChatlist(ILjava/lang/String;I)Lcom/b44t/messenger/DcChatlist;

    move-result-object v0

    .line 282
    new-instance v1, Lorg/thoughtcrime/securesms/ConversationListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/ConversationListFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ConversationListFragment;Lcom/b44t/messenger/DcChatlist;)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadChatlistAsync()V
    .locals 3

    .line 238
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->loadChatlistLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 239
    :try_start_0
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->needsAnotherLoad:Z

    .line 240
    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->inLoadChatlist:Z

    if-eqz v2, :cond_0

    .line 241
    sget-object v1, Lorg/thoughtcrime/securesms/ConversationListFragment;->TAG:Ljava/lang/String;

    const-string v2, "chatlist loading debounced"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v0

    return-void

    .line 244
    :cond_0
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->inLoadChatlist:Z

    .line 245
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ConversationListFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationListFragment;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 245
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateReminders()V
    .locals 5

    .line 189
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 190
    new-instance v1, Lorg/thoughtcrime/securesms/ConversationListFragment$2;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/ConversationListFragment$2;-><init>(Lorg/thoughtcrime/securesms/ConversationListFragment;Landroid/app/Activity;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 231
    invoke-virtual {v1, v2, v3}, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getListAdapter()Lorg/thoughtcrime/securesms/BaseConversationListAdapter;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;

    return-object v0
.end method

.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 2

    .line 331
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getAccountId()I

    move-result v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 333
    instance-of v0, p1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    if-eqz v0, :cond_3

    .line 334
    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->refreshUnreadIndicator()V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x834

    if-ne v0, v1, :cond_1

    .line 338
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 339
    instance-of v0, p1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    if-eqz v0, :cond_3

    .line 340
    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->refreshTitle()V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result p1

    const/16 v0, 0x83e

    if-ne p1, v0, :cond_2

    .line 344
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 345
    instance-of v0, p1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    if-eqz v0, :cond_3

    .line 346
    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->refreshAvatar()V

    goto :goto_0

    .line 350
    :cond_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->loadChatlistAsync()V

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$loadChatlist$1$org-thoughtcrime-securesms-ConversationListFragment(Lcom/b44t/messenger/DcChatlist;)V
    .locals 5

    .line 283
    invoke-virtual {p1}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-gtz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->emptyState:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->emptySearch:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->startPulse(J)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v0

    const/16 v4, 0x8

    if-gtz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->emptyState:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->emptySearch:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->emptySearch:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const v1, 0x7f1203b8

    invoke-virtual {p0, v1, v2}, Lorg/thoughtcrime/securesms/ConversationListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->emptyState:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->emptySearch:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->stopPulse()V

    .line 300
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationListAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter;->changeData(Lcom/b44t/messenger/DcChatlist;)V

    return-void
.end method

.method synthetic lambda$loadChatlistAsync$0$org-thoughtcrime-securesms-ConversationListFragment()V
    .locals 3

    .line 249
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->loadChatlistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->needsAnotherLoad:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 251
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->inLoadChatlist:Z

    .line 252
    monitor-exit v0

    return-void

    .line 254
    :cond_0
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->needsAnotherLoad:Z

    .line 255
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationListFragment;->TAG:Ljava/lang/String;

    const-string v1, "executing debounced chatlist loading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->loadChatlist()V

    const-wide/16 v0, 0x64

    .line 259
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/Util;->sleep(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 255
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected offerToArchive()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->archive:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 130
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 132
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListFragment;->setHasOptionsMenu(Z)V

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->initializeFabClickListener(Z)V

    .line 134
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationListAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2, v3, v4, p0}, Lorg/thoughtcrime/securesms/ConversationListAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->loadChatlistAsync()V

    .line 136
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->chatlistJustLoaded:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "locale_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->locale:Ljava/util/Locale;

    .line 81
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "archive"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->archive:Z

    .line 83
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 v0, 0x7d5

    .line 84
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addMultiAccountObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7d8

    .line 85
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addMultiAccountObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7e4

    .line 86
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7ee

    .line 87
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7d0

    .line 88
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7da

    .line 89
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7dc

    .line 90
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7df

    .line 91
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7d1

    .line 92
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x834

    .line 93
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x83e

    .line 94
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0047

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901ad

    .line 108
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f090141

    .line 109
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    const p2, 0x7f09011f

    .line 110
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->emptyState:Landroid/view/View;

    const p2, 0x7f09011e

    .line 111
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->emptySearch:Landroid/widget/TextView;

    .line 113
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->archive:Z

    if-eqz p2, :cond_0

    .line 114
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setVisibility(I)V

    const p2, 0x7f090120

    .line 115
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f120053

    .line 116
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setVisibility(I)V

    .line 121
    :goto_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 122
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 123
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lorg/thoughtcrime/securesms/components/recyclerview/DeleteItemAnimator;

    invoke-direct {p3}, Lorg/thoughtcrime/securesms/components/recyclerview/DeleteItemAnimator;-><init>()V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 99
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->onDestroy()V

    .line 100
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public onItemClick(Lorg/thoughtcrime/securesms/ConversationListItem;)V
    .locals 2

    .line 316
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListItem;->getChatId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationListFragment;->onItemClick(J)V

    return-void
.end method

.method public onItemLongClick(Lorg/thoughtcrime/securesms/ConversationListItem;)V
    .locals 2

    .line 321
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListItem;->getChatId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationListFragment;->onItemLongClick(J)V

    return-void
.end method

.method public onNewIntent()V
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->initializeFabClickListener(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 168
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->onPause()V

    .line 170
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationListFragment;->TAG:Ljava/lang/String;

    const-string v1, "\ud83e\udd20 pausing chatlist: cancel update timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->reloadTimerInstantly:Z

    .line 174
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->stopPulse()V

    return-void
.end method

.method public onResume()V
    .locals 8

    .line 141
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->onResume()V

    .line 143
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->updateReminders()V

    .line 145
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reload_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->chatlistJustLoaded:Z

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationListFragment;->TAG:Ljava/lang/String;

    const-string v1, "\ud83e\udd20 resuming chatlist: loading chatlist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->loadChatlist()V

    .line 149
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->reloadTimerInstantly:Z

    .line 151
    :cond_0
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->chatlistJustLoaded:Z

    .line 153
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationListFragment;->TAG:Ljava/lang/String;

    const-string v1, "\ud83e\udd20 resuming chatlist: starting update timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->reloadTimer:Ljava/util/Timer;

    .line 155
    new-instance v3, Lorg/thoughtcrime/securesms/ConversationListFragment$1;

    invoke-direct {v3, p0}, Lorg/thoughtcrime/securesms/ConversationListFragment$1;-><init>(Lorg/thoughtcrime/securesms/ConversationListFragment;)V

    .line 163
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->reloadTimerInstantly:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xea60

    :goto_0
    move-wide v4, v0

    const-wide/32 v6, 0xea60

    .line 155
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onSwitchToArchive()V
    .locals 1

    .line 326
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$ConversationSelectedListener;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$ConversationSelectedListener;->onSwitchToArchive()V

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

    .line 311
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->fab:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment;->archive:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->setVisibility(I)V

    return-void
.end method
