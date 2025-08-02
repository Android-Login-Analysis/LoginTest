.class Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;
.super Lorg/thoughtcrime/securesms/animation/AnimationCompleteListener;
.source "PulsingFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->pulse(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

.field final synthetic val$periodMillis:J


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;J)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;->this$0:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    iput-wide p2, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;->val$periodMillis:J

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/animation/AnimationCompleteListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;->this$0:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->clearAnimation()V

    .line 45
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;->this$0:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1;-><init>(Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
