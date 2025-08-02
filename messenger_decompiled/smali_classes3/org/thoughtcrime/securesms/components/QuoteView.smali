.class public Lorg/thoughtcrime/securesms/components/QuoteView;
.super Landroid/widget/FrameLayout;
.source "QuoteView.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/recipients/RecipientForeverObserver;


# static fields
.field private static final MESSAGE_TYPE_PREVIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QuoteView"


# instance fields
.field private attachmentContainerView:Landroid/view/ViewGroup;

.field private attachmentVideoOverlayView:Landroid/view/View;

.field private attachments:Lorg/thoughtcrime/securesms/mms/SlideDeck;

.field private author:Lcom/b44t/messenger/DcContact;

.field private authorView:Landroid/widget/TextView;

.field private body:Ljava/lang/CharSequence;

.field private bodyView:Landroid/widget/TextView;

.field private dismissView:Landroid/widget/ImageView;

.field private hasSticker:Z

.field private mainView:Landroid/view/ViewGroup;

.field private messageType:I

.field private quoteBarView:Landroid/widget/ImageView;

.field private quotedMsg:Lcom/b44t/messenger/DcMsg;

.field private thumbnailView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/QuoteView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/QuoteView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/QuoteView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/QuoteView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getForwardedColor()I
    .locals 2

    .line 276
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->hasSticker:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06003b

    goto :goto_0

    :cond_0
    const v1, 0x7f060360

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00ee

    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0902bc

    .line 90
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->mainView:Landroid/view/ViewGroup;

    const v0, 0x7f0902b8

    .line 91
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    const v0, 0x7f0902bd

    .line 92
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->bodyView:Landroid/widget/TextView;

    const v0, 0x7f0902b9

    .line 93
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quoteBarView:Landroid/widget/ImageView;

    const v0, 0x7f0902be

    .line 94
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    const v0, 0x7f0902bf

    .line 95
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachmentVideoOverlayView:Landroid/view/View;

    const v0, 0x7f0902b6

    .line 96
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachmentContainerView:Landroid/view/ViewGroup;

    const v0, 0x7f0902bb

    .line 97
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->dismissView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lorg/thoughtcrime/securesms/R$styleable;->QuoteView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->messageType:I

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->dismissView:Landroid/widget/ImageView;

    iget v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->messageType:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->messageType:I

    if-nez p1, :cond_1

    .line 106
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->bodyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_1

    .line 108
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->bodyView:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 112
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->dismissView:Landroid/widget/ImageView;

    new-instance v0, Lorg/thoughtcrime/securesms/components/QuoteView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/QuoteView$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/components/QuoteView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$setQuoteAttachment$1(Lorg/thoughtcrime/securesms/mms/Slide;)Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasImage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasSticker()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->isWebxdcDocument()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->isVcard()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$setQuoteAttachment$2(Lorg/thoughtcrime/securesms/mms/Slide;)Z
    .locals 0

    .line 193
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasAudio()Z

    move-result p0

    return p0
.end method

.method private setQuoteAttachment(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/SlideDeck;)V
    .locals 6

    .line 192
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->getSlides()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/components/QuoteView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/components/QuoteView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/annimon/stream/Stream;->limit(J)Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->getSlides()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p2

    new-instance v3, Lorg/thoughtcrime/securesms/components/QuoteView$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/thoughtcrime/securesms/components/QuoteView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, v3}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Lcom/annimon/stream/Stream;->limit(J)Lcom/annimon/stream/Stream;

    move-result-object p2

    invoke-virtual {p2}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    .line 194
    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachments:Lorg/thoughtcrime/securesms/mms/SlideDeck;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->getSlides()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/thoughtcrime/securesms/components/QuoteView$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/thoughtcrime/securesms/components/QuoteView$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v4}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/annimon/stream/Stream;->limit(J)Lcom/annimon/stream/Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachmentVideoOverlayView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 199
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachmentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 201
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->dismissView:Landroid/widget/ImageView;

    const v1, 0x7f0800af

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->isWebxdcDocument()Z

    move-result p2

    const v1, 0x7f07035d

    if-eqz p2, :cond_0

    .line 205
    :try_start_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getWebxdcInfo()Lorg/json/JSONObject;

    move-result-object p2

    .line 206
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    const-string v2, "icon"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcMsg;->getWebxdcBlob(Ljava/lang/String;)[B

    move-result-object p2

    .line 207
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load([B)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->centerCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 209
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->override(I)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 210
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    .line 211
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 213
    sget-object p2, Lorg/thoughtcrime/securesms/components/QuoteView;->TAG:Ljava/lang/String;

    const-string v0, "failed to get webxdc icon"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 216
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->isVcard()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 218
    :try_start_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object p2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/b44t/messenger/rpc/Rpc;->parseVcard(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/b44t/messenger/rpc/VcardContact;

    .line 219
    new-instance v0, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/rpc/VcardContact;)V

    .line 220
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getContactPhoto(Landroid/content/Context;)Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 221
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2, v4}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getFallbackAvatarDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->error(Landroid/graphics/drawable/Drawable;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->centerCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->override(I)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 224
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    .line 225
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_1
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 227
    sget-object p2, Lorg/thoughtcrime/securesms/components/QuoteView;->TAG:Ljava/lang/String;

    const-string v0, "failed to parse vCard"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 231
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object p2

    .line 232
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/mms/Slide;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachmentVideoOverlayView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/mms/Slide;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {p2, v2, v3, v5}, Lorg/thoughtcrime/securesms/util/MediaUtil;->createVideoThumbnailIfNeeded(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;)Z

    .line 235
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getThumbnailUri()Landroid/net/Uri;

    move-result-object p2

    .line 237
    :cond_2
    new-instance v0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;

    invoke-direct {v0, p2}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->centerCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 239
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->override(I)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 240
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    .line 241
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 243
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 244
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachmentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 247
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachmentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_5
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachmentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 255
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->dismissView:Landroid/widget/ImageView;

    const p2, 0x7f08008c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_6
    return-void
.end method

.method private setQuoteAuthor(Lorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 5

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quoteBarView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getForwardedColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->isForwarded()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 157
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120171

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v4, p1, v3}, Lcom/b44t/messenger/DcMsg;->getSenderName(Lcom/b44t/messenger/DcContact;Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const p1, 0x7f120170

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getForwardedColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quoteBarView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getForwardedColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object p1

    if-nez p1, :cond_3

    .line 166
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quoteBarView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getForwardedColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_1

    .line 169
    :cond_3
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v1, p1, v2}, Lcom/b44t/messenger/DcMsg;->getSenderName(Lcom/b44t/messenger/DcContact;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->hasSticker:Z

    if-eqz v0, :cond_4

    .line 172
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quoteBarView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_1

    .line 175
    :cond_4
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->authorView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getColor()I

    move-result v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->rgbToArgbColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quoteBarView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getColor()I

    move-result p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->rgbToArgbColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method

.method private setQuoteText(Ljava/lang/CharSequence;Lorg/thoughtcrime/securesms/mms/SlideDeck;)V
    .locals 1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->containsMediaSlide()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->bodyView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 184
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->bodyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->bodyView:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->author:Lcom/b44t/messenger/DcContact;

    .line 139
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->body:Ljava/lang/CharSequence;

    const/16 v0, 0x8

    .line 141
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->setVisibility(I)V

    return-void
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/attachments/Attachment;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachments:Lorg/thoughtcrime/securesms/mms/SlideDeck;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->asAttachments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->body:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDcContact()Lcom/b44t/messenger/DcContact;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->author:Lcom/b44t/messenger/DcContact;

    return-object v0
.end method

.method public getOriginalMsg()Lcom/b44t/messenger/DcMsg;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    return-object v0
.end method

.method synthetic lambda$initialize$0$org-thoughtcrime-securesms-components-QuoteView(Landroid/view/View;)V
    .locals 0

    .line 0
    const/16 p1, 0x8

    .line 112
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/QuoteView;->setVisibility(I)V

    return-void
.end method

.method public onRecipientChanged(Lorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/QuoteView;->setQuoteAuthor(Lorg/thoughtcrime/securesms/recipients/Recipient;)V

    return-void
.end method

.method public setQuote(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/recipients/Recipient;Ljava/lang/CharSequence;Lorg/thoughtcrime/securesms/mms/SlideDeck;Z)V
    .locals 1

    .line 122
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    if-eqz p3, :cond_0

    .line 123
    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->author:Lcom/b44t/messenger/DcContact;

    .line 124
    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->body:Ljava/lang/CharSequence;

    .line 125
    iput-object p5, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->attachments:Lorg/thoughtcrime/securesms/mms/SlideDeck;

    .line 126
    iput-boolean p6, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->hasSticker:Z

    if-eqz p6, :cond_1

    const p2, 0x7f08009f

    .line 129
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/components/QuoteView;->setBackgroundResource(I)V

    .line 130
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/QuoteView;->bodyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const v0, 0x7f06003b

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :cond_1
    invoke-direct {p0, p3}, Lorg/thoughtcrime/securesms/components/QuoteView;->setQuoteAuthor(Lorg/thoughtcrime/securesms/recipients/Recipient;)V

    .line 133
    invoke-direct {p0, p4, p5}, Lorg/thoughtcrime/securesms/components/QuoteView;->setQuoteText(Ljava/lang/CharSequence;Lorg/thoughtcrime/securesms/mms/SlideDeck;)V

    .line 134
    invoke-direct {p0, p1, p5}, Lorg/thoughtcrime/securesms/components/QuoteView;->setQuoteAttachment(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/SlideDeck;)V

    return-void
.end method
