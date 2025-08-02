.class public Lorg/thoughtcrime/securesms/ConversationVideochatItem;
.super Landroid/widget/LinearLayout;
.source "ConversationVideochatItem.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/BindableConversationItem;


# instance fields
.field private body:Landroid/widget/TextView;

.field private contactPhoto:Lorg/thoughtcrime/securesms/components/AvatarImageView;

.field private contactPhotoHolder:Landroid/view/ViewGroup;

.field private dcMsg:Lcom/b44t/messenger/DcMsg;

.field private footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setFooter(Lcom/b44t/messenger/DcMsg;Ljava/util/Locale;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    const/4 v1, -0x2

    invoke-static {v0, v1, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setMessageRecord(Lcom/b44t/messenger/DcMsg;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcChat;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/DcMsg;",
            "Lcom/b44t/messenger/DcChat;",
            "Lorg/thoughtcrime/securesms/mms/GlideRequests;",
            "Ljava/util/Locale;",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;",
            "Lorg/thoughtcrime/securesms/recipients/Recipient;",
            "Z)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->dcMsg:Lcom/b44t/messenger/DcMsg;

    .line 66
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    .line 67
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result p6

    invoke-virtual {p2, p6}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p2

    .line 69
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p6

    const/4 p7, 0x0

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->getContext()Landroid/content/Context;

    move-result-object p6

    const v1, 0x7f120431

    invoke-virtual {p6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->getContext()Landroid/content/Context;

    move-result-object p6

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p7

    const v2, 0x7f120425

    invoke-virtual {p6, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120430

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12042f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    :goto_1
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->getBoldedString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->body:Landroid/widget/TextView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object p6, v3, p7

    const-string p6, "\n"

    aput-object p6, v3, v0

    const/4 p6, 0x2

    aput-object v1, v3, p6

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p6

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p6, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->contactPhoto:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    new-instance p7, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p7, v1, p2}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    invoke-virtual {p6, p3, p7, v0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 78
    invoke-interface {p5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->setSelected(Z)V

    .line 79
    invoke-direct {p0, p1, p4}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->setFooter(Lcom/b44t/messenger/DcMsg;Ljava/util/Locale;)V

    return-void
.end method

.method public getMessageRecord()Lcom/b44t/messenger/DcMsg;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->dcMsg:Lcom/b44t/messenger/DcMsg;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0900c8

    .line 50
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->body:Landroid/widget/TextView;

    const v0, 0x7f0900c4

    .line 51
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    const v0, 0x7f0900b5

    .line 52
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AvatarImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->contactPhoto:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const v0, 0x7f0900b6

    .line 53
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationVideochatItem;->contactPhotoHolder:Landroid/view/ViewGroup;

    return-void
.end method

.method public setEventListener(Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;)V
    .locals 0

    return-void
.end method

.method public unbind()V
    .locals 0

    return-void
.end method
