.class public Lorg/thoughtcrime/securesms/ConversationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ConversationAdapter.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;,
        Lorg/thoughtcrime/securesms/ConversationAdapter$ViewHolder;,
        Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;,
        Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ":",
        "Lorg/thoughtcrime/securesms/BindableConversationItem;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter<",
        "Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x28

.field private static final MESSAGE_TYPE_AUDIO_INCOMING:I = 0x4

.field private static final MESSAGE_TYPE_AUDIO_OUTGOING:I = 0x3

.field private static final MESSAGE_TYPE_DOCUMENT_INCOMING:I = 0x8

.field private static final MESSAGE_TYPE_DOCUMENT_OUTGOING:I = 0x7

.field private static final MESSAGE_TYPE_INCOMING:I = 0x1

.field private static final MESSAGE_TYPE_INFO:I = 0x2

.field private static final MESSAGE_TYPE_OUTGOING:I = 0x0

.field private static final MESSAGE_TYPE_STICKER_INCOMING:I = 0xa

.field private static final MESSAGE_TYPE_STICKER_OUTGOING:I = 0xb

.field private static final MESSAGE_TYPE_THUMBNAIL_INCOMING:I = 0x6

.field private static final MESSAGE_TYPE_THUMBNAIL_OUTGOING:I = 0x5

.field private static final MESSAGE_TYPE_VIDEOCHAT_INVITE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "ConversationAdapter"


# instance fields
.field private final batchSelected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;"
        }
    .end annotation
.end field

.field private final calendar:Ljava/util/Calendar;

.field private final clickListener:Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;

.field private final context:Landroid/content/Context;

.field private dcChat:Lcom/b44t/messenger/DcChat;

.field private final dcContext:Lcom/b44t/messenger/DcContext;

.field private dcMsgList:[I

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final inflater:Landroid/view/LayoutInflater;

.field private lastSeen:J

.field private lastSeenPosition:I

.field private final locale:Ljava/util/Locale;

.field private positionCurrentlyPulseHighlighting:I

.field private positionToPulseHighlight:I

.field private pulseHighlightingSince:J

.field private final recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

.field private final recordCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;Lorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 3

    .line 218
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 70
    new-instance v0, Lorg/thoughtcrime/securesms/util/LRUCache;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/LRUCache;-><init>(I)V

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->recordCache:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->batchSelected:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 98
    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcMsgList:[I

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->positionToPulseHighlight:I

    .line 100
    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->positionCurrentlyPulseHighlighting:I

    const-wide/16 v1, -0x1

    .line 101
    iput-wide v1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->pulseHighlightingSince:J

    .line 102
    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->lastSeenPosition:I

    .line 103
    iput-wide v1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->lastSeen:J

    .line 219
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcChat:Lcom/b44t/messenger/DcChat;

    .line 220
    iput-object p3, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 221
    iput-object p4, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->locale:Ljava/util/Locale;

    .line 222
    iput-object p5, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->clickListener:Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;

    .line 223
    iput-object p6, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 224
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->context:Landroid/content/Context;

    .line 225
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->calendar:Ljava/util/Calendar;

    .line 227
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    const/4 p1, 0x1

    .line 229
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private findLastSeenPosition(J)I
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    return v2

    .line 401
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 403
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 407
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v3

    .line 408
    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->getTimestamp()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_4
    return v2
.end method

.method private getLayoutForViewType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 288
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported item view type given to ConversationAdapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const p1, 0x7f0c0044

    return p1

    :pswitch_1
    const p1, 0x7f0c0042

    return p1

    :pswitch_2
    const p1, 0x7f0c0038

    return p1

    :pswitch_3
    const p1, 0x7f0c003c

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reloadData()V
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->recordCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 395
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->updateLastSeenPosition()V

    .line 396
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public changeData([I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 383
    :cond_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcMsgList:[I

    .line 384
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->reloadData()V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->batchSelected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getChat()Lcom/b44t/messenger/DcChat;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcChat:Lcom/b44t/messenger/DcChat;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 4

    .line 360
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getItemCount()I

    move-result v0

    const-wide/16 v1, -0x1

    if-lt p1, v0, :cond_0

    return-wide v1

    :cond_0
    if-gez p1, :cond_1

    return-wide v1

    .line 363
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->calendar:Ljava/util/Calendar;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSortTimestamp(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->hashCode([Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcMsgList:[I

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    .line 153
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcMsgList:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget p1, v0, v1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 294
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    .line 296
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/16 v1, 0x28

    if-eq v0, v1, :cond_a

    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    goto :goto_4

    :cond_1
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_3

    .line 302
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isSetupMessage()Z

    move-result v1

    if-nez v1, :cond_3

    .line 303
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    return p1

    :cond_3
    const/16 v1, 0x14

    if-eq v0, v1, :cond_8

    const/16 v1, 0x15

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x17

    if-ne v0, v1, :cond_6

    .line 309
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xb

    goto :goto_1

    :cond_5
    const/16 p1, 0xa

    :goto_1
    return p1

    :cond_6
    const/16 v1, 0x46

    if-ne v0, v1, :cond_7

    const/16 p1, 0x9

    return p1

    .line 315
    :cond_7
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 306
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x5

    goto :goto_3

    :cond_9
    const/4 p1, 0x6

    :goto_3
    return p1

    .line 300
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x3

    goto :goto_5

    :cond_b
    const/4 p1, 0x4

    :goto_5
    return p1
.end method

.method public getLastSeenPosition()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->lastSeenPosition:I

    return v0
.end method

.method public getMessageIds()[I
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcMsgList:[I

    return-object v0
.end method

.method public getMsg(I)Lcom/b44t/messenger/DcMsg;
    .locals 3

    if-ltz p1, :cond_2

    .line 160
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcMsgList:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->recordCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b44t/messenger/DcMsg;

    if-eqz v0, :cond_1

    return-object v0

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getItemId(I)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->recordCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 161
    :cond_2
    :goto_0
    new-instance p1, Lcom/b44t/messenger/DcMsg;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/b44t/messenger/DcMsg;-><init>(J)V

    return-object p1
.end method

.method public getSelectedItems()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->batchSelected:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSortTimestamp(I)J
    .locals 3

    .line 345
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->isActive()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 346
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-wide v1

    :cond_1
    if-gez p1, :cond_2

    return-wide v1

    .line 349
    :cond_2
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getSortTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcMsgList:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$onCreateViewHolder$0$org-thoughtcrime-securesms-ConversationAdapter(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 260
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->clickListener:Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;

    if-eqz p2, :cond_0

    .line 261
    check-cast p1, Lorg/thoughtcrime/securesms/BindableConversationItem;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/BindableConversationItem;->getMessageRecord()Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;->onItemClick(Lcom/b44t/messenger/DcMsg;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreateViewHolder$1$org-thoughtcrime-securesms-ConversationAdapter(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->clickListener:Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;

    if-eqz v0, :cond_0

    .line 266
    check-cast p1, Lorg/thoughtcrime/securesms/BindableConversationItem;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/BindableConversationItem;->getMessageRecord()Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;->onItemLongClick(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public msgIdToPosition(I)I
    .locals 3

    const/4 v0, 0x0

    .line 181
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcMsgList:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 182
    aget v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 183
    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 63
    check-cast p1, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->onBindHeaderViewHolder(Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindHeaderViewHolder(Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;I)V
    .locals 4

    .line 377
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSortTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/thoughtcrime/securesms/util/DateUtils;->getRelativeDate(Landroid/content/Context;Ljava/util/Locale;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindLastSeenViewHolder(Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;I)V
    .locals 4

    .line 421
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p2, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f100005

    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 234
    check-cast p1, Lorg/thoughtcrime/securesms/ConversationAdapter$ViewHolder;

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 237
    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->positionToPulseHighlight:I

    if-ne p2, v2, :cond_0

    const/4 v2, -0x1

    .line 238
    iput v2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->positionToPulseHighlight:I

    .line 239
    iput p2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->positionCurrentlyPulseHighlighting:I

    .line 240
    iput-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->pulseHighlightingSince:J

    .line 243
    :cond_0
    iget-wide v2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->pulseHighlightingSince:J

    sub-long/2addr v0, v2

    .line 244
    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->positionCurrentlyPulseHighlighting:I

    if-ne v2, p2, :cond_1

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 246
    :goto_0
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationAdapter$ViewHolder;->getItem()Lorg/thoughtcrime/securesms/BindableConversationItem;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcChat:Lcom/b44t/messenger/DcChat;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->locale:Ljava/util/Locale;

    iget-object v6, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->batchSelected:Ljava/util/Set;

    iget-object v7, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-interface/range {v1 .. v8}, Lorg/thoughtcrime/securesms/BindableConversationItem;->bind(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcChat;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    return-void
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;
    .locals 4

    .line 369
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onCreateLastSeenViewHolder(Landroid/view/ViewGroup;)Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;
    .locals 4

    .line 417
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0037

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getLayoutForViewType(I)I

    move-result p2

    invoke-static {v0, p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 259
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationAdapter;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ConversationAdapter;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 270
    move-object p2, p1

    check-cast p2, Lorg/thoughtcrime/securesms/BindableConversationItem;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->clickListener:Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;

    invoke-interface {p2, v0}, Lorg/thoughtcrime/securesms/BindableConversationItem;->setEventListener(Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;)V

    .line 271
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 251
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/thoughtcrime/securesms/ConversationItem;

    if-eqz v0, :cond_0

    .line 252
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationItem;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->update(Lorg/thoughtcrime/securesms/ConversationItem;FF)V

    :cond_0
    return-void
.end method

.method public pulseHighlightItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 338
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 339
    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->positionToPulseHighlight:I

    .line 340
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public reloadChat()V
    .locals 2

    .line 389
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->dcChat:Lcom/b44t/messenger/DcChat;

    return-void
.end method

.method public setLastSeen(J)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->lastSeen:J

    return-void
.end method

.method setLastSeenPosition(I)V
    .locals 0

    .line 139
    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->lastSeenPosition:I

    return-void
.end method

.method public toggleSelection(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->batchSelected:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->batchSelected:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateLastSeenPosition()V
    .locals 2

    .line 135
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->lastSeen:J

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->findLastSeenPosition(J)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter;->lastSeenPosition:I

    return-void
.end method
