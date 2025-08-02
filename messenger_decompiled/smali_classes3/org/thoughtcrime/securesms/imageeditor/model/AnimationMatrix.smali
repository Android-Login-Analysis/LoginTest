.class final Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;
.super Ljava/lang/Object;
.source "AnimationMatrix.java"


# static fields
.field static final NULL:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

.field private static final iValues:[F

.field private static final interpolator:Landroid/view/animation/Interpolator;

.field private static final pulseInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private animatedFraction:F

.field private animator:Landroid/animation/ValueAnimator;

.field private final canAnimate:Z

.field private final invalidate:Ljava/lang/Runnable;

.field private final temp:Landroid/graphics/Matrix;

.field private final tempValues:[F

.field private final undoValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 18
    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->iValues:[F

    .line 19
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->interpolator:Landroid/view/animation/Interpolator;

    .line 20
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->inverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    sput-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->pulseInterpolator:Landroid/view/animation/Interpolator;

    .line 22
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;-><init>()V

    sput-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->NULL:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    .line 25
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 30
    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->undoValues:[F

    .line 32
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->temp:Landroid/graphics/Matrix;

    new-array v0, v0, [F

    .line 33
    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->tempValues:[F

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->canAnimate:Z

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->invalidate:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 30
    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->undoValues:[F

    .line 32
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->temp:Landroid/graphics/Matrix;

    new-array v0, v0, [F

    .line 33
    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->tempValues:[F

    .line 39
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->invalidate:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->canAnimate:Z

    .line 41
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method

.method static animate(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;
    .locals 1

    if-nez p2, :cond_0

    .line 51
    sget-object p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->NULL:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    return-object p0

    .line 54
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-nez p0, :cond_2

    .line 60
    new-instance p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    invoke-direct {p0, v0, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;-><init>(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    .line 61
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->start(Landroid/view/animation/Interpolator;)V

    return-object p0

    .line 64
    :cond_2
    sget-object p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->NULL:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    return-object p0
.end method

.method private buildTemp()Landroid/graphics/Matrix;
    .locals 6

    .line 119
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->canAnimate:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->temp:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 121
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->temp:Landroid/graphics/Matrix;

    return-object v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 124
    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animatedFraction:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 126
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->tempValues:[F

    sget-object v3, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->iValues:[F

    aget v3, v3, v1

    mul-float v3, v3, v0

    iget v4, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animatedFraction:F

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->undoValues:[F

    aget v5, v5, v1

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->temp:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->tempValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 130
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->temp:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private static inverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 1

    .line 134
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix$$ExternalSyntheticLambda1;-><init>(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method static synthetic lambda$inverse$1(Landroid/view/animation/Interpolator;F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 134
    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method static singlePulse(Landroid/graphics/Matrix;Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;
    .locals 1

    if-nez p1, :cond_0

    .line 73
    sget-object p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->NULL:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;-><init>(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    .line 77
    sget-object p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->pulseInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->start(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private start(Landroid/view/animation/Interpolator;)V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->canAnimate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 84
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method synthetic lambda$start$0$org-thoughtcrime-securesms-imageeditor-model-AnimationMatrix(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 88
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animatedFraction:F

    .line 89
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->invalidate:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method preConcatValueTo(Landroid/graphics/Matrix;)V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->canAnimate:Z

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->buildTemp()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method preConcatValueTo(Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->canAnimate:Z

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->buildTemp()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method stop()V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
