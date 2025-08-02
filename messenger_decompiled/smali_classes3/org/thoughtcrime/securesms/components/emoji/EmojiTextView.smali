.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "EmojiTextView.java"


# static fields
.field private static final CMD_PATTERN:Ljava/util/regex/Pattern;

.field private static final ELLIPSIS:C = '\u2026'


# instance fields
.field private final createInBackground:Z

.field private final forceCustom:Z

.field private final maxLength:I

.field private originalFontSize:F

.field private overflowText:Ljava/lang/CharSequence;

.field private previousBufferType:Landroid/widget/TextView$BufferType;

.field private previousOverflowText:Ljava/lang/CharSequence;

.field private previousText:Ljava/lang/CharSequence;

.field private final scaleEmojis:Z

.field private sizeChangeInProgress:Z

.field private useSystemEmoji:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?<=^|\\s)/[a-zA-Z][a-zA-Z@\\d_/.-]{0,254}"

    .line 215
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->CMD_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lorg/thoughtcrime/securesms/R$styleable;->EmojiTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v0, 0x3

    .line 60
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->scaleEmojis:Z

    const/4 v0, 0x2

    const/4 v2, -0x1

    .line 61
    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->maxLength:I

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->forceCustom:Z

    .line 63
    invoke-virtual {p3, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->createInBackground:Z

    .line 64
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const p3, 0x1010095

    .line 66
    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->originalFontSize:F

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private ellipsizeAnyTextForMaxLength()V
    .locals 4

    .line 126
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->maxLength:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->maxLength:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2

    .line 127
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 128
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->maxLength:I

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->overflowText:Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/util/guava/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 130
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getCandidates(Ljava/lang/CharSequence;)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;

    move-result-object v1

    .line 132
    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->useSystemEmoji:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    move-result-object v2

    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->createInBackground:Z

    invoke-virtual {v2, v1, v0, p0, v3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojify(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;Ljava/lang/CharSequence;Landroid/widget/TextView;Z)Landroid/text/Spannable;

    move-result-object v0

    .line 136
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 133
    :cond_1
    :goto_0
    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private ellipsizeEmojiTextForMaxLines()V
    .locals 1

    .line 142
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static linkify(Landroid/text/SpannableString;)Landroid/text/SpannableString;
    .locals 3

    .line 230
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->CMD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "cmd:"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->replaceURLSpan(Landroid/text/SpannableString;)V

    :cond_0
    const/4 v0, 0x7

    .line 235
    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-static {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->replaceURLSpan(Landroid/text/SpannableString;)V

    :cond_1
    return-object p0
.end method

.method private static replaceURLSpan(Landroid/text/SpannableString;)V
    .locals 7

    .line 218
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 219
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 220
    invoke-virtual {p0, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 221
    invoke-virtual {p0, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 223
    new-instance v6, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x21

    invoke-virtual {p0, v6, v4, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unchanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->previousText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->previousOverflowText:Ljava/lang/CharSequence;

    .line 174
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->previousBufferType:Landroid/widget/TextView$BufferType;

    .line 175
    invoke-static {p1, p3}, Lorg/thoughtcrime/securesms/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->useSystemEmoji:Z

    .line 176
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->useSystemEmoji()Z

    move-result p2

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->sizeChangeInProgress:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private useSystemEmoji()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->forceCustom:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Prefs;->isSystemEmojiPreferred(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 197
    instance-of v0, p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->invalidate()V

    goto :goto_0

    .line 198
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$ellipsizeEmojiTextForMaxLines$0$org-thoughtcrime-securesms-components-emoji-EmojiTextView()V
    .locals 5

    .line 143
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->ellipsizeEmojiTextForMaxLines()V

    return-void

    .line 148
    :cond_0
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 149
    iget v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->maxLength:I

    if-gez v1, :cond_1

    return-void

    .line 153
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getLineCount()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 156
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 159
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 160
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 161
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->overflowText:Ljava/lang/CharSequence;

    .line 162
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Lorg/thoughtcrime/securesms/util/guava/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getCandidates(Ljava/lang/CharSequence;)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    move-result-object v1

    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->createInBackground:Z

    invoke-virtual {v1, v0, v2, p0, v3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojify(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;Ljava/lang/CharSequence;Landroid/widget/TextView;Z)Landroid/text/Spannable;

    move-result-object v0

    .line 167
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->onSizeChanged(IIII)V

    .line 188
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->sizeChangeInProgress:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->sizeChangeInProgress:Z

    .line 190
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->previousText:Ljava/lang/CharSequence;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->previousBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->sizeChangeInProgress:Z

    :cond_0
    return-void
.end method

.method public setOverflowText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 121
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->overflowText:Ljava/lang/CharSequence;

    .line 122
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->previousText:Ljava/lang/CharSequence;

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7

    .line 72
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getCandidates(Ljava/lang/CharSequence;)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;

    move-result-object v1

    .line 75
    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->scaleEmojis:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;->allEmojis:Z

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;->size()I

    move-result v2

    const/16 v4, 0x8

    if-gt v2, v4, :cond_0

    const/high16 v4, 0x3fa00000    # 1.25f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    const/4 v5, 0x6

    const/high16 v6, 0x3e800000    # 0.25f

    if-gt v2, v5, :cond_1

    add-float/2addr v4, v6

    :cond_1
    const/4 v5, 0x4

    if-gt v2, v5, :cond_2

    add-float/2addr v4, v6

    :cond_2
    const/4 v5, 0x2

    if-gt v2, v5, :cond_3

    add-float/2addr v4, v6

    .line 84
    :cond_3
    iget v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->originalFontSize:F

    mul-float v2, v2, v4

    invoke-super {p0, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    goto :goto_1

    .line 85
    :cond_4
    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->scaleEmojis:Z

    if-eqz v2, :cond_5

    .line 86
    iget v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->originalFontSize:F

    invoke-super {p0, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 89
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->overflowText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v2, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->unchanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    .line 93
    :cond_6
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->previousText:Ljava/lang/CharSequence;

    .line 94
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->overflowText:Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->previousOverflowText:Ljava/lang/CharSequence;

    .line 95
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->previousBufferType:Landroid/widget/TextView$BufferType;

    .line 96
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->useSystemEmoji()Z

    move-result p2

    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->useSystemEmoji:Z

    const-string v2, ""

    if-nez p2, :cond_9

    if-eqz v1, :cond_9

    .line 98
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;->size()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    .line 105
    :cond_7
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->createInBackground:Z

    invoke-virtual {v0, v1, p1, p0, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojify(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;Ljava/lang/CharSequence;Landroid/widget/TextView;Z)Landroid/text/Spannable;

    move-result-object p1

    .line 106
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->overflowText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 110
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, p2, :cond_a

    .line 111
    iget p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->maxLength:I

    if-lez p1, :cond_8

    .line 112
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->ellipsizeAnyTextForMaxLength()V

    goto :goto_3

    .line 114
    :cond_8
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->ellipsizeEmojiTextForMaxLines()V

    goto :goto_3

    .line 99
    :cond_9
    :goto_2
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->overflowText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object p2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 101
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, p2, :cond_a

    iget p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->maxLength:I

    if-lez p1, :cond_a

    .line 102
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->ellipsizeAnyTextForMaxLength()V

    :cond_a
    :goto_3
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x2

    .line 203
    invoke-virtual {p0, v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 208
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->originalFontSize:F

    .line 209
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method
