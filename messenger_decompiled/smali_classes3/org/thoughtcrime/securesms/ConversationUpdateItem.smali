.class public Lorg/thoughtcrime/securesms/ConversationUpdateItem;
.super Lorg/thoughtcrime/securesms/BaseConversationItem;
.source "ConversationUpdateItem.java"


# instance fields
.field private appIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field private deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

.field private textColor:I

.field private verifiedIcon:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationUpdateItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initializeAttributes()V
    .locals 3

    const v0, 0x7f040188

    .line 75
    filled-new-array {v0}, [I

    move-result-object v0

    .line 78
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->textColor:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setGenericInfoRecord(Lcom/b44t/messenger/DcMsg;)V
    .locals 6

    .line 95
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getInfoType()I

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getParent()Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getWebxdcInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "icon"

    .line 104
    invoke-static {v4, v5}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/b44t/messenger/DcMsg;->getWebxdcBlob(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 107
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->appIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->appIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->appIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->appIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->verifiedIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->verifiedIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 122
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->verifiedIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->verifiedIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f08016d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1

    .line 125
    :cond_4
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->verifiedIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 128
    :goto_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getDisplayBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setFailed()V

    goto :goto_2

    .line 132
    :cond_5
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setNone()V

    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setPreparing()V

    goto :goto_2

    .line 134
    :cond_7
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isPending()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setPending()V

    goto :goto_2

    .line 135
    :cond_8
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setNone()V

    .line 137
    :goto_2
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 138
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    const/high16 v0, -0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setTint(Ljava/lang/Integer;)V

    goto :goto_3

    .line 140
    :cond_9
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->textColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setTint(Ljava/lang/Integer;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public bind(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcChat;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V
    .locals 6
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

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p7

    move-object v5, p6

    .line 70
    invoke-virtual/range {v0 .. v5}, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->bind(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcChat;Ljava/util/Set;ZLorg/thoughtcrime/securesms/recipients/Recipient;)V

    .line 71
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->setGenericInfoRecord(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method public getMessageRecord()Lcom/b44t/messenger/DcMsg;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 43
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseConversationItem;->onFinishInflate()V

    .line 45
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->initializeAttributes()V

    const v0, 0x7f0900c8

    .line 47
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->bodyText:Landroid/widget/TextView;

    .line 48
    new-instance v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    const v1, 0x7f0900de

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    const v0, 0x7f09005c

    .line 49
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->appIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0903cf

    .line 50
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->verifiedIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->bodyText:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->bodyText:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationUpdateItem;->bodyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

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
