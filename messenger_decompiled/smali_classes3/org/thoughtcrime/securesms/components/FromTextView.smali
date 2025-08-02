.class public Lorg/thoughtcrime/securesms/components/FromTextView;
.super Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;
.source "FromTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FromTextView"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setText(Lorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/FromTextView;->setText(Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    return-void
.end method

.method public setText(Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V
    .locals 7

    .line 39
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->toShortString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    .line 49
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 51
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 55
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getProfileName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 56
    new-instance p2, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " (~"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getProfileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    new-instance p1, Lorg/thoughtcrime/securesms/util/spans/CenterAlignedRelativeSizeSpan;

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p1, v0}, Lorg/thoughtcrime/securesms/util/spans/CenterAlignedRelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v4, 0x21

    invoke-virtual {p2, p1, v5, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 58
    new-instance p1, Landroid/text/style/TypefaceSpan;

    const-string v0, "sans-serif-light"

    invoke-direct {p1, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {p2, p1, v5, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 59
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/FromTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v6, 0x7f040190

    invoke-static {v0, v6}, Lorg/thoughtcrime/securesms/util/ResUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {p2, p1, v5, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 61
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 62
    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    :goto_0
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/FromTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
