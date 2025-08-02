.class public Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;
.super Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ViewHolder;
.source "AccountSelectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountViewHolder"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    new-instance v0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;->getView()Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->getDeleteBtn()Landroid/widget/ImageButton;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    .line 68
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;->getView()Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public getView()Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;

    return-object v0
.end method

.method synthetic lambda$new$0$org-thoughtcrime-securesms-accounts-AccountSelectionListAdapter$AccountViewHolder(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;Landroid/view/View;)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;->getView()Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;->onItemClick(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$1$org-thoughtcrime-securesms-accounts-AccountSelectionListAdapter$AccountViewHolder(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;Landroid/view/View;)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;->getView()Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->getAccountId()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;->onDeleteButtonClick(I)V

    :cond_0
    return-void
.end method

.method public unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$AccountViewHolder;->getView()Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    return-void
.end method
