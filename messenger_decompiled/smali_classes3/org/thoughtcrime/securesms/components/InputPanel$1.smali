.class Lorg/thoughtcrime/securesms/components/InputPanel$1;
.super Lorg/thoughtcrime/securesms/animation/AnimationCompleteListener;
.source "InputPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/InputPanel;->clearQuote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/InputPanel;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/InputPanel;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$1;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/animation/AnimationCompleteListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$1;->this$0:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->access$100(Lorg/thoughtcrime/securesms/components/InputPanel;)Lorg/thoughtcrime/securesms/components/QuoteView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/QuoteView;->dismiss()V

    return-void
.end method
