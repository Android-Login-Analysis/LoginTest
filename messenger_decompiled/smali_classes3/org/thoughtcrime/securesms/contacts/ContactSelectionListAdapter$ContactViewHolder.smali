.class public Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;
.super Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;
.source "ContactSelectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;Landroid/view/View;Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->this$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    .line 137
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    new-instance p1, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance p1, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private getContactId(I)I
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->this$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->access$000(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)[I

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

.method private toggleSelection()V
    .locals 4

    .line 165
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->this$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->access$100(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getAdapterPosition()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 170
    :cond_1
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getContactId(I)I

    move-result v1

    .line 171
    iget-object v2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->this$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->access$200(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 173
    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->this$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->access$200(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1

    .line 175
    :cond_3
    iget-object v2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->this$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->access$200(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    :goto_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->this$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    .line 185
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getView()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->set(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public getView()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    return-object v0
.end method

.method synthetic lambda$new$0$org-thoughtcrime-securesms-contacts-ContactSelectionListAdapter$ContactViewHolder(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;Landroid/view/View;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_1

    .line 140
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->this$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->access$300(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->toggleSelection()V

    .line 142
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getView()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;->onItemClick(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;Z)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getView()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;->onItemClick(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$new$1$org-thoughtcrime-securesms-contacts-ContactSelectionListAdapter$ContactViewHolder(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;Landroid/view/View;)Z
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getContactId(I)I

    move-result p2

    if-lez p2, :cond_0

    .line 152
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->toggleSelection()V

    .line 153
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getView()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;->onItemLongClick(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getView()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 205
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getView()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setEnabled(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 200
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getView()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setSelected(Z)V

    return-void
.end method

.method public unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->getView()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    return-void
.end method
