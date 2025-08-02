.class Lorg/thoughtcrime/securesms/components/HidingLinearLayout$1;
.super Ljava/lang/Object;
.source "HidingLinearLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/HidingLinearLayout;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/HidingLinearLayout;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/HidingLinearLayout;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/HidingLinearLayout$1;->this$0:Lorg/thoughtcrime/securesms/components/HidingLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/HidingLinearLayout$1;->this$0:Lorg/thoughtcrime/securesms/components/HidingLinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/HidingLinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
