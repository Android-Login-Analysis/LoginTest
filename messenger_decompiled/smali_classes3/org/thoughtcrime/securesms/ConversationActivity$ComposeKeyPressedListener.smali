.class Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeKeyPressedListener"
.end annotation


# instance fields
.field beforeLength:I

.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 1419
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V
    .locals 0

    .line 1419
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method

.method static synthetic lambda$afterTextChanged$0(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 1450
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$600(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1449
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->getTextTrimmed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->beforeLength:I

    if-nez p1, :cond_1

    .line 1450
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v1, v2, v3}, Lorg/thoughtcrime/securesms/components/ComposeText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1444
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->getTextTrimmed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->beforeLength:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1439
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1700(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->showSoftkey(Landroid/widget/EditText;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1425
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 1427
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/Prefs;->isEnterSendsEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1428
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$2000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/SendButton;

    move-result-object p2

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/components/SendButton;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1429
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$2000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/SendButton;

    move-result-object p2

    new-instance p3, Landroid/view/KeyEvent;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/components/SendButton;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return v0

    :cond_0
    return p3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
