.class Lorg/thoughtcrime/securesms/components/InputPanel$2;
.super Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;
.source "InputPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/InputPanel;->onRecordHideEvent()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/InputPanel;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/InputPanel;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$2;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 290
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/InputPanel$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2

    .line 293
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$2;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->access$200(Lorg/thoughtcrime/securesms/components/InputPanel;)Z

    move-result p1

    const/16 v0, 0x96

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$2;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->access$300(Lorg/thoughtcrime/securesms/components/InputPanel;)Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeIn(Landroid/view/View;I)V

    .line 294
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$2;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->access$400(Lorg/thoughtcrime/securesms/components/InputPanel;)Lorg/thoughtcrime/securesms/components/ComposeText;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeIn(Landroid/view/View;I)V

    .line 295
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$2;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->access$500(Lorg/thoughtcrime/securesms/components/InputPanel;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeIn(Landroid/view/View;I)V

    .line 296
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$2;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->access$600(Lorg/thoughtcrime/securesms/components/InputPanel;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeIn(Landroid/view/View;I)V

    .line 297
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$2;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->access$700(Lorg/thoughtcrime/securesms/components/InputPanel;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 298
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$2;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->access$400(Lorg/thoughtcrime/securesms/components/InputPanel;)Lorg/thoughtcrime/securesms/components/ComposeText;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->requestFocus()Z

    return-void
.end method
