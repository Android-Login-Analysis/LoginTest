.class public Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ProfileSettingsAdapter.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;,
        Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;,
        Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;,
        Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter<",
        "Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final INFO_LAST_SEEN:I = 0x77

.field public static final INFO_SEND_MESSAGE_BUTTON:I = 0x78

.field public static final INFO_VERIFIED:I = 0x76


# instance fields
.field private final clickListener:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;

.field private final context:Landroid/content/Context;

.field private final dcContext:Lcom/b44t/messenger/DcContext;

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private isBroadcast:Z

.field private isMailingList:Z

.field private final itemData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field private itemDataContact:Lcom/b44t/messenger/DcContact;

.field private itemDataMemberCount:I

.field private itemDataSharedChats:Lcom/b44t/messenger/DcChatlist;

.field private itemDataStatusText:Ljava/lang/String;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final locale:Ljava/util/Locale;

.field private final selectedMembers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    .line 94
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 96
    iput-object p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->locale:Ljava/util/Locale;

    .line 97
    iput-object p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->clickListener:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;

    .line 98
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 100
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->selectedMembers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public changeData([ILcom/b44t/messenger/DcContact;Lcom/b44t/messenger/DcChatlist;Lcom/b44t/messenger/DcChat;)V
    .locals 9

    .line 283
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataMemberCount:I

    const/4 v1, 0x0

    .line 285
    iput-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataSharedChats:Lcom/b44t/messenger/DcChatlist;

    .line 286
    iput-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataContact:Lcom/b44t/messenger/DcContact;

    const-string v1, ""

    .line 287
    iput-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataStatusText:Ljava/lang/String;

    .line 288
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->isMailingList:Z

    .line 289
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->isBroadcast:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 292
    array-length p2, p1

    iput p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataMemberCount:I

    .line 293
    invoke-virtual {p4}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 294
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->isBroadcast:Z

    .line 297
    :cond_0
    invoke-virtual {p4}, Lcom/b44t/messenger/DcChat;->isMailingList()Z

    move-result p2

    const/4 p3, 0x3

    if-eqz p2, :cond_1

    .line 298
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->isMailingList:Z

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p4}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 300
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    new-instance p4, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    const/4 v1, -0x3

    invoke-direct {p4, p3, v1, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(III)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->isBroadcast:Z

    if-nez p2, :cond_2

    .line 302
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    new-instance p4, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    const/4 v1, -0x4

    invoke-direct {p4, p3, v1, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(III)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_2
    :goto_0
    array-length p2, p1

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p2, :cond_b

    aget v1, p1, p4

    .line 307
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    new-instance v3, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    invoke-direct {v3, p3, v1, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_b

    if-eqz p2, :cond_b

    if-eqz p4, :cond_4

    .line 311
    invoke-virtual {p4}, Lcom/b44t/messenger/DcChat;->isDeviceTalk()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 313
    :goto_2
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataContact:Lcom/b44t/messenger/DcContact;

    if-nez p1, :cond_9

    .line 315
    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getVerifierId()I

    move-result p4

    if-eqz p4, :cond_6

    if-ne p4, v1, :cond_5

    .line 319
    iget-object p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v2, 0x7f120421

    invoke-virtual {p4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    .line 321
    :cond_5
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v4, p4}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p4

    invoke-virtual {p4}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v3, v0

    const p4, 0x7f120420

    invoke-virtual {v2, p4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :goto_3
    move-object v5, p4

    .line 323
    iget-object p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    new-instance v8, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    const/4 v3, 0x1

    const/16 v4, 0x76

    const/4 v6, 0x0

    const v7, 0x7f08016c

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(IILjava/lang/String;II)V

    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_6
    iget-object p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataContact:Lcom/b44t/messenger/DcContact;

    const-wide/16 v2, 0x0

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lcom/b44t/messenger/DcContact;->getLastSeen()J

    move-result-wide v4

    goto :goto_4

    :cond_7
    move-wide v4, v2

    :goto_4
    cmp-long p4, v4, v2

    if-nez p4, :cond_8

    .line 329
    iget-object p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v1, 0x7f1201c2

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_5

    .line 332
    :cond_8
    iget-object p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->locale:Ljava/util/Locale;

    invoke-static {p4, v2, v4, v5}, Lorg/thoughtcrime/securesms/util/DateUtils;->getExtendedTimeSpanString(Landroid/content/Context;Ljava/util/Locale;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v2, 0x7f1201c0

    invoke-virtual {p4, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :goto_5
    move-object v4, p4

    .line 334
    iget-object p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    new-instance v7, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    const/4 v2, 0x1

    const/16 v3, 0x77

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(IILjava/lang/String;II)V

    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    new-instance v7, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    const/16 v3, 0x78

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v4, 0x7f1203c7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f060056

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(IILjava/lang/String;II)V

    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_9
    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getStatus()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataStatusText:Ljava/lang/String;

    .line 341
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 342
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    new-instance p4, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataStatusText:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p4

    invoke-direct/range {v1 .. v6}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(IILjava/lang/String;II)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_a
    iput-object p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataSharedChats:Lcom/b44t/messenger/DcChatlist;

    if-nez p1, :cond_b

    .line 347
    invoke-virtual {p3}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result p1

    const/4 p2, 0x0

    :goto_6
    if-ge p2, p1, :cond_b

    .line 349
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    new-instance p4, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    const/4 v1, 0x4

    invoke-direct {p4, v1, v0, p2}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(III)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 354
    :cond_b
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->selectedMembers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 279
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getHeaderId(I)J
    .locals 2

    .line 219
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->getItemViewType(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    iget p1, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->type:I

    return p1
.end method

.method public getSelectedMembers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->selectedMembers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSelectedMembersCount()I
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->selectedMembers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataStatusText:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$onBindViewHolder$0$org-thoughtcrime-securesms-ProfileSettingsAdapter(ILandroid/view/View;)V
    .locals 0

    .line 175
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->clickListener:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;->onMemberClicked(I)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$org-thoughtcrime-securesms-ProfileSettingsAdapter(ILandroid/view/View;)Z
    .locals 0

    .line 176
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->clickListener:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;->onMemberLongClicked(I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onBindViewHolder$2$org-thoughtcrime-securesms-ProfileSettingsAdapter(ILandroid/view/View;)V
    .locals 0

    .line 189
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->clickListener:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;->onSharedChatClicked(I)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$3$org-thoughtcrime-securesms-ProfileSettingsAdapter(Landroid/view/View;)Z
    .locals 0

    .line 193
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->clickListener:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;->onStatusLongClicked()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onBindViewHolder$4$org-thoughtcrime-securesms-ProfileSettingsAdapter(ILandroid/view/View;)V
    .locals 0

    .line 199
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->clickListener:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;->onSettingsClicked(I)V

    return-void
.end method

.method public bridge synthetic onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->onBindHeaderViewHolder(Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;I)V

    return-void
.end method

.method public onBindHeaderViewHolder(Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;I)V
    .locals 4

    .line 230
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->getItemViewType(I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 250
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v0, 0x7f120255

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 241
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v0, 0x7f120377

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 232
    :cond_1
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->isMailingList:Z

    if-eqz p2, :cond_2

    .line 233
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1200ce

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 234
    :cond_2
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->isBroadcast:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 235
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataMemberCount:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const v1, 0x7f10000e

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 237
    :cond_3
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataMemberCount:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const v1, 0x7f10000b

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 247
    :cond_4
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v0, 0x7f12031f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 244
    :cond_5
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1201a9

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 253
    :goto_0
    iget-object p1, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 146
    check-cast p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;

    .line 147
    iget-object v0, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    if-eqz v0, :cond_3

    .line 148
    iget-object p1, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    .line 150
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    iget p2, p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->contactId:I

    const/4 v6, 0x0

    const/4 v0, -0x3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 157
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->isBroadcast:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v2, 0x7f120042

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v2, 0x7f12018e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x4

    if-ne p2, v0, :cond_2

    .line 164
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    const v2, 0x7f120393

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    move-object v3, v1

    move-object v5, v3

    goto :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 172
    :goto_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    .line 173
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->set(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 174
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->selectedMembers:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setSelected(Z)V

    .line 175
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;I)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;I)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_2

    .line 178
    :cond_3
    iget-object v0, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/thoughtcrime/securesms/ConversationListItem;

    if-eqz v0, :cond_4

    .line 179
    iget-object p1, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListItem;

    .line 180
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    iget p2, p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->chatlistIndex:I

    .line 182
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataSharedChats:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcChatlist;->getChatId(I)I

    move-result v8

    .line 183
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, v8}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataSharedChats:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v1, p2, v0}, Lcom/b44t/messenger/DcChatlist;->getSummary(ILcom/b44t/messenger/DcChat;)Lcom/b44t/messenger/DcLot;

    move-result-object v3

    .line 186
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getThreadRecord(Landroid/content/Context;Lcom/b44t/messenger/DcLot;Lcom/b44t/messenger/DcChat;)Lorg/thoughtcrime/securesms/database/model/ThreadRecord;

    move-result-object v1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemDataSharedChats:Lcom/b44t/messenger/DcChatlist;

    .line 187
    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcChatlist;->getMsgId(I)I

    move-result v2

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->locale:Ljava/util/Locale;

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p1

    .line 186
    invoke-virtual/range {v0 .. v7}, Lorg/thoughtcrime/securesms/ConversationListItem;->bind(Lorg/thoughtcrime/securesms/database/model/ThreadRecord;ILcom/b44t/messenger/DcLot;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;Z)V

    .line 189
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v8}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;I)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 191
    :cond_4
    iget-object v0, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/thoughtcrime/securesms/ProfileStatusItem;

    if-eqz v0, :cond_5

    .line 192
    iget-object p1, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileStatusItem;

    .line 193
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileStatusItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 194
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileStatusItem;->set(Ljava/lang/String;)V

    goto :goto_2

    .line 196
    :cond_5
    iget-object v0, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/thoughtcrime/securesms/ProfileSettingsItem;

    if-eqz v0, :cond_6

    .line 197
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    iget v0, v0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->settingsId:I

    .line 198
    iget-object p1, p1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileSettingsItem;

    .line 199
    new-instance v1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;I)V

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->label:Ljava/lang/String;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    iget v1, v1, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->labelColor:I

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->itemData:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;

    iget p2, p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->iconLeft:I

    invoke-virtual {p1, v0, v1, p2}, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->set(Ljava/lang/String;II)V

    :cond_6
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;
    .locals 4

    .line 224
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c002d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 125
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c002f

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    .line 126
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setNoHeaderPadding()V

    .line 127
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 130
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0049

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListItem;

    .line 131
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListItem;->hideItemDivider()V

    .line 132
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 135
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00e7

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileStatusItem;

    .line 136
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 139
    :cond_2
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00e6

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ProfileSettingsItem;

    .line 140
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public toggleMemberSelection(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->selectedMembers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->selectedMembers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->notifyDataSetChanged()V

    return-void
.end method
