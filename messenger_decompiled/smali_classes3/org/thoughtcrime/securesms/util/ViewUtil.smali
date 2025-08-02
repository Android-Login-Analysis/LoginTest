.class public Lorg/thoughtcrime/securesms/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateIn(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 4

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/AccessibilityUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 148
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    const-wide/16 v2, 0x0

    .line 149
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 150
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static animateOut(Landroid/view/View;Landroid/view/animation/Animation;I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-ne v1, p2, :cond_0

    invoke-virtual {v0, v2}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/AccessibilityUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {v0, v2}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 119
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    const-wide/16 v1, 0x0

    .line 120
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 121
    new-instance v1, Lorg/thoughtcrime/securesms/util/ViewUtil$1;

    invoke-direct {v1, p0, p2, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil$1;-><init>(Landroid/view/View;ILcom/b44t/messenger/util/concurrent/SettableFuture;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-object v0
.end method

.method public static dpToPx(I)I
    .locals 1

    int-to-float p0, p0

    .line 254
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 2

    int-to-float p1, p1

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 99
    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->getAlphaAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->animateIn(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 103
    invoke-static {p0, p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeOut(Landroid/view/View;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static fadeOut(Landroid/view/View;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II)",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 107
    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->getAlphaAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->animateOut(Landroid/view/View;Landroid/view/animation/Animation;I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static findById(Landroid/app/Activity;I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static findById(Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static findStubById(Landroid/app/Activity;I)Lorg/thoughtcrime/securesms/util/views/Stub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)",
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "TT;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/views/Stub;-><init>(Landroid/view/ViewStub;)V

    return-object v0
.end method

.method private static getAlphaAnimation(FFI)Landroid/view/animation/Animation;
    .locals 1

    .line 92
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 93
    new-instance p0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long p0, p2

    .line 94
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method public static getLeftMargin(Landroid/view/View;)I
    .locals 1

    .line 207
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return p0

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0
.end method

.method public static getRightMargin(Landroid/view/View;)I
    .locals 1

    .line 214
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/view/View;)I
    .locals 4

    .line 258
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/Insets;->top:I

    return p0

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getX(Landroid/view/View;)F
    .locals 0

    .line 63
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getY(Landroid/view/View;)F
    .locals 0

    .line 55
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static inflateStub(Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static isLtr(Landroid/content/Context;)Z
    .locals 0

    .line 185
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getLayoutDirection(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLtr(Landroid/view/View;)Z
    .locals 0

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->isLtr(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isRtl(Landroid/content/Context;)Z
    .locals 1

    .line 193
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getLayoutDirection(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRtl(Landroid/view/View;)Z
    .locals 0

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->isRtl(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static mirrorIfRtl(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 175
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getLayoutDirection(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 176
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setLeftMargin(Landroid/view/View;I)V
    .locals 1

    .line 221
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 226
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static setPaddingBottom(Landroid/view/View;I)V
    .locals 3

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setPaddingTop(Landroid/view/View;I)V
    .locals 3

    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setRightMargin(Landroid/view/View;I)V
    .locals 1

    .line 231
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 236
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static setTextViewGravityStart(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 2

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 165
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getLayoutDirection(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x5

    .line 166
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 168
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTopMargin(Landroid/view/View;I)V
    .locals 1

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static setX(Landroid/view/View;I)V
    .locals 0

    int-to-float p1, p1

    .line 59
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setX(Landroid/view/View;F)V

    return-void
.end method

.method public static swapChildInPlace(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-le v0, v1, :cond_1

    move p3, v0

    .line 69
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public static updateLayoutParams(Landroid/view/View;II)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
