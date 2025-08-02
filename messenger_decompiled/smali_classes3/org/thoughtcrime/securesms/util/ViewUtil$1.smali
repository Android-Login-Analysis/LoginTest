.class Lorg/thoughtcrime/securesms/util/ViewUtil$1;
.super Ljava/lang/Object;
.source "ViewUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/util/ViewUtil;->animateOut(Landroid/view/View;Landroid/view/animation/Animation;I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/view/View;ILcom/b44t/messenger/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/ViewUtil$1;->val$view:Landroid/view/View;

    iput p2, p0, Lorg/thoughtcrime/securesms/util/ViewUtil$1;->val$visibility:I

    iput-object p3, p0, Lorg/thoughtcrime/securesms/util/ViewUtil$1;->val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/ViewUtil$1;->val$view:Landroid/view/View;

    iget v0, p0, Lorg/thoughtcrime/securesms/util/ViewUtil$1;->val$visibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/ViewUtil$1;->val$future:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

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
