.class final Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EmojiViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/emojipicker/EmojiViewHolder;-><init>(Landroid/content/Context;IILandroid/view/LayoutInflater;Landroidx/emoji2/emojipicker/StickyVariantProvider;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/widget/PopupWindow;",
        "Landroid/widget/GridLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroid/widget/PopupWindow;",
        "it",
        "Landroid/widget/GridLayout;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Landroidx/emoji2/emojipicker/EmojiViewHolder;


# direct methods
.method public static synthetic $r8$lambda$pUsrrad2aVB0EYhWqToNNH7UEmU(Landroidx/emoji2/emojipicker/EmojiViewHolder;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;->invoke$lambda$0(Landroidx/emoji2/emojipicker/EmojiViewHolder;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/emoji2/emojipicker/EmojiViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;->this$0:Landroidx/emoji2/emojipicker/EmojiViewHolder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/emoji2/emojipicker/EmojiViewHolder;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_showPopupWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type androidx.emoji2.emojipicker.EmojiView"

    .line 50
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/emoji2/emojipicker/EmojiView;

    invoke-virtual {p2}, Landroidx/emoji2/emojipicker/EmojiView;->getEmoji()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p0}, Landroidx/emoji2/emojipicker/EmojiViewHolder;->access$getOnEmojiPickedFromPopupListener$p(Landroidx/emoji2/emojipicker/EmojiViewHolder;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p0}, Landroidx/emoji2/emojipicker/EmojiViewHolder;->access$getOnEmojiPickedListener$p(Landroidx/emoji2/emojipicker/EmojiViewHolder;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {p0, p2}, Landroidx/emoji2/emojipicker/EmojiViewHolder;->access$makeEmojiViewItem(Landroidx/emoji2/emojipicker/EmojiViewHolder;Ljava/lang/String;)Landroidx/emoji2/emojipicker/EmojiViewItem;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p0}, Landroidx/emoji2/emojipicker/EmojiViewHolder;->access$getStickyVariantProvider$p(Landroidx/emoji2/emojipicker/EmojiViewHolder;)Landroidx/emoji2/emojipicker/StickyVariantProvider;

    move-result-object v0

    invoke-static {p0}, Landroidx/emoji2/emojipicker/EmojiViewHolder;->access$getEmojiViewItem$p(Landroidx/emoji2/emojipicker/EmojiViewHolder;)Landroidx/emoji2/emojipicker/EmojiViewItem;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "emojiViewItem"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Landroidx/emoji2/emojipicker/EmojiViewItem;->getVariants()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroidx/emoji2/emojipicker/StickyVariantProvider;->update$emoji2_emojipicker_release(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 57
    invoke-static {p0}, Landroidx/emoji2/emojipicker/EmojiViewHolder;->access$getEmojiView$p(Landroidx/emoji2/emojipicker/EmojiViewHolder;)Landroidx/emoji2/emojipicker/EmojiView;

    move-result-object p0

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Landroidx/emoji2/emojipicker/EmojiView;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Landroid/widget/PopupWindow;

    check-cast p2, Landroid/widget/GridLayout;

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;->invoke(Landroid/widget/PopupWindow;Landroid/widget/GridLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/PopupWindow;Landroid/widget/GridLayout;)V
    .locals 7

    const-string v0, "$this$showPopupWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Landroidx/emoji2/emojipicker/PopupViewHelper;

    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;->$context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroidx/emoji2/emojipicker/PopupViewHelper;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;->this$0:Landroidx/emoji2/emojipicker/EmojiViewHolder;

    invoke-static {v0}, Landroidx/emoji2/emojipicker/EmojiViewHolder;->access$getEmojiView$p(Landroidx/emoji2/emojipicker/EmojiViewHolder;)Landroidx/emoji2/emojipicker/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/EmojiView;->getMeasuredWidth()I

    move-result v3

    .line 47
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;->this$0:Landroidx/emoji2/emojipicker/EmojiViewHolder;

    invoke-static {v0}, Landroidx/emoji2/emojipicker/EmojiViewHolder;->access$getEmojiView$p(Landroidx/emoji2/emojipicker/EmojiViewHolder;)Landroidx/emoji2/emojipicker/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/EmojiView;->getMeasuredHeight()I

    move-result v4

    .line 48
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;->this$0:Landroidx/emoji2/emojipicker/EmojiViewHolder;

    invoke-static {v0}, Landroidx/emoji2/emojipicker/EmojiViewHolder;->access$getEmojiViewItem$p(Landroidx/emoji2/emojipicker/EmojiViewHolder;)Landroidx/emoji2/emojipicker/EmojiViewItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "emojiViewItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/EmojiViewItem;->getVariants()Ljava/util/List;

    move-result-object v5

    .line 44
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1;->this$0:Landroidx/emoji2/emojipicker/EmojiViewHolder;

    new-instance v6, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, p1}, Landroidx/emoji2/emojipicker/EmojiViewHolder$onEmojiLongClickListener$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/emoji2/emojipicker/EmojiViewHolder;Landroid/widget/PopupWindow;)V

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/emojipicker/PopupViewHelper;->fillPopupView(Landroid/widget/GridLayout;IILjava/util/List;Landroid/view/View$OnClickListener;)Landroid/widget/GridLayout;

    return-void
.end method
