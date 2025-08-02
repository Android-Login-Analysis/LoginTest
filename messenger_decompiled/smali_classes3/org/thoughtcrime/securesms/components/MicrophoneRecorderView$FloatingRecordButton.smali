.class Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;
.super Ljava/lang/Object;
.source "MicrophoneRecorderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingRecordButton"
.end annotation


# instance fields
.field private lastOffsetX:F

.field private lastOffsetY:F

.field private final recordButtonFab:Landroid/widget/ImageView;

.field private startPositionX:F

.field private startPositionY:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    .line 158
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060020

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 158
    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;)F
    .locals 0

    .line 147
    iget p0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetX:F

    return p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;)F
    .locals 0

    .line 147
    iget p0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetY:F

    return p0
.end method

.method private getXOffset(F)F
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->isLtr(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->startPositionX:F

    sub-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    neg-float p1, p1

    goto :goto_0

    .line 228
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->startPositionX:F

    sub-float/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    return p1
.end method

.method private getYOffset(F)F
    .locals 1

    .line 232
    iget v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->startPositionY:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method display(FF)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 164
    iput v1, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->startPositionX:F

    move/from16 v1, p2

    .line 165
    iput v1, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->startPositionY:F

    .line 167
    iget-object v1, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 170
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 175
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    const/high16 v18, 0x3f000000    # 0.5f

    const/16 v19, 0x1

    const/high16 v20, 0x3f000000    # 0.5f

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0xc8

    .line 179
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 180
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    iget-object v2, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method hide()V
    .locals 21

    move-object/from16 v0, p0

    .line 200
    iget-object v1, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 201
    iget-object v1, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 202
    iget-object v1, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 205
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 209
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x0

    iget v14, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetX:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v4, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetY:F

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v18, v4

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 214
    new-instance v4, Landroid/view/animation/AnticipateOvershootInterpolator;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v4, v5}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 215
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 216
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 217
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0xc8

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 219
    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2, v5}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    iget-object v2, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v2, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 223
    iget-object v2, v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method moveTo(FF)V
    .locals 1

    .line 186
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->getXOffset(F)F

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetX:F

    .line 187
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->getYOffset(F)F

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetY:F

    .line 189
    iget p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetX:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetY:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 190
    iput v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetY:F

    goto :goto_0

    .line 192
    :cond_0
    iput v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetX:F

    .line 195
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    iget p2, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetX:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 196
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->recordButtonFab:Landroid/widget/ImageView;

    iget p2, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->lastOffsetY:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
