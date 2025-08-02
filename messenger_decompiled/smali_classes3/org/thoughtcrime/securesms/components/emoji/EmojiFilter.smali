.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiFilter;
.super Ljava/lang/Object;
.source "EmojiFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiFilter;->view:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    sub-int p4, p3, p2

    .line 19
    new-array p4, p4, [C

    const/4 p5, 0x0

    .line 20
    invoke-static {p1, p2, p3, p4, p5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 22
    iget-object p5, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiFilter;->view:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    move-result-object p5

    new-instance p6, Ljava/lang/String;

    invoke-direct {p6, p4}, Ljava/lang/String;-><init>([C)V

    iget-object p4, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiFilter;->view:Landroid/widget/TextView;

    invoke-virtual {p5, p6, p4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojify(Ljava/lang/CharSequence;Landroid/widget/TextView;)Landroid/text/Spannable;

    move-result-object p4

    .line 24
    instance-of p5, p1, Landroid/text/Spanned;

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 25
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :cond_0
    return-object p4
.end method
