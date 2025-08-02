.class final Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter$onCreateViewHolder$4;
.super Lkotlin/jvm/internal/Lambda;
.source "EmojiPickerBodyAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/emoji2/emojipicker/EmojiViewHolder;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiPickerBodyAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiPickerBodyAdapter.kt\nandroidx/emoji2/emojipicker/EmojiPickerBodyAdapter$onCreateViewHolder$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1864#2,3:139\n*S KotlinDebug\n*F\n+ 1 EmojiPickerBodyAdapter.kt\nandroidx/emoji2/emojipicker/EmojiPickerBodyAdapter$onCreateViewHolder$4\n*L\n71#1:139,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/emoji2/emojipicker/EmojiViewHolder;",
        "emoji",
        "",
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
.field final synthetic this$0:Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;


# direct methods
.method constructor <init>(Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter$onCreateViewHolder$4;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Landroidx/emoji2/emojipicker/EmojiViewHolder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter$onCreateViewHolder$4;->invoke(Landroidx/emoji2/emojipicker/EmojiViewHolder;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/emoji2/emojipicker/EmojiViewHolder;Ljava/lang/String;)V
    .locals 8

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "emoji"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object p1, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->INSTANCE:Landroidx/emoji2/emojipicker/BundledEmojiListLoader;

    invoke-virtual {p1}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->getEmojiVariantsLookup$emoji2_emojipicker_release()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 71
    iget-object v1, p0, Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter$onCreateViewHolder$4;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;

    invoke-static {v1}, Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;->access$getEmojiPickerItemsProvider$p(Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, p0, Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter$onCreateViewHolder$4;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;

    .line 140
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Landroidx/emoji2/emojipicker/ItemViewData;

    .line 72
    instance-of v6, v4, Landroidx/emoji2/emojipicker/EmojiViewData;

    if-eqz v6, :cond_2

    .line 73
    sget-object v6, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->INSTANCE:Landroidx/emoji2/emojipicker/BundledEmojiListLoader;

    invoke-virtual {v6}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->getEmojiVariantsLookup$emoji2_emojipicker_release()Ljava/util/Map;

    move-result-object v6

    .line 74
    check-cast v4, Landroidx/emoji2/emojipicker/EmojiViewData;

    invoke-virtual {v4}, Landroidx/emoji2/emojipicker/EmojiViewData;->getEmoji()Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_1

    .line 74
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    invoke-virtual {v4}, Landroidx/emoji2/emojipicker/EmojiViewData;->getUpdateToSticky()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    invoke-virtual {v4, p2}, Landroidx/emoji2/emojipicker/EmojiViewData;->setEmoji(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v3}, Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;->notifyItemChanged(I)V

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    return-void
.end method
