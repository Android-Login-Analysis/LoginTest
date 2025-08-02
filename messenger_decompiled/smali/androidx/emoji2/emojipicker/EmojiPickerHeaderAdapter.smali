.class public final Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EmojiPickerHeaderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0014\u001a\u00020\tH\u0016J\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\tH\u0016J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "context",
        "Landroid/content/Context;",
        "emojiPickerItems",
        "Landroidx/emoji2/emojipicker/EmojiPickerItems;",
        "onHeaderIconClicked",
        "Lkotlin/Function1;",
        "",
        "",
        "(Landroid/content/Context;Landroidx/emoji2/emojipicker/EmojiPickerItems;Lkotlin/jvm/functions/Function1;)V",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "value",
        "selectedGroupIndex",
        "getSelectedGroupIndex",
        "()I",
        "setSelectedGroupIndex",
        "(I)V",
        "getItemCount",
        "onBindViewHolder",
        "viewHolder",
        "i",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "emoji2-emojipicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final emojiPickerItems:Landroidx/emoji2/emojipicker/EmojiPickerItems;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final onHeaderIconClicked:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private selectedGroupIndex:I


# direct methods
.method public static synthetic $r8$lambda$Jg9XrvgaYmfOqhO9vBhuHpw6n-4(Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0}, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->onBindViewHolder$lambda$2(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uVUWZuShFwrKRLnKc0kQtZrGtrA(Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->onBindViewHolder$lambda$1(Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/emoji2/emojipicker/EmojiPickerItems;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/emoji2/emojipicker/EmojiPickerItems;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emojiPickerItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onHeaderIconClicked"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p2, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->emojiPickerItems:Landroidx/emoji2/emojipicker/EmojiPickerItems;

    .line 33
    iput-object p3, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->onHeaderIconClicked:Lkotlin/jvm/functions/Function1;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "from(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static final onBindViewHolder$lambda$1(Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;ILandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->onHeaderIconClicked:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBindViewHolder$lambda$2(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "$headerIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x80

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->emojiPickerItems:Landroidx/emoji2/emojipicker/EmojiPickerItems;

    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/EmojiPickerItems;->getNumGroups()I

    move-result v0

    return v0
.end method

.method public final getSelectedGroupIndex()I
    .locals 1

    .line 37
    iget v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->selectedGroupIndex:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->selectedGroupIndex:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 58
    sget v3, Landroidx/emoji2/emojipicker/R$id;->emoji_picker_header_icon:I

    .line 56
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->requireViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 59
    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->emojiPickerItems:Landroidx/emoji2/emojipicker/EmojiPickerItems;

    invoke-virtual {v5, p2}, Landroidx/emoji2/emojipicker/EmojiPickerItems;->getHeaderIconId(I)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 62
    iget-object v4, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->emojiPickerItems:Landroidx/emoji2/emojipicker/EmojiPickerItems;

    invoke-virtual {v4, p2}, Landroidx/emoji2/emojipicker/EmojiPickerItems;->getHeaderIconDescription(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v4, "requireViewById<ImageVie\u2026nDescription(i)\n        }"

    .line 59
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2}, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_1

    .line 66
    new-instance p2, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, v3}, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Landroidx/emoji2/emojipicker/R$id;->emoji_picker_header_underline:I

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->requireViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 73
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 48
    sget v0, Landroidx/emoji2/emojipicker/R$layout;->header_icon_holder:I

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter$onCreateViewHolder$1;

    invoke-direct {p2, p1}, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter$onCreateViewHolder$1;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public final setSelectedGroupIndex(I)V
    .locals 1

    .line 39
    iget v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->selectedGroupIndex:I

    if-ne p1, v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->notifyItemChanged(I)V

    .line 41
    invoke-virtual {p0, p1}, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->notifyItemChanged(I)V

    .line 42
    iput p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->selectedGroupIndex:I

    return-void
.end method
