.class public Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AccountSelectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;,
        Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;,
        Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private accountList:[I

.field private final accounts:Lcom/b44t/messenger/DcAccounts;

.field private final clickListener:Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;

.field private final context:Landroid/content/Context;

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final li:Landroid/view/LayoutInflater;

.field private selectedAccountId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 25
    iput-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->accountList:[I

    .line 82
    iput-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->context:Landroid/content/Context;

    .line 83
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->accounts:Lcom/b44t/messenger/DcAccounts;

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->li:Landroid/view/LayoutInflater;

    .line 85
    iput-object p2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 86
    iput-object p3, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->clickListener:Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;

    return-void
.end method


# virtual methods
.method public changeData([II)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 128
    :cond_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->accountList:[I

    .line 129
    iput p2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->selectedAccountId:I

    .line 130
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->accountList:[I

    array-length v0, v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 98
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->accountList:[I

    aget v3, v0, p2

    const/4 p2, -0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v3, p2, :cond_0

    .line 105
    iget-object p2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->context:Landroid/content/Context;

    const v2, 0x7f12003e

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    move-object v5, p2

    move-object v4, v2

    move-object v6, v4

    const/4 v7, 0x0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->accounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {p2, v3}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    .line 108
    invoke-virtual {p2, v0}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "displayname"

    .line 110
    invoke-virtual {p2, v5}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v4

    .line 114
    :cond_1
    invoke-virtual {p2}, Lcom/b44t/messenger/DcContext;->getFreshMsgs()[I

    move-result-object p2

    array-length p2, p2

    move v7, p2

    move-object v6, v4

    move-object v4, v2

    .line 117
    :goto_0
    check-cast p1, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ViewHolder;

    .line 118
    iget-object p2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ViewHolder;->unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    .line 119
    iget-object v2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget p2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->selectedAccountId:I

    if-ne v3, p2, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ViewHolder;->bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ViewHolder;
    .locals 3

    .line 92
    new-instance p2, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->li:Landroid/view/LayoutInflater;

    const v1, 0x7f0c001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;->clickListener:Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;

    invoke-direct {p2, p1, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;-><init>(Landroid/view/View;Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;)V

    return-object p2
.end method
