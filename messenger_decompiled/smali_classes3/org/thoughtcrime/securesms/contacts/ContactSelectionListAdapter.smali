.class public Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContactSelectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;,
        Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;,
        Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$DividerViewHolder;,
        Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x64

.field private static final STYLE_ATTRIBUTES:[I

.field private static final TAG:Ljava/lang/String; = "ContactSelectionListAdapter"

.field private static final VIEW_TYPE_CONTACT:I = 0x0

.field private static final VIEW_TYPE_DIVIDER:I = 0x1


# instance fields
.field private final actionModeSelection:Landroid/util/SparseIntArray;

.field private final clickListener:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;

.field private final context:Landroid/content/Context;

.field private dcContactList:[I

.field private final dcContext:Lcom/b44t/messenger/DcContext;

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final li:Landroid/view/LayoutInflater;

.field private final longPressSelect:Z

.field private final multiSelect:Z

.field private query:Ljava/lang/String;

.field private final recordCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/b44t/messenger/DcContact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final selectedContacts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f040155

    const v1, 0x7f040154

    .line 57
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->STYLE_ATTRIBUTES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;ZZ)V
    .locals 2

    .line 245
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 62
    new-instance v0, Lorg/thoughtcrime/securesms/util/LRUCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/LRUCache;-><init>(I)V

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->recordCache:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 67
    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContactList:[I

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->selectedContacts:Ljava/util/Set;

    .line 75
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->actionModeSelection:Landroid/util/SparseIntArray;

    .line 246
    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->context:Landroid/content/Context;

    .line 247
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 248
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->li:Landroid/view/LayoutInflater;

    .line 249
    iput-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 250
    iput-boolean p4, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->multiSelect:Z

    .line 251
    iput-object p3, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->clickListener:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;

    .line 252
    iput-boolean p5, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->longPressSelect:Z

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)[I
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContactList:[I

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->longPressSelect:Z

    return p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)Landroid/util/SparseIntArray;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->actionModeSelection:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->isActionModeEnabled()Z

    move-result p0

    return p0
.end method

.method private getContact(I)Lcom/b44t/messenger/DcContact;
    .locals 3

    if-ltz p1, :cond_2

    .line 83
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContactList:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->recordCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b44t/messenger/DcContact;

    if-eqz v0, :cond_1

    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContactList:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->recordCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 84
    :cond_2
    :goto_0
    new-instance p1, Lcom/b44t/messenger/DcContact;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/b44t/messenger/DcContact;-><init>(J)V

    return-object p1
.end method

.method private isActionModeEnabled()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->actionModeSelection:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public changeData(Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p1, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;->ids:[I

    :goto_0
    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContactList:[I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 328
    :cond_1
    iget-object p1, p1, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;->query:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->query:Ljava/lang/String;

    .line 329
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->recordCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 330
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getActionModeSelection()Landroid/util/SparseIntArray;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->actionModeSelection:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContactList:[I

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSelectedContacts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->selectedContacts:Ljava/util/Set;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 267
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContactList:[I

    aget v3, v0, p2

    const/4 v7, 0x0

    .line 272
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->multiSelect:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 275
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->context:Landroid/content/Context;

    const v0, 0x7f12024a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    move-object p2, v2

    move-object v0, p2

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    const/4 v5, -0x2

    if-ne v3, v5, :cond_1

    .line 278
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->context:Landroid/content/Context;

    const v5, 0x7f12024c

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v5, p2

    move v8, v0

    move-object p2, v2

    move-object v0, p2

    goto :goto_1

    :cond_1
    const/4 v5, -0x5

    if-ne v3, v5, :cond_2

    .line 280
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->context:Landroid/content/Context;

    const v5, 0x7f1202ba

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 v5, -0x4

    if-ne v3, v5, :cond_3

    .line 282
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->context:Landroid/content/Context;

    const v5, 0x7f12024b

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 284
    :cond_3
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p2

    .line 285
    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v5

    move v8, v0

    move-object v0, p2

    move-object p2, v5

    move-object v5, v2

    .line 289
    :goto_1
    check-cast p1, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;

    .line 290
    iget-object v2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;->unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 293
    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;->setSelected(Z)V

    .line 294
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->isActionModeEnabled()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;->setEnabled(Z)V

    .line 295
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->isActionModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    const/4 v9, 0x1

    goto :goto_3

    .line 299
    :cond_5
    iget-object v6, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->actionModeSelection:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v6

    if-le v6, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 300
    :goto_2
    invoke-virtual {p1, v4}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;->setSelected(Z)V

    .line 301
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result v4

    if-ne v4, v2, :cond_7

    if-nez v8, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    move v9, v1

    .line 303
    :goto_3
    iget-object v2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-object v1, p1

    move-object v4, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v9}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;->bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 304
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->selectedContacts:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 258
    new-instance p2, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->li:Landroid/view/LayoutInflater;

    const v2, 0x7f0c002f

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->clickListener:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;

    invoke-direct {p2, p0, p1, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;-><init>(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;Landroid/view/View;Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;)V

    return-object p2

    .line 260
    :cond_0
    new-instance p2, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$DividerViewHolder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->li:Landroid/view/LayoutInflater;

    const v2, 0x7f0c002d

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$DividerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public resetActionModeSelection()V
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->actionModeSelection:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 102
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selectAll()V
    .locals 3

    .line 106
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->actionModeSelection:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->dcContactList:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 108
    aget v1, v1, v0

    if-lez v1, :cond_0

    .line 110
    iget-object v2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->actionModeSelection:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->notifyDataSetChanged()V

    return-void
.end method
