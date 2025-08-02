.class Lorg/thoughtcrime/securesms/components/AvatarSelector$2;
.super Ljava/lang/Object;
.source "AvatarSelector.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/AvatarSelector;->animateWindowOutTranslate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$2;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$2;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->access$401(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V

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
