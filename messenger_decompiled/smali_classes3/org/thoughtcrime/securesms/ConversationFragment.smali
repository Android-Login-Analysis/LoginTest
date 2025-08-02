.class public Lorg/thoughtcrime/securesms/ConversationFragment;
.super Lorg/thoughtcrime/securesms/MessageSelectorFragment;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;,
        Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;,
        Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentListener;,
        Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;
    }
.end annotation


# static fields
.field private static final CODE_ADD_EDIT_CONTACT:I = 0x4d

.field private static final KEY_LIMIT:Ljava/lang/String; = "limit"

.field private static final SCROLL_ANIMATION_THRESHOLD:I = 0x32

.field private static final TAG:Ljava/lang/String; = "ConversationFragment"


# instance fields
.field private final actionModeCallback:Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;

.field private addReactionView:Lorg/thoughtcrime/securesms/reactions/AddReactionView;

.field private chatId:J

.field private dateDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

.field private firstLoad:Z

.field private floatingLocationButton:Landroid/view/View;

.field public isPaused:Z

.field private lastSeenDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private list:Landroidx/recyclerview/widget/RecyclerView;

.field private listener:Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentListener;

.field private locale:Ljava/util/Locale;

.field private markseenDebouncer:Lorg/thoughtcrime/securesms/util/Debouncer;

.field private noMessageTextView:Landroid/widget/TextView;

.field private recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

.field private reloadTimer:Ljava/util/Timer;

.field private scrollToBottomButton:Landroid/view/View;

.field private final selectionClickListener:Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;

.field private startingPosition:I


# direct methods
.method public static synthetic $r8$lambda$ggR2eWDWfgO1RFijPi7pC6Oouxs(Lorg/thoughtcrime/securesms/ConversationFragment;Lcom/b44t/messenger/DcMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleReplyMessage(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;-><init>()V

    .line 93
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;Lorg/thoughtcrime/securesms/ConversationFragment$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionModeCallback:Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;

    .line 94
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;Lorg/thoughtcrime/securesms/ConversationFragment$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->selectionClickListener:Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;

    return-void
.end method

.method static synthetic access$1000(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionModeCallback:Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 85
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/thoughtcrime/securesms/ConversationFragment;)J
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/thoughtcrime/securesms/ConversationFragment;Ljava/util/Set;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleCopyMessage(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/thoughtcrime/securesms/ConversationFragment;Ljava/util/Set;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleForwardMessage(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/thoughtcrime/securesms/ConversationFragment;Lcom/b44t/messenger/DcMsg;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleReplyMessage(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/thoughtcrime/securesms/ConversationFragment;Lcom/b44t/messenger/DcMsg;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleReplyMessagePrivately(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/ConversationFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->reloadList()V

    return-void
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroid/view/View;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollToBottomButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/util/Debouncer;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->markseenDebouncer:Lorg/thoughtcrime/securesms/util/Debouncer;

    return-object p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/reactions/AddReactionView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->addReactionView:Lorg/thoughtcrime/securesms/reactions/AddReactionView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/ConversationFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->manageMessageSeenState()V

    return-void
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/thoughtcrime/securesms/ConversationFragment;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollMaybeSmoothToMsgId(I)V

    return-void
.end method

.method static canReplyToMsg(Lcom/b44t/messenger/DcMsg;)Z
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->isInfo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result p0

    const/16 v0, 0x46

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationAdapter;

    return-object v0
.end method

.method private handleCopyMessage(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;)V"
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 421
    new-instance p1, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 422
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 424
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    new-instance v4, Lcom/b44t/messenger/DcMsg;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/b44t/messenger/DcMsg;

    .line 428
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string v7, "\n\n"

    .line 429
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_1
    invoke-virtual {v5}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v7

    invoke-virtual {v4}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v4

    if-eq v7, v4, :cond_2

    if-nez p1, :cond_2

    .line 433
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v5}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v4

    .line 434
    invoke-virtual {v5, v4, v1}, Lcom/b44t/messenger/DcMsg;->getSenderName(Lcom/b44t/messenger/DcContact;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_2
    invoke-virtual {v5}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v4

    if-eq v4, v6, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v5}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const v4, 0x989680

    .line 439
    invoke-virtual {v5, v4}, Lcom/b44t/messenger/DcMsg;->getSummarytext(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 437
    :cond_4
    :goto_2
    invoke-virtual {v5}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move-object v4, v5

    goto :goto_1

    .line 445
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 446
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    return-void
.end method

.method private handleForwardMessage(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;)V"
        }
    .end annotation

    .line 452
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    invoke-static {p1}, Lcom/b44t/messenger/DcMsg;->msgSetToIds(Ljava/util/Set;)[I

    move-result-object p1

    .line 454
    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/util/RelayUtil;->setForwardingMessageIds(Landroid/content/Intent;[I)V

    .line 455
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;->start(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 456
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f010031

    const v1, 0x7f01001f

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private handleReplyMessage(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 461
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->collapseActionView()Z

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->listener:Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentListener;

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentListener;->handleReplyMessage(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method private handleReplyMessagePrivately(Lcom/b44t/messenger/DcMsg;)V
    .locals 4

    .line 471
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->createChatByContactId(I)I

    move-result v0

    .line 473
    new-instance v1, Lcom/b44t/messenger/DcMsg;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    .line 474
    invoke-virtual {v1, p1}, Lcom/b44t/messenger/DcMsg;->setQuote(Lcom/b44t/messenger/DcMsg;)V

    .line 475
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1, v0, v1}, Lcom/b44t/messenger/DcContext;->setDraft(ILcom/b44t/messenger/DcMsg;)V

    .line 477
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_id"

    .line 478
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 479
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 482
    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/ConversationFragment;->TAG:Ljava/lang/String;

    const-string v0, "Activity was null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initializeListAdapter()V
    .locals 12

    .line 287
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 288
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getChat()Lcom/b44t/messenger/DcChat;

    move-result-object v7

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v8

    iget-object v9, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->locale:Ljava/util/Locale;

    iget-object v10, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->selectionClickListener:Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;

    iget-object v11, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lorg/thoughtcrime/securesms/ConversationAdapter;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;Lorg/thoughtcrime/securesms/recipients/Recipient;)V

    .line 289
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 291
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dateDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    if-eqz v1, :cond_0

    .line 292
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 294
    :cond_0
    new-instance v1, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;-><init>(Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;ZZ)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dateDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    .line 295
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 297
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-wide v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/b44t/messenger/DcContext;->getFreshMsgCount(I)I

    move-result v0

    .line 298
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;

    .line 299
    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->startingPosition:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 300
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->setStartingPosition(I)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 302
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;->setStartingPosition(I)V

    .line 305
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->reloadList()V

    .line 306
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->updateLocationButton()V

    .line 308
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->lastSeenDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v1, :cond_3

    .line 309
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_3
    if-lez v0, :cond_4

    .line 312
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->setLastSeenPosition(I)V

    .line 313
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;-><init>(Lorg/thoughtcrime/securesms/ConversationAdapter;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->lastSeenDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 314
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_4
    return-void
.end method

.method private initializeResources()V
    .locals 5

    .line 277
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chat_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    .line 278
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v3, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    long-to-int v1, v3

    invoke-static {v1}, Lorg/thoughtcrime/securesms/database/Address;->fromChat(I)Lorg/thoughtcrime/securesms/database/Address;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->from(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/Address;)Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 279
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "starting_position"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->startingPosition:I

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->firstLoad:Z

    .line 282
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;Landroid/content/Context;)V

    .line 283
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic lambda$handleCopyMessage$5(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcMsg;)I
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getDateReceived()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getDateReceived()J

    move-result-wide p0

    cmp-long v2, v0, p0

    return v2
.end method

.method private manageMessageSeenState()V
    .locals 7

    .line 679
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 681
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 682
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 687
    new-array v2, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    .line 690
    iget-object v5, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lorg/thoughtcrime/securesms/ConversationAdapter;

    invoke-virtual {v5, v1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v5

    .line 691
    invoke-virtual {v5}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v6

    if-eq v6, v3, :cond_1

    .line 692
    invoke-virtual {v5}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, v2}, Lcom/b44t/messenger/DcContext;->markseenMsgs([I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private reloadList()V
    .locals 1

    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->reloadList(Z)V

    return-void
.end method

.method private reloadList(Z)V
    .locals 11

    .line 491
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 498
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->reloadChat()V

    .line 504
    :cond_1
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->firstLoad:Z

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 505
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getItemCount()I

    move-result p1

    .line 506
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 507
    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 508
    :cond_2
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v4, v3

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 511
    :goto_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_4

    .line 512
    sget-object p1, Lorg/thoughtcrime/securesms/ConversationFragment;->TAG:Ljava/lang/String;

    const-string v0, "reloadList: getContext() was null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 516
    :cond_4
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v3

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 519
    iget-wide v7, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    long-to-int v8, v7

    invoke-virtual {v3, v8, v1, v1}, Lcom/b44t/messenger/DcContext;->getChatMsgs(III)[I

    move-result-object v3

    .line 520
    sget-object v7, Lorg/thoughtcrime/securesms/ConversationFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u23f0 getChatMsgs("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v0, v3}, Lorg/thoughtcrime/securesms/ConversationAdapter;->changeData([I)V

    .line 524
    iget-boolean v5, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->firstLoad:Z

    if-eqz v5, :cond_6

    .line 525
    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->startingPosition:I

    if-ltz p1, :cond_5

    .line 526
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p1

    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->startingPosition:I

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->pulseHighlightItem(I)V

    .line 528
    :cond_5
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->firstLoad:Z

    goto :goto_4

    :cond_6
    if-lez v2, :cond_9

    .line 530
    array-length v5, v3

    add-int/2addr v2, v5

    sub-int/2addr v2, p1

    if-gez v2, :cond_7

    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x0

    goto :goto_3

    .line 533
    :cond_7
    array-length p1, v3

    if-lt v2, p1, :cond_8

    array-length p1, v3

    add-int/lit8 v2, p1, -0x1

    goto :goto_2

    .line 535
    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 538
    :cond_9
    :goto_4
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->isActive()Z

    move-result p1

    if-nez p1, :cond_a

    .line 539
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->setNoMessageText()V

    .line 540
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->noMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 543
    :cond_a
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->noMessageTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    :goto_5
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->isPaused:Z

    if-nez p1, :cond_b

    .line 547
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->markseenDebouncer:Lorg/thoughtcrime/securesms/util/Debouncer;

    new-instance v0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/util/Debouncer;->publish(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private scrollAndHighlight(IZ)V
    .locals 2

    .line 556
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;ZI)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scrollMaybeSmoothToMsgId(I)V
    .locals 6

    .line 577
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 579
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/ConversationAdapter;

    if-nez v1, :cond_0

    return-void

    .line 581
    :cond_0
    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->msgIdToPosition(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 583
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 584
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 585
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v3, 0xf

    if-ge v0, v3, :cond_1

    const/4 v2, 0x1

    .line 587
    :cond_1
    sget-object v3, Lorg/thoughtcrime/securesms/ConversationFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scrolling to destMsg, smoth: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", distance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 591
    invoke-direct {p0, v1, v2}, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollAndHighlight(IZ)V

    goto :goto_0

    .line 593
    :cond_3
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgId not found for scrolling: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setNoMessageText()V
    .locals 3

    .line 178
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getChat()Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->noMessageTextView:Landroid/widget/TextView;

    const v1, 0x7f1200a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isUnpromoted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->noMessageTextView:Landroid/widget/TextView;

    const v1, 0x7f1200aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->noMessageTextView:Landroid/widget/TextView;

    const v1, 0x7f1200ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isSelfTalk()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->noMessageTextView:Landroid/widget/TextView;

    const v1, 0x7f1203b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isDeviceTalk()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->noMessageTextView:Landroid/widget/TextView;

    const v1, 0x7f1200ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 196
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const v0, 0x7f1200ab

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->noMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateLocationButton()V
    .locals 4

    .line 552
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->floatingLocationButton:Landroid/view/View;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-wide v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Lcom/b44t/messenger/DcContext;->isSendingLocationsToChat(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public handleClearChat()V
    .locals 2

    .line 370
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    long-to-int v1, v0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getMessageIds()[I

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleDeleteMessages(I[I)V

    return-void
.end method

.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 4

    .line 976
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7da

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7df

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7e4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result p1

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 996
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->updateLocationButton()V

    const/4 p1, 0x1

    .line 997
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->reloadList(Z)V

    goto :goto_0

    .line 989
    :cond_1
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result p1

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 990
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->reloadList()V

    goto :goto_0

    .line 978
    :cond_2
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v0

    if-eqz v0, :cond_3

    .line 979
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result p1

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 980
    :cond_3
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->reloadList()V

    :cond_4
    :goto_0
    return-void
.end method

.method public hideAddReactionView()V
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->addReactionView:Lorg/thoughtcrime/securesms/reactions/AddReactionView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->hide()V

    return-void
.end method

.method synthetic lambda$moveToLastSeen$3$org-thoughtcrime-securesms-ConversationFragment(I)V
    .locals 2

    .line 268
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method synthetic lambda$onCreateView$0$org-thoughtcrime-securesms-ConversationFragment(Landroid/view/View;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollToBottom()V

    return-void
.end method

.method synthetic lambda$onCreateView$1$org-thoughtcrime-securesms-ConversationFragment(Lcom/b44t/messenger/DcMsg;)Z
    .locals 0

    .line 158
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$onResume$2$org-thoughtcrime-securesms-ConversationFragment()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->manageMessageSeenState()V

    return-void
.end method

.method synthetic lambda$querySetupCode$8$org-thoughtcrime-securesms-ConversationFragment(Lcom/b44t/messenger/DcMsg;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 766
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->querySetupCode(Lcom/b44t/messenger/DcMsg;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$querySetupCode$9$org-thoughtcrime-securesms-ConversationFragment([Landroid/widget/EditText;Lcom/b44t/messenger/DcMsg;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    const/16 p3, 0x9

    new-array p4, p3, [Ljava/lang/String;

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 753
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p4, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p3

    invoke-virtual {p1, p3, v0}, Lcom/b44t/messenger/DcContext;->continueKeyTransfer(ILjava/lang/String;)Z

    move-result p1

    .line 758
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 759
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120070

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 760
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_1

    const v1, 0x7f12006f

    goto :goto_1

    :cond_1
    const v1, 0x7f12006c

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const p1, 0x104000a

    .line 762
    invoke-virtual {p3, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2

    :cond_2
    const/high16 p1, 0x1040000

    .line 765
    invoke-virtual {p3, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 766
    new-instance p1, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p2, p4}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;Lcom/b44t/messenger/DcMsg;[Ljava/lang/String;)V

    const p2, 0x7f12006e

    invoke-virtual {p3, p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 768
    :goto_2
    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$reloadList$6$org-thoughtcrime-securesms-ConversationFragment()V
    .locals 0

    .line 547
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->manageMessageSeenState()V

    return-void
.end method

.method synthetic lambda$scrollAndHighlight$7$org-thoughtcrime-securesms-ConversationFragment(ZI)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    .line 557
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/AccessibilityUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 558
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 562
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->pulseHighlightItem(I)V

    return-void
.end method

.method synthetic lambda$scrollToTop$4$org-thoughtcrime-securesms-ConversationFragment(I)V
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public moveToLastSeen()V
    .locals 3

    .line 258
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getLastSeenPosition()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 266
    :cond_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getLastSeenPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_2

    .line 268
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 259
    :cond_3
    :goto_0
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationFragment;->TAG:Ljava/lang/String;

    const-string v1, "Tried to move to last seen position, but we hadn\'t initialized the view yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->initializeResources()V

    .line 174
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->initializeListAdapter()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 880
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x4d

    if-ne p1, p2, :cond_0

    .line 882
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onAttach(Landroid/app/Activity;)V

    .line 211
    check-cast p1, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentListener;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->listener:Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentListener;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 239
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dateDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 117
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "locale_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->locale:Ljava/util/Locale;

    .line 119
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 121
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 v0, 0x7d5

    .line 122
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7d0

    .line 123
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7d1

    .line 124
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7da

    .line 125
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7dc

    .line 126
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7df

    .line 127
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v0, 0x7e4

    .line 128
    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 130
    new-instance p1, Lorg/thoughtcrime/securesms/util/Debouncer;

    const-wide/16 v0, 0x320

    invoke-direct {p1, v0, v1}, Lorg/thoughtcrime/securesms/util/Debouncer;-><init>(J)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->markseenDebouncer:Lorg/thoughtcrime/securesms/util/Debouncer;

    .line 131
    new-instance v2, Ljava/util/Timer;

    const-string p1, "reloadTimer"

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->reloadTimer:Ljava/util/Timer;

    .line 132
    new-instance v3, Lorg/thoughtcrime/securesms/ConversationFragment$1;

    invoke-direct {v3, p0}, Lorg/thoughtcrime/securesms/ConversationFragment$1;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0xea60

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c0033

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000a

    .line 143
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f090306

    .line 144
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollToBottomButton:Landroid/view/View;

    const p2, 0x7f090155

    .line 145
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->floatingLocationButton:Landroid/view/View;

    const p2, 0x7f09004b

    .line 146
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/reactions/AddReactionView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->addReactionView:Lorg/thoughtcrime/securesms/reactions/AddReactionView;

    const p2, 0x7f090254

    .line 147
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->noMessageTextView:Landroid/widget/TextView;

    .line 149
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollToBottomButton:Landroid/view/View;

    new-instance p3, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda8;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance p2, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {p2, p3, v1, v1}, Lorg/thoughtcrime/securesms/SetStartingPositionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 153
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 154
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 155
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 157
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;

    new-instance v0, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda9;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    new-instance v2, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda10;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    invoke-direct {p2, v0, v2}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;-><init>(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$SwipeAvailabilityProvider;Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$OnSwipeListener;)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    .line 160
    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 164
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayerType(ILandroid/graphics/Paint;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 204
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 205
    invoke-super {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onDestroy()V

    return-void
.end method

.method public onNewIntent()V
    .locals 5

    .line 244
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 248
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->initializeResources()V

    .line 249
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->initializeListAdapter()V

    .line 251
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 252
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->reloadList()V

    .line 253
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->updateLocationButton()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 232
    invoke-super {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onPause()V

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->setLastSeen(J)V

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->isPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 216
    invoke-super {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->onResume()V

    .line 218
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-wide v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/b44t/messenger/DcContext;->marknoticedChat(I)V

    .line 219
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 223
    :cond_0
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->isPaused:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->isPaused:Z

    .line 225
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->markseenDebouncer:Lorg/thoughtcrime/securesms/util/Debouncer;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/Debouncer;->publish(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method querySetupCode(Lcom/b44t/messenger/DcMsg;[Ljava/lang/String;)V
    .locals 8

    .line 702
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isSetupMessage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0100

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x9

    new-array v3, v1, [Landroid/widget/EditText;

    const v4, 0x7f090327

    .line 708
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f090328

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const v4, 0x7f090329

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const v4, 0x7f09032a

    .line 709
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const v4, 0x7f09032b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v6, 0x4

    aput-object v4, v3, v6

    const v4, 0x7f09032c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v6, 0x5

    aput-object v4, v3, v6

    const v4, 0x7f09032d

    .line 710
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v6, 0x6

    aput-object v4, v3, v6

    const v4, 0x7f09032e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v6, 0x7

    aput-object v4, v3, v6

    const v4, 0x7f09032f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/16 v6, 0x8

    aput-object v4, v3, v6

    .line 712
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 713
    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    aget-object v0, v3, v5

    .line 714
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getSetupCodeBegin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aget-object v0, v3, v5

    .line 715
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    if-eqz p2, :cond_1

    .line 718
    array-length v6, p2

    if-ge v0, v6, :cond_1

    .line 719
    aget-object v6, v3, v0

    aget-object v7, p2, v0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 720
    aget-object v6, v3, v0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 722
    :cond_1
    aget-object v6, v3, v0

    new-instance v7, Lorg/thoughtcrime/securesms/ConversationFragment$2;

    invoke-direct {v7, p0, v3}, Lorg/thoughtcrime/securesms/ConversationFragment$2;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;[Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f120070

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 746
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f12006d

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    .line 747
    invoke-virtual {v4, p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 748
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 749
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v3, p1}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;[Landroid/widget/EditText;Lcom/b44t/messenger/DcMsg;)V

    const p1, 0x104000a

    invoke-virtual {v4, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 770
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public reload(Lorg/thoughtcrime/securesms/recipients/Recipient;J)V
    .locals 2

    .line 378
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 380
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    cmp-long p1, v0, p2

    if-eqz p1, :cond_0

    .line 381
    iput-wide p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->chatId:J

    .line 382
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->initializeListAdapter()V

    :cond_0
    return-void
.end method

.method public scrollToBottom()V
    .locals 3

    .line 397
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/16 v1, 0x32

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/AccessibilityUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public scrollToMsgId(I)V
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationAdapter;

    .line 568
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->msgIdToPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 570
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollAndHighlight(IZ)V

    goto :goto_0

    .line 572
    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/ConversationFragment;->TAG:Ljava/lang/String;

    const-string v0, "msgId {} not found for scrolling"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public scrollToTop()V
    .locals 3

    .line 387
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationAdapter;

    .line 388
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 389
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 390
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/thoughtcrime/securesms/ConversationFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected setCorrectMenuVisibility(Landroid/view/Menu;)V
    .locals 10

    .line 321
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 324
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return-void

    .line 328
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const v2, 0x7f0901ee

    const v3, 0x7f0901f9

    const v4, 0x7f0901f8

    const v5, 0x7f0901fb

    const v6, 0x7f0901f6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-le v1, v7, :cond_1

    .line 329
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 330
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 332
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 333
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 335
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b44t/messenger/DcMsg;

    .line 336
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getChat()Lcom/b44t/messenger/DcChat;

    move-result-object v9

    .line 337
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->hasFile()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 339
    invoke-static {v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->canReplyToMsg(Lcom/b44t/messenger/DcMsg;)Z

    move-result v5

    .line 340
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v9}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    invoke-virtual {v9}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 342
    :goto_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v1

    const/16 v3, 0x50

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 350
    :goto_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b44t/messenger/DcMsg;

    if-eqz v7, :cond_6

    .line 351
    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->hasFile()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v7, 0x0

    :cond_6
    if-eqz v1, :cond_7

    .line 354
    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v1, 0x0

    :cond_7
    if-nez v7, :cond_5

    if-nez v1, :cond_5

    :cond_8
    const v0, 0x7f0901fa

    .line 361
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09020a

    .line 362
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method setLastSeen(J)V
    .locals 4

    .line 406
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getListAdapter()Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->setLastSeen(J)V

    .line 409
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->lastSeenDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v1, :cond_0

    .line 410
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 413
    new-instance p1, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;

    invoke-direct {p1, v0}, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;-><init>(Lorg/thoughtcrime/securesms/ConversationAdapter;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->lastSeenDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 414
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    return-void
.end method
