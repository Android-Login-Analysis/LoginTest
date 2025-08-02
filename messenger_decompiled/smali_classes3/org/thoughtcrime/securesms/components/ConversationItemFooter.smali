.class public Lorg/thoughtcrime/securesms/components/ConversationItemFooter;
.super Landroid/widget/LinearLayout;
.source "ConversationItemFooter.java"


# instance fields
.field private dateView:Landroid/widget/TextView;

.field private deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

.field private locationIndicatorView:Landroid/widget/ImageView;

.field private secureIndicatorView:Landroid/widget/ImageView;

.field private textColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->textColor:Ljava/lang/Integer;

    .line 32
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->textColor:Ljava/lang/Integer;

    .line 37
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->textColor:Ljava/lang/Integer;

    .line 42
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0035

    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090156

    .line 48
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->dateView:Landroid/widget/TextView;

    const v0, 0x7f090158

    .line 49
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->secureIndicatorView:Landroid/widget/ImageView;

    const v0, 0x7f090157

    .line 50
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->locationIndicatorView:Landroid/widget/ImageView;

    .line 51
    new-instance v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    const v1, 0x7f0900de

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lorg/thoughtcrime/securesms/R$styleable;->ConversationItemFooter:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->textColor:Ljava/lang/Integer;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setTextColor(I)V

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private presentDate(Lcom/b44t/messenger/DcMsg;Ljava/util/Locale;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->dateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->forceLayout()V

    .line 78
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->dateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getTimestamp()J

    move-result-wide v2

    invoke-static {v1, p2, v2, v3}, Lorg/thoughtcrime/securesms/util/DateUtils;->getExtendedRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Locale;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private presentDeliveryStatus(Lcom/b44t/messenger/DcMsg;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getDownloadState()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setDownloading()V

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setFailed()V

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setNone()V

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isRemoteRead()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setRead()V

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isDelivered()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setSent()V

    goto :goto_1

    .line 94
    :cond_5
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setPreparing()V

    goto :goto_1

    .line 95
    :cond_6
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setPending()V

    .line 97
    :goto_1
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 98
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    const/high16 v0, -0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setTint(Ljava/lang/Integer;)V

    goto :goto_2

    .line 100
    :cond_7
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->textColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setTint(Ljava/lang/Integer;)V

    :goto_2
    return-void
.end method

.method private setTextColor(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->dateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->secureIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 71
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->locationIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 72
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setTint(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->dateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->deliveryStatusView:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setMessageRecord(Lcom/b44t/messenger/DcMsg;Ljava/util/Locale;)V
    .locals 3

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->presentDate(Lcom/b44t/messenger/DcMsg;Ljava/util/Locale;)V

    .line 63
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->secureIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isSecure()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->locationIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->presentDeliveryStatus(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method
