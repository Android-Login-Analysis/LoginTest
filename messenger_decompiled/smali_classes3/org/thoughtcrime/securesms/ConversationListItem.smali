.class public Lorg/thoughtcrime/securesms/ConversationListItem;
.super Landroid/widget/RelativeLayout;
.source "ConversationListItem.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/BindableConversationListItem;
.implements Lorg/thoughtcrime/securesms/Unbindable;


# static fields
.field private static final BOLD_TYPEFACE:Landroid/graphics/Typeface;

.field private static final LIGHT_TYPEFACE:Landroid/graphics/Typeface;


# instance fields
.field private archivedBadgeView:Landroid/widget/TextView;

.field private avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

.field private chatId:J

.field private dateView:Landroid/widget/TextView;

.field private dcSummary:Lcom/b44t/messenger/DcLot;

.field private deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

.field private fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

.field private glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private msgId:I

.field private requestBadgeView:Landroid/widget/TextView;

.field private selectedThreads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private subjectView:Landroid/widget/TextView;

.field private unreadIndicator:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/ConversationListItem;->BOLD_TYPEFACE:Landroid/graphics/Typeface;

    const-string v0, "sans-serif"

    .line 65
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/ConversationListItem;->LIGHT_TYPEFACE:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getHighlightedSpan(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 4

    .line 318
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance p1, Landroid/text/SpannableString;

    const-string p2, ""

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_0
    const-string v0, "\n"

    const-string v1, " "

    .line 322
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 324
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 328
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object p1

    new-instance p3, Lorg/thoughtcrime/securesms/ConversationListItem$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lorg/thoughtcrime/securesms/ConversationListItem$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p3}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    .line 332
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    invoke-interface {p3}, Landroid/text/Spannable;->length()I

    move-result v2

    if-lt p2, v2, :cond_3

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 343
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {p3}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 344
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v3, 0x11

    invoke-interface {p3, v1, v2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    :goto_1
    return-object p3
.end method

.method static synthetic lambda$getHighlightedSpan$0(Ljava/lang/String;)Z
    .locals 0

    .line 330
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBatchState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->selectedThreads:Ljava/util/Set;

    iget-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListItem;->setSelected(Z)V

    return-void
.end method

.method private setBgColor(Lorg/thoughtcrime/securesms/database/model/ThreadRecord;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getVisibility()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f040432

    goto :goto_0

    :cond_0
    const p1, 0x7f04018b

    .line 309
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 311
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setStatusIcons(IIIZZ)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v0, :cond_1

    .line 253
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->archivedBadgeView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->requestBadgeView:Landroid/widget/TextView;

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setNone()V

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    .line 258
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->requestBadgeView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->archivedBadgeView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setNone()V

    goto :goto_2

    .line 264
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->requestBadgeView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->archivedBadgeView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne p2, v1, :cond_3

    .line 268
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setFailed()V

    goto :goto_1

    :cond_3
    const/16 p1, 0x1c

    if-ne p2, p1, :cond_4

    .line 270
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setRead()V

    goto :goto_1

    :cond_4
    const/16 p1, 0x1a

    if-ne p2, p1, :cond_5

    .line 272
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setSent()V

    goto :goto_1

    :cond_5
    const/16 p1, 0x12

    if-ne p2, p1, :cond_6

    .line 274
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setPreparing()V

    goto :goto_1

    :cond_6
    const/16 p1, 0x14

    if-ne p2, p1, :cond_7

    .line 276
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setPending()V

    goto :goto_1

    .line 278
    :cond_7
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setNone()V

    :goto_1
    if-ne p2, v1, :cond_8

    .line 282
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    const/high16 p2, -0x10000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setTint(Ljava/lang/Integer;)V

    goto :goto_2

    .line 284
    :cond_8
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->resetTint()V

    :goto_2
    if-eqz p3, :cond_c

    if-eqz p4, :cond_9

    goto :goto_4

    .line 291
    :cond_9
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p5, :cond_b

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->isDarkTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_a

    const p2, 0x7f060363

    goto :goto_3

    :cond_a
    const p2, 0x7f060362

    goto :goto_3

    :cond_b
    const p2, 0x7f060361

    :goto_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 292
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->unreadIndicator:Landroid/widget/ImageView;

    invoke-static {}, Lcom/amulyakhare/textdrawable/TextDrawable;->builder()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p4

    .line 293
    invoke-interface {p4}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object p4

    .line 294
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p5

    invoke-interface {p4, p5}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->width(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object p4

    .line 295
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p5

    invoke-interface {p4, p5}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->height(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object p4

    const/4 p5, -0x1

    .line 296
    invoke-interface {p4, p5}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->textColor(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object p4

    .line 297
    invoke-interface {p4}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->bold()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object p4

    .line 298
    invoke-interface {p4}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p4

    .line 299
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3, p1}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object p1

    .line 292
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->unreadIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 289
    :cond_c
    :goto_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->unreadIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method public bind(Lcom/b44t/messenger/DcContact;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 4

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->selectedThreads:Ljava/util/Set;

    .line 183
    new-instance v0, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    .line 184
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 186
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v2, p4}, Lorg/thoughtcrime/securesms/ConversationListItem;->getHighlightedSpan(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/components/FromTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Lorg/thoughtcrime/securesms/components/FromTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 188
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->subjectView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3, v3, p4}, Lorg/thoughtcrime/securesms/ConversationListItem;->getHighlightedSpan(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->dateView:Landroid/widget/TextView;

    const-string p4, ""

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->dateView:Landroid/widget/TextView;

    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 191
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->archivedBadgeView:Landroid/widget/TextView;

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->requestBadgeView:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->unreadIndicator:Landroid/widget/ImageView;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setNone()V

    .line 196
    invoke-direct {p0, v2}, Lorg/thoughtcrime/securesms/ConversationListItem;->setBatchState(Z)V

    .line 197
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {p3, p2, v0, v2}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 198
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->wasSeenRecently()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/components/AvatarView;->setSeenRecently(Z)V

    return-void
.end method

.method public bind(Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 7

    .line 206
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->selectedThreads:Ljava/util/Set;

    .line 209
    new-instance v1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    .line 210
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 212
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/FromTextView;->setText(Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 213
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Lorg/thoughtcrime/securesms/components/FromTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 214
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->subjectView:Landroid/widget/TextView;

    const/16 v3, 0x200

    invoke-virtual {p1, v3}, Lcom/b44t/messenger/DcMsg;->getSummarytext(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3, v3, p4}, Lorg/thoughtcrime/securesms/ConversationListItem;->getHighlightedSpan(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p4, v3, v5

    if-lez p4, :cond_0

    .line 218
    iget-object p4, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->dateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getTimestamp()J

    move-result-wide v3

    invoke-static {v0, p3, v3, v4}, Lorg/thoughtcrime/securesms/util/DateUtils;->getBriefRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Locale;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->dateView:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->dateView:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 224
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->archivedBadgeView:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->requestBadgeView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->unreadIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->setNone()V

    .line 229
    invoke-direct {p0, v2}, Lorg/thoughtcrime/securesms/ConversationListItem;->setBatchState(Z)V

    .line 230
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {p1, p2, v1, v2}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 231
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/components/AvatarView;->setSeenRecently(Z)V

    return-void
.end method

.method public bind(Lorg/thoughtcrime/securesms/database/model/ThreadRecord;ILcom/b44t/messenger/DcLot;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/database/model/ThreadRecord;",
            "I",
            "Lcom/b44t/messenger/DcLot;",
            "Lorg/thoughtcrime/securesms/mms/GlideRequests;",
            "Ljava/util/Locale;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 115
    invoke-virtual/range {v0 .. v8}, Lorg/thoughtcrime/securesms/ConversationListItem;->bind(Lorg/thoughtcrime/securesms/database/model/ThreadRecord;ILcom/b44t/messenger/DcLot;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;ZLjava/lang/String;)V

    return-void
.end method

.method public bind(Lorg/thoughtcrime/securesms/database/model/ThreadRecord;ILcom/b44t/messenger/DcLot;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;ZLjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/database/model/ThreadRecord;",
            "I",
            "Lcom/b44t/messenger/DcLot;",
            "Lorg/thoughtcrime/securesms/mms/GlideRequests;",
            "Ljava/util/Locale;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p4

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    .line 127
    iput-object v1, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->dcSummary:Lcom/b44t/messenger/DcLot;

    move-object/from16 v3, p6

    .line 128
    iput-object v3, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->selectedThreads:Ljava/util/Set;

    .line 129
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getRecipient()Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object v8

    .line 130
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getThreadId()J

    move-result-wide v3

    iput-wide v3, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->chatId:J

    move/from16 v3, p2

    .line 131
    iput v3, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->msgId:I

    .line 132
    iput-object v7, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 134
    invoke-virtual/range {p3 .. p3}, Lcom/b44t/messenger/DcLot;->getState()I

    move-result v3

    .line 135
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getUnreadCount()I

    move-result v4

    const/4 v1, 0x1

    const/16 v5, 0xa

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 138
    iget-object v10, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

    invoke-virtual {v8}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v0, v11, v2}, Lorg/thoughtcrime/securesms/ConversationListItem;->getHighlightedSpan(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/thoughtcrime/securesms/components/FromTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 140
    :cond_0
    iget-object v2, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

    if-eq v3, v5, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v2, v8, v10}, Lorg/thoughtcrime/securesms/components/FromTextView;->setText(Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 143
    :goto_1
    iget-object v2, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->subjectView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getDisplayBody()Landroid/text/SpannableString;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->subjectView:Landroid/widget/TextView;

    if-ne v3, v5, :cond_2

    sget-object v10, Lorg/thoughtcrime/securesms/ConversationListItem;->BOLD_TYPEFACE:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_2
    sget-object v10, Lorg/thoughtcrime/securesms/ConversationListItem;->LIGHT_TYPEFACE:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    iget-object v2, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->subjectView:Landroid/widget/TextView;

    if-ne v3, v5, :cond_3

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    const v10, 0x7f040191

    invoke-static {v5, v10}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v5

    goto :goto_3

    .line 146
    :cond_3
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    const v10, 0x7f040190

    invoke-static {v5, v10}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v5

    .line 145
    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getDate()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_4

    .line 149
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getDate()J

    move-result-wide v10

    invoke-static {v2, v0, v10, v11}, Lorg/thoughtcrime/securesms/util/DateUtils;->getBriefRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Locale;J)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v2, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->dateView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 153
    :cond_4
    iget-object v0, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->dateView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_4
    iget-object v0, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->dateView:Landroid/widget/TextView;

    .line 157
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isSendingLocations()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f080131

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 158
    :goto_5
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getVisibility()I

    move-result v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_6

    const v5, 0x7f080150

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    .line 156
    :goto_6
    invoke-virtual {v0, v2, v9, v5, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 161
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getVisibility()I

    move-result v2

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isContactRequest()Z

    move-result v5

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isMuted()Z

    move-result v0

    if-nez v0, :cond_8

    iget-wide v10, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->chatId:J

    const-wide/16 v12, 0x6

    cmp-long v0, v10, v12

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v10, 0x1

    :goto_8
    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/ConversationListItem;->setStatusIcons(IIIZZ)V

    move/from16 v0, p7

    .line 162
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->setBatchState(Z)V

    .line 163
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListItem;->setBgColor(Lorg/thoughtcrime/securesms/database/model/ThreadRecord;)V

    .line 165
    iget-object v0, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    invoke-virtual {v0, v7, v8, v9}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 167
    invoke-virtual {v8}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 168
    iget-object v1, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->wasSeenRecently()Z

    move-result v0

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/components/AvatarView;->setSeenRecently(Z)V

    .line 170
    iget-object v0, v6, Lorg/thoughtcrime/securesms/ConversationListItem;->fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

    .line 171
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f08016f

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    .line 173
    :goto_a
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isProtected()Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f08016c

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    .line 170
    :goto_b
    invoke-virtual {v0, v1, v9, v2, v9}, Lorg/thoughtcrime/securesms/components/FromTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public getChatId()J
    .locals 2

    .line 243
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->chatId:J

    return-wide v0
.end method

.method public getMsgId()I
    .locals 1

    .line 247
    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->msgId:I

    return v0
.end method

.method public hideItemDivider()V
    .locals 2

    const v0, 0x7f09019e

    .line 353
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090380

    .line 93
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->subjectView:Landroid/widget/TextView;

    const v0, 0x7f09015e

    .line 94
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/FromTextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

    const v0, 0x7f0900d5

    .line 95
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->dateView:Landroid/widget/TextView;

    .line 96
    new-instance v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    const v1, 0x7f0900de

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->deliveryStatusIndicator:Lorg/thoughtcrime/securesms/components/DeliveryStatusView;

    const v0, 0x7f090074

    .line 97
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AvatarView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    const v0, 0x7f09005f

    .line 98
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->archivedBadgeView:Landroid/widget/TextView;

    const v0, 0x7f0902dd

    .line 99
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->requestBadgeView:Landroid/widget/TextView;

    const v0, 0x7f0903c7

    .line 100
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->unreadIndicator:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->fromView:Lorg/thoughtcrime/securesms/components/FromTextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTextViewGravityStart(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListItem;->subjectView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTextViewGravityStart(Landroid/widget/TextView;Landroid/content/Context;)V

    return-void
.end method

.method public unbind()V
    .locals 0

    return-void
.end method
