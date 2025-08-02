.class public Lorg/thoughtcrime/securesms/components/DeliveryStatusView;
.super Ljava/lang/Object;
.source "DeliveryStatusView.java"


# static fields
.field private static prepareAnimation:Landroid/view/animation/RotateAnimation;

.field private static sendingAnimation:Landroid/view/animation/RotateAnimation;


# instance fields
.field private animated:Z

.field private final context:Landroid/content/Context;

.field private final deliveryIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->context:Landroid/content/Context;

    return-void
.end method

.method private animatePrepare()V
    .locals 8

    .line 28
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/AccessibilityUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->prepareAnimation:Landroid/view/animation/RotateAnimation;

    if-nez v0, :cond_1

    .line 31
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->prepareAnimation:Landroid/view/animation/RotateAnimation;

    .line 34
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 35
    sget-object v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->prepareAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 36
    sget-object v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->prepareAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 39
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    sget-object v1, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->prepareAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->animated:Z

    return-void
.end method

.method private animateSending()V
    .locals 8

    .line 45
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/AccessibilityUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->sendingAnimation:Landroid/view/animation/RotateAnimation;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->sendingAnimation:Landroid/view/animation/RotateAnimation;

    .line 51
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 52
    sget-object v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->sendingAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 53
    sget-object v0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->sendingAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    sget-object v1, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->sendingAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->animated:Z

    return-void
.end method

.method private clearAnimation()V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->animated:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->animated:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public resetTint()V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDownloading()V
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f080104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->context:Landroid/content/Context;

    const v2, 0x7f1202dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->animatePrepare()V

    return-void
.end method

.method public setFailed()V
    .locals 3

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->context:Landroid/content/Context;

    const v2, 0x7f120015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->clearAnimation()V

    return-void
.end method

.method public setNone()V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public setPending()V
    .locals 3

    .line 88
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f080104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->context:Landroid/content/Context;

    const v2, 0x7f120017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->animateSending()V

    return-void
.end method

.method public setPreparing()V
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f080104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->context:Landroid/content/Context;

    const v2, 0x7f120017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->animatePrepare()V

    return-void
.end method

.method public setRead()V
    .locals 3

    .line 102
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->context:Landroid/content/Context;

    const v2, 0x7f120016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->clearAnimation()V

    return-void
.end method

.method public setSent()V
    .locals 3

    .line 95
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f080105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->context:Landroid/content/Context;

    const v2, 0x7f120012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->clearAnimation()V

    return-void
.end method

.method public setTint(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->deliveryIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/DeliveryStatusView;->resetTint()V

    :goto_0
    return-void
.end method
