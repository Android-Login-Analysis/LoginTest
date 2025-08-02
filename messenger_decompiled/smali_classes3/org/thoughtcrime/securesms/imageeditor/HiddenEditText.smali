.class final Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "HiddenEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText$OnEditOrSelectionChange;
    }
.end annotation


# static fields
.field private static final INCOGNITO_KEYBOARD_IME:I = 0x1000000


# instance fields
.field private currentTextEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

.field private onEditOrSelectionChange:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText$OnEditOrSelectionChange;

.field private onEndEdit:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setAlpha(F)V

    .line 43
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x800033

    const/4 v1, 0x1

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setClickable(Z)V

    .line 45
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setFocusable(Z)V

    .line 46
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setFocusableInTouchMode(Z)V

    .line 47
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setBackgroundColor(I)V

    const/4 p1, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setTextSize(IF)V

    const p1, 0x20001

    .line 49
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setInputType(I)V

    .line 50
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->clearFocus()V

    return-void
.end method

.method private endEdit()V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->onEndEdit:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private postEditOrSelectionChange()V
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->onEditOrSelectionChange:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText$OnEditOrSelectionChange;

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v2, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText$OnEditOrSelectionChange;->onChange(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V

    :cond_0
    return-void
.end method

.method private setCurrentTextEntity(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->setFocused(Z)V

    .line 119
    :cond_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->getText()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 125
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method getCurrentTextEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object v0
.end method

.method getCurrentTextEntity()Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 157
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onEditorAction(I)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onEditorAction(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->setFocused(Z)V

    .line 67
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->endEdit()V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 74
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->setFocused(Z)V

    if-nez p1, :cond_0

    .line 77
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->endEdit()V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 132
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onSelectionChanged(II)V

    .line 133
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->setSelection(II)V

    .line 135
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->postEditOrSelectionChange()V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 56
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz p2, :cond_0

    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->setText(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->postEditOrSelectionChange()V

    :cond_0
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 141
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    .line 143
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEntity:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->setFocused(Z)V

    .line 145
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 146
    invoke-virtual {p2, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 147
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p2, v0, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return p1
.end method

.method public setCurrentTextEditorElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object v0

    instance-of v0, v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz v0, :cond_0

    .line 104
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 105
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setCurrentTextEntity(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->currentTextEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 108
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setCurrentTextEntity(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V

    .line 111
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->postEditOrSelectionChange()V

    return-void
.end method

.method public setIncognitoKeyboardEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->getImeOptions()I

    move-result p1

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->getImeOptions()I

    move-result p1

    const v0, -0x1000001

    and-int/2addr p1, v0

    .line 161
    :goto_0
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->setImeOptions(I)V

    return-void
.end method

.method public setOnEditOrSelectionChange(Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText$OnEditOrSelectionChange;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->onEditOrSelectionChange:Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText$OnEditOrSelectionChange;

    return-void
.end method

.method public setOnEndEdit(Ljava/lang/Runnable;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/HiddenEditText;->onEndEdit:Ljava/lang/Runnable;

    return-void
.end method
