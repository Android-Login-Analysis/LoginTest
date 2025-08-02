.class Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1;
.super Lorg/thoughtcrime/securesms/animation/AnimationCompleteListener;
.source "PulsingFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1;->this$1:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/animation/AnimationCompleteListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAnimationEnd$0$org-thoughtcrime-securesms-components-registration-PulsingFloatingActionButton$1$1(J)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1;->this$1:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;->this$0:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    invoke-static {v0, p1, p2}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->access$000(Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;J)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 48
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1;->this$1:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;->this$0:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1;->this$1:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;

    iget-wide v0, v0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;->val$periodMillis:J

    new-instance v2, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1;J)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1$1;->this$1:Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;

    iget-wide v0, v0, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton$1;->val$periodMillis:J

    invoke-virtual {p1, v2, v0, v1}, Lorg/thoughtcrime/securesms/components/registration/PulsingFloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
