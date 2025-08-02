.class public final Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$1$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$1$1",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "checkLayoutParams",
        "",
        "lp",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutParams;",
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
.field final synthetic this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;


# direct methods
.method constructor <init>(Landroidx/emoji2/emojipicker/EmojiPickerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$1$1;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    const/4 p1, 0x0

    .line 227
    invoke-direct {p0, p2, p1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    const-string v0, "lp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$1$1;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$1$1;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$1$1;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$showEmojiPickerView$1$1$1;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {v1}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getEmojiPickerItems$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Landroidx/emoji2/emojipicker/EmojiPickerItems;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "emojiPickerItems"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Landroidx/emoji2/emojipicker/EmojiPickerItems;->getNumGroups()I

    move-result v1

    div-int/2addr v0, v1

    .line 233
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    const/4 p1, 0x1

    return p1
.end method
