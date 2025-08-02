.class public Lorg/thoughtcrime/securesms/ConversationTitleView;
.super Landroid/widget/RelativeLayout;
.source "ConversationTitleView.java"


# instance fields
.field private avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

.field private back:Landroid/widget/ImageView;

.field private content:Landroid/view/View;

.field private ephemeralIcon:Landroid/widget/ImageView;

.field private subtitle:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public hideAvatar()V
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AvatarView;->setVisibility(I)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0903c9

    .line 46
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->back:Landroid/widget/ImageView;

    const v0, 0x7f0900ba

    .line 47
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->content:Landroid/view/View;

    const v0, 0x7f0903af

    .line 48
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->title:Landroid/widget/TextView;

    const v0, 0x7f090385

    .line 49
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->subtitle:Landroid/widget/TextView;

    const v0, 0x7f090074

    .line 50
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AvatarView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    const v0, 0x7f090127

    .line 51
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->ephemeralIcon:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTextViewGravityStart(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTextViewGravityStart(Landroid/widget/TextView;Landroid/content/Context;)V

    return-void
.end method

.method public setOnBackClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->content:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->content:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatarLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setSeenRecently(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarView;->setSeenRecently(Z)V

    return-void
.end method

.method public setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcChat;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcChat;Z)V

    return-void
.end method

.method public setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcChat;Z)V
    .locals 10

    .line 62
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isMuted()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const v3, 0x7f080170

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 77
    :goto_0
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isProtected()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f08016c

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 82
    :goto_1
    invoke-virtual {v2, v0}, Lcom/b44t/messenger/DcContext;->getChatContacts(I)[I

    move-result-object v6

    .line 83
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isMailingList()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    if-eqz p3, :cond_2

    .line 85
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->getMailinglistAddr()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    :cond_2
    const p3, 0x7f12020a

    .line 87
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 89
    :cond_3
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    if-nez p3, :cond_a

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    array-length v1, v6

    new-array v7, v8, [Ljava/lang/Object;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    const v6, 0x7f10000e

    invoke-virtual {p3, v6, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 93
    :cond_4
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez p3, :cond_a

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    array-length v1, v6

    new-array v7, v8, [Ljava/lang/Object;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    const v6, 0x7f10000b

    invoke-virtual {p3, v6, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 97
    :cond_5
    array-length v7, v6

    if-lt v7, v8, :cond_a

    .line 98
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isSelfTalk()Z

    move-result v7

    if-eqz v7, :cond_6

    const p3, 0x7f1200b8

    .line 99
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 101
    :cond_6
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isDeviceTalk()Z

    move-result v7

    if-eqz v7, :cond_7

    const p3, 0x7f1200ed

    .line 102
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 105
    :cond_7
    aget v1, v6, v4

    invoke-virtual {v2, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v1

    if-nez p3, :cond_9

    .line 106
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isProtected()Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_2

    :cond_8
    move-object p3, v9

    goto :goto_3

    .line 107
    :cond_9
    :goto_2
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object p3

    .line 109
    :goto_3
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContact;->wasSeenRecently()Z

    move-result v1

    goto :goto_5

    :cond_a
    move-object p3, v9

    :goto_4
    const/4 v1, 0x0

    .line 113
    :goto_5
    iget-object v6, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    new-instance v7, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationTitleView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9, p2}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;)V

    invoke-virtual {v6, p1, v7, v4}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 114
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/AvatarView;->setSeenRecently(Z)V

    .line 115
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v4, v5, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 116
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 p2, 0x8

    if-nez p1, :cond_b

    .line 117
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 120
    :cond_b
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_6
    invoke-virtual {v2, v0}, Lcom/b44t/messenger/DcContext;->getChatEphemeralTimer(I)I

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    .line 123
    :goto_7
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->ephemeralIcon:Landroid/widget/ImageView;

    if-eqz v8, :cond_d

    goto :goto_8

    :cond_d
    const/16 v4, 0x8

    :goto_8
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcContact;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    new-instance v1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationTitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 131
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->wasSeenRecently()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/AvatarView;->setSeenRecently(Z)V

    .line 134
    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->isVerified()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f08016c

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 140
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationTitleView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
