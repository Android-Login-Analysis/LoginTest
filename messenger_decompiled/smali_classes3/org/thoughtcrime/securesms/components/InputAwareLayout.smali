.class public Lorg/thoughtcrime/securesms/components/InputAwareLayout;
.super Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;
.source "InputAwareLayout.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;
    }
.end annotation


# instance fields
.field private current:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0, p0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->addOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V

    return-void
.end method

.method private hideSoftkey(Landroid/widget/EditText;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->postOnKeyboardClose(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    .line 76
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic lambda$showSoftkey$2(Landroid/widget/EditText;)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 68
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method public getCurrentInput()Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->current:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    return-object v0
.end method

.method public hideAttachedInput(Z)V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->current:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;->hide(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->current:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    return-void
.end method

.method public hideCurrentInput(Landroid/widget/EditText;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->isKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideSoftkey(Landroid/widget/EditText;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideAttachedInput(Z)V

    :goto_0
    return-void
.end method

.method public isInputOpen()Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->isKeyboardOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->current:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$show$0$org-thoughtcrime-securesms-components-InputAwareLayout(Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;)V
    .locals 2

    .line 0
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideAttachedInput(Z)V

    .line 36
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->getKeyboardHeight()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;->show(IZ)V

    .line 37
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->current:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    return-void
.end method

.method synthetic lambda$showSoftkey$1$org-thoughtcrime-securesms-components-InputAwareLayout()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideAttachedInput(Z)V

    return-void
.end method

.method public onKeyboardShown()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideAttachedInput(Z)V

    return-void
.end method

.method public show(Landroid/widget/EditText;Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->isKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/InputAwareLayout;Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;)V

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideSoftkey(Landroid/widget/EditText;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 40
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->current:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;->hide(Z)V

    .line 41
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->getKeyboardHeight()I

    move-result p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->current:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;->show(IZ)V

    .line 42
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->current:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    :goto_1
    return-void
.end method

.method public showSoftkey(Landroid/widget/EditText;)V
    .locals 1

    .line 65
    new-instance v0, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/components/InputAwareLayout;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->postOnKeyboardOpen(Ljava/lang/Runnable;)V

    .line 66
    new-instance v0, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
