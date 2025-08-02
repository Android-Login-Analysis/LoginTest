.class final Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;
.super Ljava/lang/Object;
.source "AlphaAnimation.java"


# static fields
.field static final NULL_1:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

.field private static final interpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private animatedFraction:F

.field private final canAnimate:Z

.field private final from:F

.field private final invalidate:Ljava/lang/Runnable;

.field private final to:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->interpolator:Landroid/view/animation/Interpolator;

    .line 12
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;-><init>(F)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->NULL_1:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    return-void
.end method

.method private constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;-><init>(FFLjava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>(FFLjava/lang/Runnable;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->from:F

    .line 22
    iput p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->to:F

    .line 23
    iput-object p3, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->invalidate:Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->canAnimate:Z

    return-void
.end method

.method static animate(FFLjava/lang/Runnable;)Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;
    .locals 1

    if-nez p2, :cond_0

    .line 33
    new-instance p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;-><init>(F)V

    return-object p0

    :cond_0
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    invoke-direct {v0, p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;-><init>(FFLjava/lang/Runnable;)V

    .line 38
    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->start()V

    return-object v0

    .line 41
    :cond_1
    new-instance p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;-><init>(F)V

    return-object p0
.end method

.method private start()V
    .locals 3

    .line 46
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->canAnimate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->invalidate:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 47
    iget v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->from:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->to:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method getValue()F
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->canAnimate:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->to:F

    return v0

    .line 61
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->animatedFraction:F

    return v0
.end method

.method synthetic lambda$start$0$org-thoughtcrime-securesms-imageeditor-model-AlphaAnimation(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->animatedFraction:F

    .line 52
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->invalidate:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
