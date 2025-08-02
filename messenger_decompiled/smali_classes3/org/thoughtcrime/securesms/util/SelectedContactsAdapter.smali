.class public Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectedContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;
    }
.end annotation


# instance fields
.field private final contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final dcContext:Lcom/b44t/messenger/DcContext;

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final isBroadcast:Z

.field private itemClickListener:Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Z)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 49
    iput-boolean p3, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->isBroadcast:Z

    .line 50
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    return-void
.end method


# virtual methods
.method public changeData(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 59
    iget-object v2, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->isBroadcast:Z

    if-nez p1, :cond_2

    .line 64
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getContacts()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 77
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 101
    iget-object p2, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00ff

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0900b7

    .line 104
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const v1, 0x7f090242

    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const v2, 0x7f090296

    .line 106
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900dd

    .line 107
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 109
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    if-eq v4, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x8

    const/4 v9, 0x0

    if-ne v4, v5, :cond_3

    .line 115
    iget-object v4, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->context:Landroid/content/Context;

    iget-boolean v5, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->isBroadcast:Z

    if-eqz v5, :cond_2

    const v5, 0x7f120042

    goto :goto_1

    :cond_2
    const v5, 0x7f12018e

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v1, v9, v6}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 117
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    goto :goto_2

    .line 119
    :cond_3
    iget-object v5, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v5, v4}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v4

    .line 120
    new-instance v5, Lorg/thoughtcrime/securesms/recipients/Recipient;

    iget-object v6, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    .line 121
    invoke-virtual {v4}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v1, v9, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 123
    invoke-virtual {v4}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {v4}, Lcom/b44t/messenger/DcContact;->isVerified()Z

    move-result v2

    move-object v9, v5

    .line 128
    :goto_2
    iget-object v4, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {p3, v4}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    .line 129
    iget-object v4, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {p3, v4, v9, v0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    if-eqz v2, :cond_4

    const p3, 0x7f08016c

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    .line 130
    :goto_3
    invoke-virtual {v1, v0, v0, p3, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    const/16 v0, 0x8

    .line 131
    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 132
    iget-object p3, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isDarkTheme(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p3, -0x1

    goto :goto_5

    :cond_6
    const/high16 p3, -0x1000000

    :goto_5
    invoke-virtual {v3, p3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 133
    new-instance p3, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;I)V

    invoke-virtual {v3, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance p3, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method synthetic lambda$getView$0$org-thoughtcrime-securesms-util-SelectedContactsAdapter(ILandroid/view/View;)V
    .locals 1

    .line 134
    iget-object p2, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;

    if-eqz p2, :cond_0

    .line 135
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;->onItemDeleteClick(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$1$org-thoughtcrime-securesms-util-SelectedContactsAdapter(ILandroid/view/View;)V
    .locals 1

    .line 139
    iget-object p2, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;

    if-eqz p2, :cond_0

    .line 140
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Integer;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->contacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setItemClickListener(Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->itemClickListener:Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;

    return-void
.end method
