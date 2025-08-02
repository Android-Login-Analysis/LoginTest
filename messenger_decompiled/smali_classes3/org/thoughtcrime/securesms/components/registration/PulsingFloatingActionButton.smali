.class public Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.source "PulsingFloatingActionButton.java"


# instance fields
.field private pulsing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;J)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->pulse(J)V

    return-void
.end method

.method private pulse(J)V
    .locals 3

    .line 39
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->pulsing:Z

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;-><init>(Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;J)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public startPulse(J)V
    .locals 1

    .line 28
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->pulsing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->pulsing:Z

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->pulse(J)V

    :cond_0
    return-void
.end method

.method public stopPulse()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->pulsing:Z

    return-void
.end method
