.class Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;
.super Ljava/lang/Object;
.source "InputPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/InputPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlideToCancel"
.end annotation


# instance fields
.field private final slideToCancelView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->slideToCancelView:Landroid/view/View;

    return-void
.end method

.method static synthetic lambda$hide$0(Lcom/b44t/messenger/util/concurrent/SettableFuture;)V
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public display()V
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->slideToCancelView:Landroid/view/View;

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeIn(Landroid/view/View;I)V

    return-void
.end method

.method public hide()Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    .line 352
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 353
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->slideToCancelView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 357
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v3, 0xc8

    .line 359
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 360
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    const/4 v2, 0x0

    .line 361
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 363
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->slideToCancelView:Landroid/view/View;

    new-instance v5, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel$$ExternalSyntheticLambda0;-><init>(Lcom/b44t/messenger/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->slideToCancelView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->slideToCancelView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method moveTo(F)V
    .locals 10

    .line 371
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move v2, p1

    move v4, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x0

    .line 376
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    .line 377
    invoke-virtual {v9, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 378
    invoke-virtual {v9, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 380
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->slideToCancelView:Landroid/view/View;

    invoke-virtual {p1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
