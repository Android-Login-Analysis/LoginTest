.class final Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;
.super Ljava/lang/Object;
.source "ConversationSwipeAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;,
        Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;
    }
.end annotation


# static fields
.field private static final AVATAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final BUBBLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final MAX_DX:F

.field private static final REPLY_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final REPLY_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final REPLY_SCALE_MAX:F = 1.2f

.field private static final REPLY_SCALE_MIN:F = 1.0f

.field private static final REPLY_SCALE_OVERSHOOT:F = 1.8f

.field private static final REPLY_SCALE_OVERSHOOT_DURATION:J = 0xc8L

.field private static final REPLY_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final TRIGGER_DX:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x40

    .line 15
    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->dpToPx(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->TRIGGER_DX:F

    const/16 v1, 0x60

    .line 16
    invoke-static {v1}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->MAX_DX:F

    .line 23
    new-instance v2, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0, v1, v3}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;-><init>(FFFLorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$1;)V

    sput-object v2, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->BUBBLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v1, v1}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;-><init>(FFF)V

    sput-object v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->REPLY_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 25
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;-><init>(FF)V

    sput-object v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->REPLY_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 26
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;-><init>(FF)V

    sput-object v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->AVATAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 27
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;-><init>(FF)V

    sput-object v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->REPLY_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dpToPx(I)I
    .locals 1

    int-to-float p0, p0

    .line 86
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method static synthetic lambda$triggerReplyIcon$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 80
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static trigger(Lorg/thoughtcrime/securesms/ConversationItem;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->replyView:Landroid/view/View;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->triggerReplyIcon(Landroid/view/View;)V

    return-void
.end method

.method private static triggerReplyIcon(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 76
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    new-instance v1, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fe66666    # 1.8f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method public static update(Lorg/thoughtcrime/securesms/ConversationItem;FF)V
    .locals 2

    .line 33
    sget v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->TRIGGER_DX:F

    div-float v0, p1, v0

    .line 35
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->bodyBubble:Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->updateBodyBubbleTransition(Landroid/view/View;FF)V

    .line 36
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->reactionsView:Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;

    invoke-static {v1, p1, p2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->updateReactionsTransition(Landroid/view/View;FF)V

    .line 37
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItem;->replyView:Landroid/view/View;

    invoke-static {v1, p1, v0, p2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->updateReplyIconTransition(Landroid/view/View;FFF)V

    .line 38
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationItem;->contactPhotoHolder:Landroid/view/ViewGroup;

    invoke-static {p0, v0, p2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->updateContactPhotoHolderTransition(Landroid/view/View;FF)V

    return-void
.end method

.method private static updateBodyBubbleTransition(Landroid/view/View;FF)V
    .locals 1

    .line 46
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->BUBBLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static updateContactPhotoHolderTransition(Landroid/view/View;FF)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 72
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->AVATAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static updateReactionsTransition(Landroid/view/View;FF)V
    .locals 1

    .line 50
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->BUBBLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static updateReplyIconTransition(Landroid/view/View;FFF)V
    .locals 1

    const v0, 0x3d4ccccd    # 0.05f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 55
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->REPLY_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 58
    :goto_0
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->REPLY_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, p3

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 60
    sget p3, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->TRIGGER_DX:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_1

    .line 61
    sget-object p1, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->REPLY_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {p1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method
