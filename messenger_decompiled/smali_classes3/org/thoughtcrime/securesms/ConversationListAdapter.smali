.class Lorg/thoughtcrime/securesms/ConversationListAdapter;
.super Lorg/thoughtcrime/securesms/BaseConversationListAdapter;
.source "ConversationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;,
        Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/BaseConversationListAdapter<",
        "Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_TYPE_INBOX_ZERO:I = 0x3

.field private static final MESSAGE_TYPE_SWITCH_ARCHIVE:I = 0x1

.field private static final MESSAGE_TYPE_THREAD:I = 0x2


# instance fields
.field private final clickListener:Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;

.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private dcChatlist:Lcom/b44t/messenger/DcChatlist;

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->context:Ljava/lang/ref/WeakReference;

    .line 87
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 88
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 89
    new-instance p2, Lcom/b44t/messenger/DcChatlist;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/b44t/messenger/DcChatlist;-><init>(IJ)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    .line 90
    iput-object p3, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->locale:Ljava/util/Locale;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 92
    iput-object p4, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->clickListener:Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method changeData(Lcom/b44t/messenger/DcChatlist;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 176
    new-instance p1, Lcom/b44t/messenger/DcChatlist;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/b44t/messenger/DcChatlist;-><init>(IJ)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    goto :goto_0

    .line 178
    :cond_1
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    .line 179
    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 181
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcChatlist;->getChatId(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcChatlist;->getChatId(I)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method synthetic lambda$onCreateViewHolder$0$org-thoughtcrime-securesms-ConversationListAdapter(Landroid/view/View;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->clickListener:Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;->onSwitchToArchive()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreateViewHolder$1$org-thoughtcrime-securesms-ConversationListAdapter(Lorg/thoughtcrime/securesms/ConversationListItem;Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->clickListener:Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;->onItemClick(Lorg/thoughtcrime/securesms/ConversationListItem;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreateViewHolder$2$org-thoughtcrime-securesms-ConversationListAdapter(Lorg/thoughtcrime/securesms/ConversationListItem;Landroid/view/View;)Z
    .locals 0

    .line 120
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->clickListener:Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter$ItemClickListener;->onItemLongClick(Lorg/thoughtcrime/securesms/ConversationListItem;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 45
    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationListAdapter;->onBindViewHolder(Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;I)V
    .locals 11

    .line 130
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v2, p2}, Lcom/b44t/messenger/DcChatlist;->getChatId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v2, p2, v1}, Lcom/b44t/messenger/DcChatlist;->getSummary(ILcom/b44t/messenger/DcChat;)Lcom/b44t/messenger/DcLot;

    move-result-object v6

    .line 137
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;->getItem()Lorg/thoughtcrime/securesms/BindableConversationListItem;

    move-result-object v3

    invoke-static {v0, v6, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getThreadRecord(Landroid/content/Context;Lcom/b44t/messenger/DcLot;Lcom/b44t/messenger/DcChat;)Lorg/thoughtcrime/securesms/database/model/ThreadRecord;

    move-result-object v4

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {p1, p2}, Lcom/b44t/messenger/DcChatlist;->getMsgId(I)I

    move-result v5

    iget-object v7, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v8, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->locale:Ljava/util/Locale;

    iget-object v9, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->batchSet:Ljava/util/Set;

    iget-boolean v10, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->batchMode:Z

    invoke-interface/range {v3 .. v10}, Lorg/thoughtcrime/securesms/BindableConversationListItem;->bind(Lorg/thoughtcrime/securesms/database/model/ThreadRecord;ILcom/b44t/messenger/DcLot;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f0c0049

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 100
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListItem;

    .line 101
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/16 v0, 0x36

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p2, 0x7f090380

    .line 102
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0900d5

    .line 103
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationListAdapter;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 110
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListItemInboxZero;

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 112
    :cond_1
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListItem;

    .line 115
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ConversationListAdapter;Lorg/thoughtcrime/securesms/ConversationListItem;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ConversationListAdapter;Lorg/thoughtcrime/securesms/ConversationListItem;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationListItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 124
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public selectAllThreads()V
    .locals 6

    const/4 v0, 0x0

    .line 155
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->dcChatlist:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcChatlist;->getChatId(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x9

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 158
    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter;->batchSet:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListAdapter;->notifyDataSetChanged()V

    return-void
.end method
