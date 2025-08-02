.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EmojiPageViewGridAdapter.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;,
        Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;",
        ">;",
        "Landroid/widget/PopupWindow$OnDismissListener;"
    }
.end annotation


# instance fields
.field private final allowVariations:Z

.field private final emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

.field private final emojiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private final emojiProvider:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

.field private final popup:Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;

.field private final variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;Z)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->emojiList:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->emojiProvider:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    .line 35
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->popup:Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;

    .line 36
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    .line 37
    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;

    .line 38
    iput-boolean p5, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->allowVariations:Z

    .line 40
    invoke-virtual {p2, p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->emojiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$org-thoughtcrime-securesms-components-emoji-EmojiPageViewGridAdapter(Lorg/thoughtcrime/securesms/components/emoji/Emoji;Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;->onEmojiSelected(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$org-thoughtcrime-securesms-components-emoji-EmojiPageViewGridAdapter(Lorg/thoughtcrime/securesms/components/emoji/Emoji;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;Landroid/view/View;)Z
    .locals 1

    .line 74
    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->popup:Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;

    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->dismiss()V

    .line 75
    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->popup:Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;->getVariations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->setVariations(Ljava/util/List;)V

    .line 76
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->popup:Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;

    iget-object p3, p2, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    neg-int p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 77
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;->onVariationSelectorStateChanged(Z)V

    return p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->onBindViewHolder(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;I)V
    .locals 5

    .line 51
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->emojiList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->emojiProvider:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getEmojiDrawable(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->access$000(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->setVisibility(I)V

    .line 57
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->access$100(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->access$100(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->access$100(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->access$000(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->setVisibility(I)V

    .line 63
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->access$100(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->access$000(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;

    move-result-object v0

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/thoughtcrime/securesms/components/emoji/AsciiEmojiView;->setEmoji(Ljava/lang/String;)V

    .line 68
    :goto_0
    iget-object v0, p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;Lorg/thoughtcrime/securesms/components/emoji/Emoji;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->allowVariations:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;->getVariations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 73
    iget-object v0, p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;Lorg/thoughtcrime/securesms/components/emoji/Emoji;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 80
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->access$200(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_1
    iget-object p2, p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;->access$200(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;
    .locals 3

    .line 46
    new-instance p2, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDismiss()V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;->onVariationSelectorStateChanged(Z)V

    return-void
.end method

.method public setEmoji(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/Emoji;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->emojiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->emojiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
