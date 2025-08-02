.class public Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;
.super Landroid/widget/LinearLayout;
.source "ContactSelectionListItem.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;


# instance fields
.field private avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

.field private checkBox:Landroid/widget/CheckBox;

.field private glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private labelView:Landroid/widget/TextView;

.field private name:Ljava/lang/String;

.field private nameView:Landroid/widget/TextView;

.field private number:Ljava/lang/String;

.field private numberContainer:Landroid/view/View;

.field private numberView:Landroid/widget/TextView;

.field private recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

.field private specialId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/b44t/messenger/DcContact;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->nameView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->nameView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, "#"

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 113
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->numberView:Landroid/widget/TextView;

    const-string v1, ""

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->labelView:Landroid/widget/TextView;

    if-nez p3, :cond_2

    move-object p3, v1

    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->numberContainer:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->numberContainer:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz p4, :cond_4

    .line 120
    invoke-virtual {p4}, Lcom/b44t/messenger/DcContact;->isVerified()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 121
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->nameView:Landroid/widget/TextView;

    const p3, 0x7f08016c

    invoke-virtual {p2, p1, p1, p3, p1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 123
    :cond_4
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->nameView:Landroid/widget/TextView;

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getContactId()I
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getAddress()Lorg/thoughtcrime/securesms/database/Address;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->isDcContact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getAddress()Lorg/thoughtcrime/securesms/database/Address;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->getDcContactId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getDcContact()Lcom/b44t/messenger/DcContact;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialId()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->specialId:I

    return v0
.end method

.method synthetic lambda$onModified$0$org-thoughtcrime-securesms-contacts-ContactSelectionListItem(Lorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 156
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->wasSeenRecently()Z

    move-result v2

    :cond_0
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/components/AvatarView;->setSeenRecently(Z)V

    .line 158
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->nameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090074

    .line 51
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AvatarView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    const v0, 0x7f09026a

    .line 52
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->numberContainer:Landroid/view/View;

    const v0, 0x7f090269

    .line 53
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->numberView:Landroid/widget/TextView;

    const v0, 0x7f0901a2

    .line 54
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->labelView:Landroid/widget/TextView;

    const v0, 0x7f090242

    .line 55
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->nameView:Landroid/widget/TextView;

    const v0, 0x7f0900a3

    .line 56
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->checkBox:Landroid/widget/CheckBox;

    .line 58
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTextViewGravityStart(Landroid/widget/TextView;Landroid/content/Context;)V

    return-void
.end method

.method public onModified(Lorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    if-ne v0, p1, :cond_0

    .line 154
    new-instance v0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;Lorg/thoughtcrime/securesms/recipients/Recipient;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public set(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5

    .line 62
    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 63
    iput p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->specialId:I

    .line 64
    iput-object p4, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->name:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->number:Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, -0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_2

    const/4 v0, -0x5

    if-eq p2, v0, :cond_2

    const/4 v0, -0x3

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, p3}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 75
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->addListener(Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;)V

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object p4, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p4}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getName()Ljava/lang/String;

    move-result-object p4

    .line 79
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    iput-object v2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 71
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->nameView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    if-ne p2, v1, :cond_3

    .line 82
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    new-instance p2, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;

    const v0, 0x7f080080

    invoke-direct {p2, v0}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;-><init>(I)V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->getDummyContactColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/AvatarView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 84
    :cond_3
    iget-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p2, p1, v0, v3}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 86
    :goto_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/b44t/messenger/DcContact;->wasSeenRecently()Z

    move-result p2

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/AvatarView;->setSeenRecently(Z)V

    .line 88
    invoke-direct {p0, p4, p5, p6, p3}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/b44t/messenger/DcContact;)V

    .line 89
    invoke-virtual {p0, p8}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setEnabled(Z)V

    if-eqz p7, :cond_5

    .line 91
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    .line 92
    :cond_5
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->checkBox:Landroid/widget/CheckBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setNoHeaderPadding()V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setPadding(IIII)V

    return-void
.end method

.method public unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->removeListener(Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;)V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarView;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    return-void
.end method
