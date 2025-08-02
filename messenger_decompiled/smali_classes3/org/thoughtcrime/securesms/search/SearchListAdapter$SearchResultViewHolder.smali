.class Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/search/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchResultViewHolder"
.end annotation


# instance fields
.field private final root:Lorg/thoughtcrime/securesms/ConversationListItem;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 204
    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListItem;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    return-void
.end method

.method static synthetic lambda$bind$0(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcChatlist$Item;Landroid/view/View;)V
    .locals 0

    .line 219
    invoke-interface {p0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;->onConversationClicked(Lcom/b44t/messenger/DcChatlist$Item;)V

    return-void
.end method

.method static synthetic lambda$bind$1(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcChatlist$Item;Landroid/view/View;)Z
    .locals 0

    .line 221
    invoke-interface {p0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;->onConversationLongClicked(Lcom/b44t/messenger/DcChatlist$Item;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$bind$2(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcContact;Landroid/view/View;)V
    .locals 0

    .line 233
    invoke-interface {p0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;->onContactClicked(Lcom/b44t/messenger/DcContact;)V

    return-void
.end method

.method static synthetic lambda$bind$3(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 0

    .line 243
    invoke-interface {p0, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;->onMessageClicked(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method


# virtual methods
.method bind(Landroid/content/Context;Lcom/b44t/messenger/DcChatlist$Item;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Ljava/util/Locale;Ljava/util/Set;ZLjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b44t/messenger/DcChatlist$Item;",
            "Lorg/thoughtcrime/securesms/mms/GlideRequests;",
            "Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;",
            "Ljava/util/Locale;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 216
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v3

    .line 217
    iget-object v4, v1, Lcom/b44t/messenger/DcChatlist$Item;->summary:Lcom/b44t/messenger/DcLot;

    iget v5, v1, Lcom/b44t/messenger/DcChatlist$Item;->chatId:I

    invoke-virtual {v3, v5}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v3

    move-object v5, p1

    invoke-static {p1, v4, v3}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getThreadRecord(Landroid/content/Context;Lcom/b44t/messenger/DcLot;Lcom/b44t/messenger/DcChat;)Lorg/thoughtcrime/securesms/database/model/ThreadRecord;

    move-result-object v6

    .line 218
    iget-object v5, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    iget v7, v1, Lcom/b44t/messenger/DcChatlist$Item;->msgId:I

    iget-object v8, v1, Lcom/b44t/messenger/DcChatlist$Item;->summary:Lcom/b44t/messenger/DcLot;

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lorg/thoughtcrime/securesms/ConversationListItem;->bind(Lorg/thoughtcrime/securesms/database/model/ThreadRecord;ILcom/b44t/messenger/DcLot;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;ZLjava/lang/String;)V

    .line 219
    iget-object v3, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    new-instance v4, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcChatlist$Item;)V

    invoke-virtual {v3, v4}, Lorg/thoughtcrime/securesms/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v3, v0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    new-instance v4, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcChatlist$Item;)V

    invoke-virtual {v3, v4}, Lorg/thoughtcrime/securesms/ConversationListItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method bind(Lcom/b44t/messenger/DcContact;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    invoke-virtual {v0, p1, p2, p4, p5}, Lorg/thoughtcrime/securesms/ConversationListItem;->bind(Lcom/b44t/messenger/DcContact;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/lang/String;)V

    .line 233
    iget-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    new-instance p4, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {p4, p3, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcContact;)V

    invoke-virtual {p2, p4}, Lorg/thoughtcrime/securesms/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method bind(Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    invoke-virtual {v0, p1, p2, p4, p5}, Lorg/thoughtcrime/securesms/ConversationListItem;->bind(Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    new-instance p4, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p2, p4}, Lorg/thoughtcrime/securesms/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method recycle()V
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->unbind()V

    .line 248
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->root:Lorg/thoughtcrime/securesms/ConversationListItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
