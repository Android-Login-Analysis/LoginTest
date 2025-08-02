.class final Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EmojiPickerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/emoji2/emojipicker/EmojiPickerItems;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/emoji2/emojipicker/EmojiPickerItems;",
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

    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$1;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/emoji2/emojipicker/EmojiPickerItems;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$1;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {v0}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getEmojiPickerItems$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Landroidx/emoji2/emojipicker/EmojiPickerItems;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "emojiPickerItems"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/EmojiPickerView$createEmojiPickerBodyAdapter$1;->invoke()Landroidx/emoji2/emojipicker/EmojiPickerItems;

    move-result-object v0

    return-object v0
.end method
