.class public Lorg/thoughtcrime/securesms/ConversationItem;
.super Lorg/thoughtcrime/securesms/BaseConversationItem;
.source "ConversationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;,
        Lorg/thoughtcrime/securesms/ConversationItem$StickerClickListener;
    }
.end annotation


# static fields
.field private static final MAX_MEASURE_CALLS:I = 0x3

.field private static final SWIPE_RECT:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "ConversationItem"


# instance fields
.field private audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "Lorg/thoughtcrime/securesms/components/AudioView;",
            ">;"
        }
    .end annotation
.end field

.field protected bodyBubble:Landroid/view/ViewGroup;

.field private contactPhoto:Lorg/thoughtcrime/securesms/components/AvatarImageView;

.field protected contactPhotoHolder:Landroid/view/ViewGroup;

.field private container:Landroid/view/ViewGroup;

.field private dcContact:Lcom/b44t/messenger/DcContact;

.field private documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "Lorg/thoughtcrime/securesms/components/DocumentView;",
            ">;"
        }
    .end annotation
.end field

.field private eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

.field private footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

.field private glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private groupSender:Landroid/widget/TextView;

.field private groupSenderHolder:Landroid/view/View;

.field private incomingBubbleColor:I

.field private locale:Ljava/util/Locale;

.field private measureCalls:I

.field private mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private msgActionButton:Landroid/widget/Button;

.field private outgoingBubbleColor:I

.field private quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

.field protected reactionsView:Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;

.field protected replyView:Landroid/view/View;

.field private showSender:Z

.field private stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "Lorg/thoughtcrime/securesms/components/BorderlessImageView;",
            ">;"
        }
    .end annotation
.end field

.field private vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "Lorg/thoughtcrime/securesms/components/VcardView;",
            ">;"
        }
    .end annotation
.end field

.field private webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "Lorg/thoughtcrime/securesms/components/WebxdcView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/ConversationItem;->SWIPE_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/ConversationItem;)Lorg/thoughtcrime/securesms/util/views/Stub;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getActiveFooter(Lcom/b44t/messenger/DcMsg;)Lorg/thoughtcrime/securesms/components/ConversationItemFooter;
    .locals 1

    .line 783
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasSticker(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->getFooter()Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    move-result-object p1

    return-object p1

    .line 785
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasOnlyThumbnail(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 786
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->getFooter()Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    move-result-object p1

    return-object p1

    .line 788
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    return-object p1
.end method

.method private getAvailableMessageBubbleWidth(Landroid/view/View;)I
    .locals 2

    .line 868
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->hasAudio(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AudioView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->getLeftMargin(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->getRightMargin(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 870
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->hasThumbnail(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 873
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 876
    :goto_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->getLeftMargin(Landroid/view/View;)I

    move-result v1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->getRightMargin(Landroid/view/View;)I

    move-result p1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hasAudio(Lcom/b44t/messenger/DcMsg;)Z
    .locals 1

    .line 351
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result p1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x29

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private hasDocument(Lcom/b44t/messenger/DcMsg;)Z
    .locals 2

    .line 385
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isSetupMessage()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasOnlyThumbnail(Lcom/b44t/messenger/DcMsg;)Z
    .locals 1

    .line 369
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasThumbnail(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasAudio(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasDocument(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasWebxdc(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasSticker(Lcom/b44t/messenger/DcMsg;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasQuote(Lcom/b44t/messenger/DcMsg;)Z
    .locals 1

    const-string v0, ""

    .line 356
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getQuotedText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private hasSticker(Lcom/b44t/messenger/DcMsg;)Z
    .locals 1

    .line 365
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result p1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasThumbnail(Lcom/b44t/messenger/DcMsg;)Z
    .locals 1

    .line 360
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result p1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private hasVcard(Lcom/b44t/messenger/DcMsg;)Z
    .locals 1

    .line 381
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result p1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasWebxdc(Lcom/b44t/messenger/DcMsg;)Z
    .locals 1

    .line 377
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result p1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initializeAttributes()V
    .locals 3

    const v0, 0x7f04017c

    const v1, 0x7f040180

    .line 260
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 264
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->incomingBubbleColor:I

    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->outgoingBubbleColor:I

    .line 268
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private readDimen(I)I
    .locals 1

    .line 793
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method private readDimen(Landroid/content/Context;I)I
    .locals 0

    .line 863
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method private setAuthor(Lcom/b44t/messenger/DcMsg;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 821
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->contactPhotoHolder:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    .line 822
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 823
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->contactPhoto:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 827
    :cond_1
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->contactPhotoHolder:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz p2, :cond_2

    .line 828
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 832
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isForwarded()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    .line 836
    :cond_3
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v1, :cond_4

    .line 839
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    .line 843
    :cond_5
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    const p2, 0x7f070276

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->readDimen(Landroid/content/Context;I)I

    move-result v0

    .line 844
    :goto_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method private setBodyText(Lcom/b44t/messenger/DcMsg;)V
    .locals 7

    .line 389
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 390
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 391
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/Prefs;->getMessageBodyTextSize(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 393
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isSetupMessage()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 396
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    const v4, 0x7f120069

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 403
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    invoke-static {v2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->linkify(Landroid/text/SpannableString;)Landroid/text/SpannableString;

    move-result-object v2

    .line 407
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    :goto_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getDownloadState()I

    move-result v0

    const/16 v2, 0xa

    const/16 v4, 0x14

    const/16 v5, 0x3e8

    const/4 v6, 0x1

    if-eq v0, v2, :cond_6

    if-eq v0, v4, :cond_6

    if-ne v0, v5, :cond_3

    goto :goto_1

    .line 432
    :cond_3
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v2, 0x50

    if-ne v0, v2, :cond_4

    .line 433
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 435
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    const v1, 0x7f1203e5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 436
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 444
    :cond_4
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->hasHtml()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 445
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    const v1, 0x7f1203d9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 448
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 456
    :cond_5
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 413
    :cond_6
    :goto_1
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-ne v0, v5, :cond_7

    .line 415
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    const v1, 0x7f1200fd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_7
    if-ne v0, v4, :cond_8

    .line 418
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    const v1, 0x7f1200fb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 421
    :cond_8
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 422
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    const v1, 0x7f1200fa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 425
    :goto_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method

.method private setBubbleState(Lcom/b44t/messenger/DcMsg;)V
    .locals 2

    .line 282
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->outgoingBubbleColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->incomingBubbleColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method private setContactPhoto()V
    .locals 5

    .line 677
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->contactPhoto:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    if-nez v0, :cond_0

    return-void

    .line 679
    :cond_0
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->showSender:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContact:Lcom/b44t/messenger/DcContact;

    if-nez v1, :cond_1

    goto :goto_0

    .line 682
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    new-instance v2, Lorg/thoughtcrime/securesms/recipients/Recipient;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContact:Lcom/b44t/messenger/DcContact;

    invoke-direct {v2, v3, v4}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 683
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->contactPhoto:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x8

    .line 680
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setContentDescription()V
    .locals 3

    .line 321
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "\n"

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSender:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 325
    :goto_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/AudioView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AudioView;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 327
    :cond_1
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/DocumentView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DocumentView;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 329
    :cond_2
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/WebxdcView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 331
    :cond_3
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/VcardView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/VcardView;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 333
    :cond_4
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 335
    :cond_5
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_6
    :goto_1
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_7
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_8
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setFooter(Lcom/b44t/messenger/DcMsg;Ljava/util/Locale;)V
    .locals 2

    .line 752
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    const/4 v1, -0x2

    invoke-static {v0, v1, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 754
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->getFooter()Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    .line 757
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->getActiveFooter(Lcom/b44t/messenger/DcMsg;)Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    move-result-object v0

    const/4 v1, 0x0

    .line 758
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    .line 759
    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setMessageRecord(Lcom/b44t/messenger/DcMsg;Ljava/util/Locale;)V

    return-void
.end method

.method private setGroupMessageStatus()V
    .locals 6

    .line 797
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 798
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSender:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSender:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->isForwarded()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 805
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->showSender:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContact:Lcom/b44t/messenger/DcContact;

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSender:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContact:Lcom/b44t/messenger/DcContact;

    invoke-virtual {v4, v5, v1}, Lcom/b44t/messenger/DcMsg;->getSenderName(Lcom/b44t/messenger/DcContact;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const v1, 0x7f120170

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 808
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSender:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    const v2, 0x7f120171

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSender:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 812
    :cond_2
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->showSender:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContact:Lcom/b44t/messenger/DcContact;

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSender:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContact:Lcom/b44t/messenger/DcContact;

    invoke-virtual {v1, v3, v2}, Lcom/b44t/messenger/DcMsg;->getSenderName(Lcom/b44t/messenger/DcContact;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSender:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContact:Lcom/b44t/messenger/DcContact;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContact;->getColor()I

    move-result v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->rgbToArgbColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setGutterSizes(Lcom/b44t/messenger/DcMsg;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 744
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 745
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->container:Landroid/view/ViewGroup;

    const p2, 0x7f070063

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->readDimen(I)I

    move-result p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setLeftMargin(Landroid/view/View;I)V

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 747
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->container:Landroid/view/ViewGroup;

    const p2, 0x7f070064

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->readDimen(I)I

    move-result p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setLeftMargin(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMediaAttributes(Lcom/b44t/messenger/DcMsg;Z)V
    .locals 10

    .line 479
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasAudio(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/16 v5, 0x8

    if-eqz v0, :cond_7

    .line 480
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {p2, v3}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 481
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setVisibility(I)V

    .line 482
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 483
    :cond_1
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 484
    :cond_2
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setVisibility(I)V

    .line 485
    :cond_3
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/VcardView;->setVisibility(I)V

    .line 488
    :cond_4
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getDuration()I

    move-result p2

    if-nez p2, :cond_5

    .line 490
    new-instance v0, Lorg/thoughtcrime/securesms/mms/AudioSlide;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-direct {v0, v5, p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    .line 491
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationItem;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lorg/thoughtcrime/securesms/ConversationItem$1SetDurationListener;

    invoke-direct {v6, p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem$1SetDurationListener;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lcom/b44t/messenger/DcMsg;)V

    invoke-static {v5, v0, v6}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->createFor(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/AudioSlide;Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->requestDuration()V

    .line 495
    :cond_5
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AudioView;

    new-instance v5, Lorg/thoughtcrime/securesms/mms/AudioSlide;

    iget-object v6, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-direct {v5, v6, p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {v0, v5, p2}, Lorg/thoughtcrime/securesms/components/AudioView;->setAudio(Lorg/thoughtcrime/securesms/mms/AudioSlide;I)V

    .line 496
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/AudioView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/AudioView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/AudioView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/AudioView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 498
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_6

    .line 499
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/AudioView;->setImportantForAccessibility(I)V

    .line 502
    :cond_6
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 503
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 504
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {p1, v3}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    goto/16 :goto_0

    .line 506
    :cond_7
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasDocument(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_e

    .line 507
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {p2, v3}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 508
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setVisibility(I)V

    .line 509
    :cond_8
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 510
    :cond_9
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 511
    :cond_a
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setVisibility(I)V

    .line 512
    :cond_b
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/VcardView;->setVisibility(I)V

    .line 515
    :cond_c
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/DocumentView;

    new-instance v0, Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-direct {v0, v5, p1}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/components/DocumentView;->setDocument(Lorg/thoughtcrime/securesms/mms/DocumentSlide;)V

    .line 516
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/DocumentView;

    new-instance p2, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;

    invoke-direct {p2, p0, v6}, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lorg/thoughtcrime/securesms/ConversationItem$1;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/DocumentView;->setDocumentClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V

    .line 517
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/DocumentView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/DocumentView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 518
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_d

    .line 519
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/DocumentView;->setImportantForAccessibility(I)V

    .line 522
    :cond_d
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 523
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 524
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {p1, v3}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    goto/16 :goto_0

    .line 526
    :cond_e
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasWebxdc(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 527
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {p2, v3}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 528
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setVisibility(I)V

    .line 529
    :cond_f
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 530
    :cond_10
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 531
    :cond_11
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setVisibility(I)V

    .line 532
    :cond_12
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/VcardView;->setVisibility(I)V

    .line 534
    :cond_13
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/WebxdcView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    const v5, 0x7f120434

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setWebxdc(Lcom/b44t/messenger/DcMsg;Ljava/lang/String;)V

    .line 535
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/WebxdcView;

    new-instance p2, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;

    invoke-direct {p2, p0, v6}, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lorg/thoughtcrime/securesms/ConversationItem$1;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setWebxdcClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V

    .line 536
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/WebxdcView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 537
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_14

    .line 538
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setImportantForAccessibility(I)V

    .line 541
    :cond_14
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 542
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 543
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {p1, v3}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    goto/16 :goto_0

    .line 545
    :cond_15
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasVcard(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 546
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {p2, v3}, Lorg/thoughtcrime/securesms/components/VcardView;->setVisibility(I)V

    .line 547
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setVisibility(I)V

    .line 548
    :cond_16
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_17

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 549
    :cond_17
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 550
    :cond_18
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 551
    :cond_19
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setVisibility(I)V

    .line 553
    :cond_1a
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/VcardView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    new-instance v5, Lorg/thoughtcrime/securesms/mms/VcardSlide;

    iget-object v7, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-direct {v5, v7, p1}, Lorg/thoughtcrime/securesms/mms/VcardSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    invoke-virtual {p2, v0, v5, p1}, Lorg/thoughtcrime/securesms/components/VcardView;->setVcard(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/VcardSlide;Lcom/b44t/messenger/rpc/Rpc;)V

    .line 554
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/VcardView;

    new-instance p2, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;

    invoke-direct {p2, p0, v6}, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lorg/thoughtcrime/securesms/ConversationItem$1;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/VcardView;->setVcardClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V

    .line 555
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/VcardView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/VcardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 557
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_1b

    .line 558
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/VcardView;->setImportantForAccessibility(I)V

    .line 561
    :cond_1b
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 562
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 563
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {p1, v3}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    goto/16 :goto_0

    .line 565
    :cond_1c
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasThumbnail(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 566
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {v0, v3}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 568
    :cond_1d
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 569
    :cond_1e
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 570
    :cond_1f
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setVisibility(I)V

    .line 571
    :cond_20
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/components/VcardView;->setVisibility(I)V

    .line 573
    :cond_21
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getSlideForMsg(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v0

    .line 575
    new-instance v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;

    invoke-virtual {p1, v3}, Lcom/b44t/messenger/DcMsg;->getWidth(I)I

    move-result v7

    invoke-virtual {p1, v3}, Lcom/b44t/messenger/DcMsg;->getHeight(I)I

    move-result v8

    invoke-direct {v5, v7, v8}, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;-><init>(II)V

    .line 576
    iget v7, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->width:I

    if-lez v7, :cond_22

    iget v7, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->height:I

    if-gtz v7, :cond_26

    .line 577
    :cond_22
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v7

    const/16 v8, 0x32

    if-ne v7, v8, :cond_23

    .line 578
    iget-object v7, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/Slide;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v7, v8, v9, v5}, Lorg/thoughtcrime/securesms/util/MediaUtil;->createVideoThumbnailIfNeeded(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;)Z

    .line 580
    :cond_23
    iget v7, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->width:I

    if-lez v7, :cond_24

    iget v7, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->height:I

    if-gtz v7, :cond_25

    :cond_24
    const/16 v7, 0xb4

    .line 581
    iput v7, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->width:I

    .line 582
    iput v7, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->height:I

    .line 584
    :cond_25
    iget v7, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->width:I

    iget v8, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->height:I

    invoke-virtual {p1, v7, v8, v3}, Lcom/b44t/messenger/DcMsg;->lateFilingMediaSize(III)V

    .line 587
    :cond_26
    iget-object v7, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    iget-object v8, p0, Lorg/thoughtcrime/securesms/ConversationItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget v9, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->width:I

    iget v5, v5, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->height:I

    invoke-virtual {v7, v8, v0, v9, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;II)V

    .line 591
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    new-instance v5, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;

    invoke-direct {v5, p0, v6}, Lorg/thoughtcrime/securesms/ConversationItem$ThumbnailClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lorg/thoughtcrime/securesms/ConversationItem$1;)V

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setThumbnailClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V

    .line 592
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 593
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->showShade(Z)V

    .line 595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_27

    .line 596
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setImportantForAccessibility(I)V

    .line 599
    :cond_27
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->setThumbnailOutlineCorners(Lcom/b44t/messenger/DcMsg;Z)V

    .line 601
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const p2, 0x7f070267

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->readDimen(I)I

    move-result p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 602
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-static {p1, p2, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 603
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    invoke-static {p1, p2, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 604
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {p1, v3}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    goto/16 :goto_0

    .line 606
    :cond_28
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasSticker(Lcom/b44t/messenger/DcMsg;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 607
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {p2, v3}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setVisibility(I)V

    .line 608
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_29

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 609
    :cond_29
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 610
    :cond_2a
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 611
    :cond_2b
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setVisibility(I)V

    .line 612
    :cond_2c
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_2d

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {p2, v5}, Lorg/thoughtcrime/securesms/components/VcardView;->setVisibility(I)V

    .line 614
    :cond_2d
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 616
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    new-instance v5, Lorg/thoughtcrime/securesms/mms/StickerSlide;

    iget-object v7, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-direct {v5, v7, p1}, Lorg/thoughtcrime/securesms/mms/StickerSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p2, v0, v5}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setSlide(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;)V

    .line 617
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    new-instance p2, Lorg/thoughtcrime/securesms/ConversationItem$StickerClickListener;

    invoke-direct {p2, p0, v6}, Lorg/thoughtcrime/securesms/ConversationItem$StickerClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lorg/thoughtcrime/securesms/ConversationItem$1;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setThumbnailClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V

    .line 618
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 619
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_2e

    .line 621
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/BorderlessImageView;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->setImportantForAccessibility(I)V

    .line 624
    :cond_2e
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 625
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 627
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {p1, v3}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    goto :goto_0

    .line 630
    :cond_2f
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p1, v5}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setVisibility(I)V

    .line 631
    :cond_30
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {p1, v5}, Lorg/thoughtcrime/securesms/components/AudioView;->setVisibility(I)V

    .line 632
    :cond_31
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {p1, v5}, Lorg/thoughtcrime/securesms/components/DocumentView;->setVisibility(I)V

    .line 633
    :cond_32
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {p1, v5}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setVisibility(I)V

    .line 634
    :cond_33
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {p1, v5}, Lorg/thoughtcrime/securesms/components/VcardView;->setVisibility(I)V

    .line 636
    :cond_34
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 637
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    invoke-static {p1, v4, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->updateLayoutParams(Landroid/view/View;II)V

    .line 638
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {p1, v3}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setMessageShape(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 849
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080196

    goto :goto_0

    :cond_0
    const p1, 0x7f080195

    .line 851
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method private setMessageSpacing(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f070067

    .line 855
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->readDimen(Landroid/content/Context;I)I

    move-result p1

    .line 858
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setPaddingTop(Landroid/view/View;I)V

    .line 859
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setPaddingBottom(Landroid/view/View;I)V

    return-void
.end method

.method private setQuote(Lcom/b44t/messenger/DcMsg;)V
    .locals 9

    .line 688
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    if-eqz v0, :cond_9

    .line 691
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getQuotedText()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_6

    .line 692
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 701
    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getQuotedMsg()Lcom/b44t/messenger/DcMsg;

    move-result-object v3

    .line 705
    new-instance v6, Lorg/thoughtcrime/securesms/mms/SlideDeck;

    invoke-direct {v6}, Lorg/thoughtcrime/securesms/mms/SlideDeck;-><init>()V

    if-eqz v3, :cond_1

    .line 707
    new-instance v1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    .line 708
    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    .line 709
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getSlideForMsg(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 711
    invoke-virtual {v6, v2}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->addSlide(Lorg/thoughtcrime/securesms/mms/Slide;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    move-object v4, v1

    .line 716
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/view/View;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v2

    .line 721
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v7

    const/16 v8, 0x17

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 716
    :goto_1
    invoke-virtual/range {v1 .. v7}, Lorg/thoughtcrime/securesms/components/QuoteView;->setQuote(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/recipients/Recipient;Ljava/lang/CharSequence;Lorg/thoughtcrime/securesms/mms/SlideDeck;Z)V

    .line 723
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 726
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/QuoteView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 736
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    const v0, 0x7f070276

    if-eqz p1, :cond_4

    .line 737
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->readDimen(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTopMargin(Landroid/view/View;I)V

    goto :goto_2

    .line 738
    :cond_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 739
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->readDimen(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTopMargin(Landroid/view/View;I)V

    :cond_5
    :goto_2
    return-void

    .line 693
    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/QuoteView;->dismiss()V

    .line 694
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 695
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTopMargin(Landroid/view/View;I)V

    goto :goto_4

    .line 696
    :cond_7
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 697
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTopMargin(Landroid/view/View;I)V

    :cond_8
    :goto_4
    return-void

    .line 689
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private setReactions(Lcom/b44t/messenger/DcMsg;)V
    .locals 3

    .line 764
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/b44t/messenger/rpc/Rpc;->getMsgReactions(II)Lcom/b44t/messenger/rpc/Reactions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 766
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->reactionsView:Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->clear()V

    goto :goto_0

    .line 768
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->reactionsView:Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;

    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/Reactions;->getReactions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->setReactions(Ljava/util/List;)V

    .line 769
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->reactionsView:Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->reactionsView:Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->clear()V

    :goto_0
    return-void
.end method

.method private setThumbnailOutlineCorners(Lcom/b44t/messenger/DcMsg;Z)V
    .locals 5

    const v0, 0x7f070277

    .line 645
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->readDimen(I)I

    move-result v0

    .line 652
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    move v3, v1

    :goto_0
    if-nez p2, :cond_2

    .line 658
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isForwarded()Z

    move-result p2

    if-nez p2, :cond_2

    .line 659
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->hasQuote(Lcom/b44t/messenger/DcMsg;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 665
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->isLtr(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->isRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    move v2, v3

    .line 673
    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p1, v0, p2, v2, v1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setOutlineCorners(IIII)V

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

    .line 180
    invoke-virtual/range {v0 .. v5}, Lorg/thoughtcrime/securesms/ConversationItem;->bind(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcChat;Ljava/util/Set;ZLorg/thoughtcrime/securesms/recipients/Recipient;)V

    .line 181
    iput-object p4, p0, Lorg/thoughtcrime/securesms/ConversationItem;->locale:Ljava/util/Locale;

    .line 182
    iput-object p3, p0, Lorg/thoughtcrime/securesms/ConversationItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 183
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getOverrideSenderName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->showSender:Z

    if-eqz p2, :cond_3

    .line 186
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcContact:Lcom/b44t/messenger/DcContact;

    .line 189
    :cond_3
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->showSender:Z

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->setGutterSizes(Lcom/b44t/messenger/DcMsg;Z)V

    .line 190
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->setMessageShape(Lcom/b44t/messenger/DcMsg;)V

    .line 191
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->showSender:Z

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->setMediaAttributes(Lcom/b44t/messenger/DcMsg;Z)V

    .line 192
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->setBodyText(Lcom/b44t/messenger/DcMsg;)V

    .line 193
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->setBubbleState(Lcom/b44t/messenger/DcMsg;)V

    .line 194
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationItem;->setContactPhoto()V

    .line 195
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationItem;->setGroupMessageStatus()V

    .line 196
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->showSender:Z

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->setAuthor(Lcom/b44t/messenger/DcMsg;Z)V

    .line 197
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->setMessageSpacing(Landroid/content/Context;)V

    .line 198
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->setReactions(Lcom/b44t/messenger/DcMsg;)V

    .line 199
    invoke-direct {p0, p1, p4}, Lorg/thoughtcrime/securesms/ConversationItem;->setFooter(Lcom/b44t/messenger/DcMsg;Ljava/util/Locale;)V

    .line 200
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->setQuote(Lcom/b44t/messenger/DcMsg;)V

    .line 201
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 202
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationItem;->setContentDescription()V

    :cond_4
    return-void
.end method

.method public disallowSwipe(FF)Z
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->replyView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 219
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->hasAudio(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AudioView;

    sget-object v1, Lorg/thoughtcrime/securesms/ConversationItem;->SWIPE_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AudioView;->getSeekBarGlobalVisibleRect(Landroid/graphics/Rect;)V

    float-to-int p1, p1

    float-to-int p2, p2

    .line 221
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public getMessageRecord()Lcom/b44t/messenger/DcMsg;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    return-object v0
.end method

.method synthetic lambda$setBodyText$0$org-thoughtcrime-securesms-ConversationItem(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;->onDownloadClicked(Lcom/b44t/messenger/DcMsg;)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setBodyText$1$org-thoughtcrime-securesms-ConversationItem(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationItem;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->openWebxdcActivity(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setBodyText$2$org-thoughtcrime-securesms-ConversationItem(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;->onShowFullClicked(Lcom/b44t/messenger/DcMsg;)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setQuote$3$org-thoughtcrime-securesms-ConversationItem(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 1

    .line 727
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;->onQuoteClicked(Lcom/b44t/messenger/DcMsg;)V

    goto :goto_0

    .line 730
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setReactions$4$org-thoughtcrime-securesms-ConversationItem(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 1

    .line 770
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;->onReactionClicked(Lcom/b44t/messenger/DcMsg;)V

    goto :goto_0

    .line 773
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onAccessibilityClick()V
    .locals 1

    .line 883
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->performClick()Z

    goto :goto_0

    .line 884
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AudioView;->togglePlay()V

    goto :goto_0

    .line 885
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/DocumentView;->performClick()Z

    goto :goto_0

    .line 886
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->performClick()Z

    goto :goto_0

    .line 887
    :cond_3
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/VcardView;->performClick()Z

    :cond_4
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 140
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseConversationItem;->onFinishInflate()V

    .line 142
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationItem;->initializeAttributes()V

    const v0, 0x7f0900c3

    .line 144
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    const v0, 0x7f0900c4

    .line 145
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    const v0, 0x7f0902cd

    .line 146
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->reactionsView:Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;

    const v0, 0x7f09016b

    .line 147
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSender:Landroid/widget/TextView;

    const v0, 0x7f0900b5

    .line 148
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AvatarImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->contactPhoto:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const v0, 0x7f0900b6

    .line 149
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->contactPhotoHolder:Landroid/view/ViewGroup;

    const v0, 0x7f090081

    .line 150
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    .line 151
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/Stub;

    const v1, 0x7f090187

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/views/Stub;-><init>(Landroid/view/ViewStub;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    .line 152
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/Stub;

    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/views/Stub;-><init>(Landroid/view/ViewStub;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    .line 153
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/Stub;

    const v1, 0x7f0900f8

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/views/Stub;-><init>(Landroid/view/ViewStub;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    .line 154
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/Stub;

    const v1, 0x7f0903e5

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/views/Stub;-><init>(Landroid/view/ViewStub;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    .line 155
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/Stub;

    const v1, 0x7f09037b

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/views/Stub;-><init>(Landroid/view/ViewStub;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->stickerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    .line 156
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/Stub;

    const v1, 0x7f0903ce

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/views/Stub;-><init>(Landroid/view/ViewStub;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    const v0, 0x7f09016d

    .line 157
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->groupSenderHolder:Landroid/view/View;

    const v0, 0x7f0902c0

    .line 158
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/QuoteView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    const v0, 0x7f0900b9

    .line 159
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->container:Landroid/view/ViewGroup;

    const v0, 0x7f0902da

    .line 160
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->replyView:Landroid/view/View;

    const v0, 0x7f090229

    .line 161
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->msgActionButton:Landroid/widget/Button;

    .line 163
    new-instance v0, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/BaseConversationItem$ClickListener;-><init>(Lorg/thoughtcrime/securesms/BaseConversationItem;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/BaseConversationItem$PassthroughClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 226
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationItem;->onMeasure(II)V

    .line 228
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationItem;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationItem;->hasQuote(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getMeasuredWidth()I

    move-result v0

    .line 239
    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-direct {p0, v3}, Lorg/thoughtcrime/securesms/ConversationItem;->getAvailableMessageBubbleWidth(Landroid/view/View;)I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 242
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 248
    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->measureCalls:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    add-int/2addr v0, v1

    .line 249
    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->measureCalls:I

    .line 250
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->measure(II)V

    goto :goto_1

    .line 252
    :cond_3
    sget-object p1, Lorg/thoughtcrime/securesms/ConversationItem;->TAG:Ljava/lang/String;

    const-string p2, "Hit measure() cap of 3"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 255
    :cond_4
    iput v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->measureCalls:I

    :goto_1
    return-void
.end method

.method public setEventListener(Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->eventListener:Lorg/thoughtcrime/securesms/BindableConversationItem$EventListener;

    return-void
.end method

.method protected setInteractionState(Lcom/b44t/messenger/DcMsg;Z)V
    .locals 3

    .line 291
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/BaseConversationItem;->setInteractionState(Lcom/b44t/messenger/DcMsg;Z)V

    .line 293
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 294
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->shouldInterceptClicks(Lcom/b44t/messenger/DcMsg;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setFocusable(Z)V

    .line 295
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->shouldInterceptClicks(Lcom/b44t/messenger/DcMsg;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setClickable(Z)V

    .line 296
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->mediaThumbnailStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setLongClickable(Z)V

    .line 299
    :cond_2
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 300
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->audioViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/AudioView;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/AudioView;->disablePlayer(Z)V

    .line 303
    :cond_3
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 304
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->shouldInterceptClicks(Lcom/b44t/messenger/DcMsg;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/DocumentView;->setFocusable(Z)V

    .line 305
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->documentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/DocumentView;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/DocumentView;->setClickable(Z)V

    .line 308
    :cond_5
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 309
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->shouldInterceptClicks(Lcom/b44t/messenger/DcMsg;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setFocusable(Z)V

    .line 310
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->webxdcViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/WebxdcView;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setClickable(Z)V

    .line 313
    :cond_7
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 314
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem;->shouldInterceptClicks(Lcom/b44t/messenger/DcMsg;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/components/VcardView;->setFocusable(Z)V

    .line 315
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->vcardViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/VcardView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/VcardView;->setClickable(Z)V

    :cond_9
    return-void
.end method

.method public unbind()V
    .locals 0

    return-void
.end method
