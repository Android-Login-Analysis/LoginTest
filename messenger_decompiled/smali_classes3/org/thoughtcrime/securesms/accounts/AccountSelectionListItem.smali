.class public Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;
.super Landroid/widget/LinearLayout;
.source "AccountSelectionListItem.java"


# instance fields
.field private accountId:I

.field private addrContainer:Landroid/view/View;

.field private addrView:Landroid/widget/TextView;

.field private checkbox:Landroid/widget/ImageView;

.field private contactPhotoImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

.field private deleteBtn:Landroid/widget/ImageButton;

.field private nameView:Landroid/widget/TextView;

.field private unreadIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->nameView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, "#"

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 111
    iget-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->addrView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->addrContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->addrContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateUnreadIndicator(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->unreadIndicator:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->unreadIndicator:Landroid/widget/ImageView;

    invoke-static {}, Lcom/amulyakhare/textdrawable/TextDrawable;->builder()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->width(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->height(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    const/4 v2, -0x1

    .line 99
    invoke-interface {v1, v2}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->textColor(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->bold()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v1

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060361

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->unreadIndicator:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    .line 61
    iput p2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->accountId:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x6

    if-eq p2, v3, :cond_1

    .line 65
    iget-object v4, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->deleteBtn:Landroid/widget/ImageButton;

    if-eqz p7, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 66
    new-instance v4, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p3, p4}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_1
    iget-object p3, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->deleteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object v4, v2

    .line 71
    :goto_1
    iget-object p3, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->contactPhotoImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-virtual {p3, p1, v4, v1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    const/4 p1, 0x1

    if-eqz p7, :cond_2

    .line 74
    iget-object p2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->addrView:Landroid/widget/TextView;

    invoke-virtual {p2, v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 75
    iget-object p2, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->nameView:Landroid/widget/TextView;

    invoke-virtual {p2, v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 76
    iget-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->checkbox:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 78
    :cond_2
    iget-object p3, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->addrView:Landroid/widget/TextView;

    invoke-virtual {p3, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 79
    iget-object p3, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->nameView:Landroid/widget/TextView;

    if-ne p2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p3, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 80
    iget-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->checkbox:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :goto_2
    invoke-direct {p0, p6}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->updateUnreadIndicator(I)V

    .line 84
    invoke-direct {p0, p4, p5}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAccountId()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->accountId:I

    return v0
.end method

.method public getDeleteBtn()Landroid/widget/ImageButton;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->deleteBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0900b7

    .line 48
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AvatarImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->contactPhotoImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const v0, 0x7f09004d

    .line 49
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->addrContainer:Landroid/view/View;

    const v0, 0x7f09004c

    .line 50
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->addrView:Landroid/widget/TextView;

    const v0, 0x7f090242

    .line 51
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->nameView:Landroid/widget/TextView;

    const v0, 0x7f0903c7

    .line 52
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->unreadIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0900a4

    .line 53
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->checkbox:Landroid/widget/ImageView;

    const v0, 0x7f0900dd

    .line 54
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->deleteBtn:Landroid/widget/ImageButton;

    .line 56
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 57
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTextViewGravityStart(Landroid/widget/TextView;Landroid/content/Context;)V

    return-void
.end method

.method public unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->contactPhotoImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    return-void
.end method
