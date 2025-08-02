.class Lorg/thoughtcrime/securesms/search/SearchListAdapter;
.super Lorg/thoughtcrime/securesms/BaseConversationListAdapter;
.source "SearchListAdapter.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;,
        Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;,
        Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/BaseConversationListAdapter<",
        "Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;",
        ">;",
        "Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter<",
        "Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_CHATS:I = 0x1

.field private static final TYPE_CONTACTS:I = 0x2

.field private static final TYPE_MESSAGES:I = 0x3


# instance fields
.field final context:Landroid/content/Context;

.field final dcContext:Lcom/b44t/messenger/DcContext;

.field private final eventListener:Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final locale:Ljava/util/Locale;

.field private searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Ljava/util/Locale;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;-><init>()V

    .line 41
    sget-object v0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->EMPTY:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    .line 52
    iput-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 53
    iput-object p3, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->eventListener:Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;

    .line 54
    iput-object p4, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->locale:Ljava/util/Locale;

    .line 55
    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->context:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    return-void
.end method

.method private getContactResult(I)Lcom/b44t/messenger/DcContact;
    .locals 3

    .line 169
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getFirstContactIndex()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getFirstMessageIndex()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getContacts()[I

    move-result-object v1

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getFirstContactIndex()I

    move-result v2

    sub-int/2addr p1, v2

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getConversationResult(I)Lcom/b44t/messenger/DcChatlist$Item;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getChats()Lcom/b44t/messenger/DcChatlist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getChats()Lcom/b44t/messenger/DcChatlist;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcChatlist;->getItem(I)Lcom/b44t/messenger/DcChatlist$Item;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFirstContactIndex()I
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getChats()Lcom/b44t/messenger/DcChatlist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v0

    return v0
.end method

.method private getFirstMessageIndex()I
    .locals 2

    .line 188
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getFirstContactIndex()I

    move-result v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getContacts()[I

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getMessageResult(I)Lcom/b44t/messenger/DcMsg;
    .locals 3

    .line 177
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getFirstMessageIndex()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getMessages()[I

    move-result-object v1

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getFirstMessageIndex()I

    move-result v2

    sub-int/2addr p1, v2

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 2

    .line 101
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getConversationResult(I)Lcom/b44t/messenger/DcChatlist$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getContactResult(I)Lcom/b44t/messenger/DcContact;

    move-result-object p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x2

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method public getItemCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->onBindHeaderViewHolder(Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindHeaderViewHolder(Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;I)V
    .locals 6

    .line 118
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getHeaderId(I)J

    move-result-wide v0

    long-to-int p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    const v3, 0x7f10000c

    if-eq p2, v2, :cond_1

    const/4 p2, 0x1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 134
    :cond_1
    iget-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getMessages()[I

    move-result-object p2

    array-length p2, p2

    const/16 v2, 0x3e8

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .line 130
    :cond_2
    iget-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getContacts()[I

    move-result-object p2

    array-length p2, p2

    const v3, 0x7f100009

    goto :goto_0

    .line 126
    :cond_3
    iget-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getChats()Lcom/b44t/messenger/DcChatlist;

    move-result-object p2

    invoke-virtual {p2}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result p2

    const v3, 0x7f100008

    goto :goto_0

    .line 139
    :goto_1
    iget-object v4, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {v4, v3, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_4

    const-string v0, "000"

    const-string v1, "000+"

    .line 141
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 143
    :cond_4
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;->bind(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->onBindViewHolder(Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 68
    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getConversationResult(I)Lcom/b44t/messenger/DcChatlist$Item;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v2, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->context:Landroid/content/Context;

    iget-object v4, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v5, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->eventListener:Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;

    iget-object v6, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->locale:Ljava/util/Locale;

    iget-object v7, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->batchSet:Ljava/util/Set;

    iget-boolean v8, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->batchMode:Z

    iget-object v1, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getQuery()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->bind(Landroid/content/Context;Lcom/b44t/messenger/DcChatlist$Item;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Ljava/util/Locale;Ljava/util/Set;ZLjava/lang/String;)V

    return-void

    .line 75
    :cond_0
    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getContactResult(I)Lcom/b44t/messenger/DcContact;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 78
    iget-object v12, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v13, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->eventListener:Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;

    iget-object v14, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->locale:Ljava/util/Locale;

    iget-object v1, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getQuery()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->bind(Lcom/b44t/messenger/DcContact;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Ljava/util/Locale;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_1
    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->getMessageResult(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 85
    iget-object v3, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v4, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->eventListener:Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;

    iget-object v5, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->locale:Ljava/util/Locale;

    iget-object v1, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getQuery()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->bind(Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Ljava/util/Locale;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;
    .locals 4

    .line 112
    new-instance v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c002d

    const/4 v3, 0x0

    .line 113
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;
    .locals 3

    .line 62
    new-instance p2, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0049

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 30
    check-cast p1, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->onViewRecycled(Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;)V
    .locals 0

    .line 91
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->recycle()V

    return-void
.end method

.method public selectAllThreads()V
    .locals 4

    const/4 v0, 0x0

    .line 153
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getChats()Lcom/b44t/messenger/DcChatlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->batchSet:Ljava/util/Set;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->getChats()Lcom/b44t/messenger/DcChatlist;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/b44t/messenger/DcChatlist;->getItem(I)Lcom/b44t/messenger/DcChatlist$Item;

    move-result-object v2

    iget v2, v2, Lcom/b44t/messenger/DcChatlist$Item;->chatId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method updateResults(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->searchResult:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    .line 148
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchListAdapter;->notifyDataSetChanged()V

    return-void
.end method
