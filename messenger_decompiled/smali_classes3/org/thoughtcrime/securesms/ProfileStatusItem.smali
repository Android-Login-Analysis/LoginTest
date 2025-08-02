.class public Lorg/thoughtcrime/securesms/ProfileStatusItem;
.super Landroid/widget/LinearLayout;
.source "ProfileStatusItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;
    }
.end annotation


# instance fields
.field private final passthroughClickListener:Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;

.field private statusTextView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;-><init>(Lorg/thoughtcrime/securesms/ProfileStatusItem;Lorg/thoughtcrime/securesms/ProfileStatusItem$1;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;-><init>(Lorg/thoughtcrime/securesms/ProfileStatusItem;Lorg/thoughtcrime/securesms/ProfileStatusItem$1;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/ProfileStatusItem;)Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;
    .locals 0

    .line 12
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem;->statusTextView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 27
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090375

    .line 28
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ProfileStatusItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem;->statusTextView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    .line 29
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 30
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem;->statusTextView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem;->passthroughClickListener:Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem;->statusTextView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileStatusItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem;->statusTextView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->linkify(Landroid/text/SpannableString;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
