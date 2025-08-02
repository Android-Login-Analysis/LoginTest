.class public final Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "EmojiPickerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/emojipicker/EmojiPickerView;->showEmojiPickerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "androidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "",
        "dy",
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
.field final synthetic $bodyLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic $headerAdapter:Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;

.field final synthetic this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;


# direct methods
.method constructor <init>(Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;Landroidx/emoji2/emojipicker/EmojiPickerView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->$headerAdapter:Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;

    iput-object p2, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    iput-object p3, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->$bodyLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 247
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 250
    iget-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->$headerAdapter:Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;

    .line 251
    iget-object p2, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {p2}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getEmojiPickerItems$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Landroidx/emoji2/emojipicker/EmojiPickerItems;

    move-result-object p2

    const-string p3, "emojiPickerItems"

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    .line 252
    :cond_0
    iget-object v1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->$bodyLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 251
    invoke-virtual {p2, v1}, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groupIndexByItemPosition(I)I

    move-result p2

    .line 250
    invoke-virtual {p1, p2}, Landroidx/emoji2/emojipicker/EmojiPickerHeaderAdapter;->setSelectedGroupIndex(I)V

    .line 254
    iget-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {p1}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getRecentNeedsRefreshing$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 256
    iget-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {p1}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getEmojiPickerItems$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Landroidx/emoji2/emojipicker/EmojiPickerItems;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p2, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {p2}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getRecentItemGroup$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Landroidx/emoji2/emojipicker/ItemGroup;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "recentItemGroup"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_2
    invoke-virtual {p1, p2}, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groupRange(Landroidx/emoji2/emojipicker/ItemGroup;)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result p2

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result p1

    .line 255
    iget-object p3, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->$bodyLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    const/4 v1, 0x0

    if-gt p2, p3, :cond_3

    if-gt p3, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 258
    iget-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {p1}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getScope$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance p1, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3$onScrolled$1;

    iget-object p2, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-direct {p1, p2, v0}, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$2$3$onScrolled$1;-><init>(Landroidx/emoji2/emojipicker/EmojiPickerView;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_4
    return-void
.end method
