.class Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EmojiPageViewGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmojiViewHolder"
.end annotation


# instance fields
.field private final hintCorner:Landroid/widget/ImageView;

.field private final imageView:Landroid/widget/ImageView;

.field private final textView:Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090113

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f09011a

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->textView:Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;

    const v0, 0x7f09011d

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->hintCorner:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->textView:Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->hintCorner:Landroid/widget/ImageView;

    return-object p0
.end method
