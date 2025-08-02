.class Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$2;
.super Ljava/lang/Object;
.source "AttachmentTypeSelector.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateWindowOutCircular(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$2;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$2;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->access$501(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
