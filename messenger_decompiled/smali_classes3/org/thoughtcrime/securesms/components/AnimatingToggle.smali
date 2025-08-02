.class public Lorg/thoughtcrime/securesms/components/AnimatingToggle;
.super Landroid/widget/FrameLayout;
.source "AnimatingToggle.java"


# instance fields
.field private current:Landroid/view/View;

.field private final inAnimation:Landroid/view/animation/Animation;

.field private final outAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f01000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->outAnimation:Landroid/view/animation/Animation;

    .line 35
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f01000c

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->inAnimation:Landroid/view/animation/Animation;

    .line 36
    new-instance p3, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p3}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    .line 45
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->current:Landroid/view/View;

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public display(Landroid/view/View;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->current:Landroid/view/View;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 55
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->outAnimation:Landroid/view/animation/Animation;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->animateOut(Landroid/view/View;Landroid/view/animation/Animation;I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    :cond_1
    if-eqz p1, :cond_2

    .line 56
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->inAnimation:Landroid/view/animation/Animation;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->animateIn(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 58
    :cond_2
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->current:Landroid/view/View;

    return-void
.end method

.method public displayQuick(Landroid/view/View;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->current:Landroid/view/View;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_2
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->current:Landroid/view/View;

    return-void
.end method
