.class public Lorg/thoughtcrime/securesms/components/ComposeText;
.super Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;
.source "ComposeText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/ComposeText$CommitContentListener;
    }
.end annotation


# instance fields
.field private hint:Ljava/lang/CharSequence;

.field private mediaListener:Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;

.field private subHint:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->initialize()V

    return-void
.end method

.method private ellipsizeToWidth(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 74
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 73
    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private initialize()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Prefs;->isIncognitoKeyboardEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getImeOptions()I

    move-result v0

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/ComposeText;->setImeOptions(I)V

    :cond_0
    return-void
.end method

.method private isLandscape()Z
    .locals 2

    .line 99
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getTextTrimmed()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    .line 119
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Prefs;->isEnterSendsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 125
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    return-object v0

    .line 126
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->mediaListener:Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "image/jpeg"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "image/png"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "image/gif"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "image/webp"

    aput-object v4, v2, v3

    .line 132
    invoke-static {p1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 134
    new-instance v2, Lorg/thoughtcrime/securesms/components/ComposeText$CommitContentListener;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->mediaListener:Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;

    invoke-direct {v2, v3, v1}, Lorg/thoughtcrime/securesms/components/ComposeText$CommitContentListener;-><init>(Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;Lorg/thoughtcrime/securesms/components/ComposeText$1;)V

    invoke-static {v0, p1, v2}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 59
    invoke-super/range {p0 .. p5}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->onLayout(ZIIII)V

    .line 61
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->hint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 62
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->subHint:Landroid/text/SpannableString;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->hint:Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ComposeText;->ellipsizeToWidth(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p2, "\n"

    .line 64
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->subHint:Landroid/text/SpannableString;

    .line 65
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ComposeText;->ellipsizeToWidth(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->hint:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->ellipsizeToWidth(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHint(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    .line 80
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->hint:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    .line 83
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->subHint:Landroid/text/SpannableString;

    .line 84
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->subHint:Landroid/text/SpannableString;

    .line 89
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->subHint:Landroid/text/SpannableString;

    if-eqz p1, :cond_1

    .line 90
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->hint:Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ComposeText;->ellipsizeToWidth(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p2, "\n"

    .line 91
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->subHint:Landroid/text/SpannableString;

    .line 92
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ComposeText;->ellipsizeToWidth(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 90
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 94
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->hint:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->ellipsizeToWidth(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiEditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setMediaListener(Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText;->mediaListener:Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;

    return-void
.end method

.method public setTransport(Lorg/thoughtcrime/securesms/TransportOption;)V
    .locals 6

    .line 106
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getImeOptions()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    const/4 v1, 0x4

    or-int/2addr v0, v1

    .line 107
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getInputType()I

    move-result v2

    .line 109
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->isLandscape()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f120254

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/thoughtcrime/securesms/components/ComposeText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v4, v1}, Lorg/thoughtcrime/securesms/components/ComposeText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 112
    :goto_0
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/ComposeText;->setInputType(I)V

    .line 113
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/ComposeText;->setImeOptions(I)V

    .line 114
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/TransportOption;->getComposeHint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lorg/thoughtcrime/securesms/components/ComposeText;->setHint(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
