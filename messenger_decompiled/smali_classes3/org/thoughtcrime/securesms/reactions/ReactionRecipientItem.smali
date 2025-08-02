.class public Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;
.super Landroid/widget/LinearLayout;
.source "ReactionRecipientItem.java"


# instance fields
.field private addrContainer:Landroid/view/View;

.field private addrView:Landroid/widget/TextView;

.field private contactId:I

.field private contactPhotoImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

.field private nameView:Landroid/widget/TextView;

.field private reactionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->nameView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, "#"

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 67
    iget-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->addrView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->addrContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->addrContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILjava/lang/String;)V
    .locals 3

    .line 51
    iput p2, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->contactId:I

    .line 52
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p2

    .line 53
    new-instance v0, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    .line 54
    iget-object v1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->contactPhotoImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 55
    iget-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->reactionView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getContactId()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->contactId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0900b7

    .line 41
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AvatarImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->contactPhotoImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const v0, 0x7f09004d

    .line 42
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->addrContainer:Landroid/view/View;

    const v0, 0x7f09004c

    .line 43
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->addrView:Landroid/widget/TextView;

    const v0, 0x7f090242

    .line 44
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->nameView:Landroid/widget/TextView;

    const v0, 0x7f0902c3

    .line 45
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->reactionView:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTextViewGravityStart(Landroid/widget/TextView;Landroid/content/Context;)V

    return-void
.end method

.method public unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->contactPhotoImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    return-void
.end method
