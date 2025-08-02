.class public final Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;
.super Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;
.source "MultiLineTextRenderer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:I

.field private cursorAnimatedValue:F

.field private cursorAnimator:Landroid/animation/ValueAnimator;

.field private hasFocus:Z

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final recommendedEditorMatrix:Landroid/graphics/Matrix;

.field private selEnd:I

.field private selStart:I

.field private final selectionPaint:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field private final textScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 363
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .line 54
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->text:Ljava/lang/String;

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->paint:Landroid/graphics/Paint;

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->selectionPaint:Landroid/graphics/Paint;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    .line 52
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->recommendedEditorMatrix:Landroid/graphics/Matrix;

    .line 55
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->setColor(I)V

    .line 56
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v4, 0x42c80000    # 100.0f

    .line 58
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 60
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    div-float/2addr v1, p2

    iput v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->textScale:F

    .line 61
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->setText(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->createLinesForText()V

    return-void
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)F
    .locals 0

    .line 30
    iget p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->textScale:F

    return p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->hasFocus:Z

    return p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)F
    .locals 0

    .line 30
    iget p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->cursorAnimatedValue:F

    return p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->selectionPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private createLinesForText()V
    .locals 6

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->text:Ljava/lang/String;

    const-string v1, "\n"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 122
    array-length v1, v0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 123
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 124
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->setText(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    .line 128
    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 129
    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    new-instance v5, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;

    invoke-direct {v5, p0, v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;-><init>(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    :cond_1
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->selStart:I

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->selEnd:I

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->setSelection(II)V

    return-void
.end method

.method static synthetic lambda$pulseInterpolator$1(F)F
    .locals 2

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    const/high16 v1, 0x40800000    # 4.0f

    sub-float p0, v1, p0

    :cond_0
    const/4 v1, 0x0

    .line 392
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static pulseInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 387
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyRecommendedEditorMatrix(Landroid/graphics/Matrix;)V
    .locals 6

    .line 94
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->recommendedEditorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 97
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;

    .line 98
    invoke-static {v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->access$000(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_0

    .line 99
    invoke-static {v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->access$000(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)F

    move-result v1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;

    .line 105
    invoke-static {v4}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->access$100(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 108
    :cond_2
    invoke-static {v4}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->access$200(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_1

    .line 112
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->recommendedEditorMatrix:Landroid/graphics/Matrix;

    const v4, -0x3bd95555

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 114
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->recommendedEditorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->recommendedEditorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 304
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->color:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hitTest(FF)Z
    .locals 3

    .line 319
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;

    .line 320
    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->access$800(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)F

    move-result v2

    add-float/2addr p2, v2

    .line 321
    invoke-virtual {v1, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 322
    :cond_0
    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->access$900(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)F

    move-result v1

    sub-float/2addr p2, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$setFocused$0$org-thoughtcrime-securesms-imageeditor-renderers-MultiLineTextRenderer(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 353
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->cursorAnimatedValue:F

    .line 354
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->invalidate()V

    return-void
.end method

.method public render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;->render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    .line 70
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;

    .line 71
    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 309
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->color:I

    if-eq v0, p1, :cond_0

    .line 310
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->color:I

    .line 311
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFocused(Z)V
    .locals 2

    .line 341
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->hasFocus:Z

    if-eq v0, p1, :cond_2

    .line 342
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->hasFocus:Z

    .line 343
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->cursorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->cursorAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 348
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->cursorAnimator:Landroid/animation/ValueAnimator;

    .line 349
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->pulseInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->cursorAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 351
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->cursorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 352
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->cursorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->cursorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->invalidate()V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setSelection(II)V
    .locals 2

    .line 328
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->selStart:I

    .line 329
    iput p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->selEnd:I

    .line 330
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;

    .line 331
    invoke-virtual {v1, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->setSelection(II)V

    .line 333
    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->access$1000(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->text:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->createLinesForText()V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 382
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->color:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
