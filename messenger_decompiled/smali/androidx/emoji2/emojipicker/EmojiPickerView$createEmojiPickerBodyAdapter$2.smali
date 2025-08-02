.class final Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EmojiPickerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/emojipicker/EmojiPickerView;->createEmojiPickerBodyAdapter()Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;",
        "Landroidx/emoji2/emojipicker/EmojiViewItem;",
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
        "Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;",
        "emojiViewItem",
        "Landroidx/emoji2/emojipicker/EmojiViewItem;",
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
.field final synthetic this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;


# direct methods
.method constructor <init>(Landroidx/emoji2/emojipicker/EmojiPickerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$2;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;

    check-cast p2, Landroidx/emoji2/emojipicker/EmojiViewItem;

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$2;->invoke(Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;Landroidx/emoji2/emojipicker/EmojiViewItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/emoji2/emojipicker/EmojiPickerBodyAdapter;Landroidx/emoji2/emojipicker/EmojiViewItem;)V
    .locals 1

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "emojiViewItem"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$2;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {p1}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getOnEmojiPickedListener$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Landroidx/core/util/Consumer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 157
    :cond_0
    iget-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$2;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {p1}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getRecentEmojiProvider$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Landroidx/emoji2/emojipicker/RecentEmojiProvider;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/emoji2/emojipicker/EmojiViewItem;->getEmoji()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/emoji2/emojipicker/RecentEmojiProvider;->recordSelection(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$2;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$setRecentNeedsRefreshing$p(Landroidx/emoji2/emojipicker/EmojiPickerView;Z)V

    return-void
.end method
