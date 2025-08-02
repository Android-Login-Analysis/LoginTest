.class final Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BundledEmojiListLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Landroidx/emoji2/emojipicker/EmojiViewItem;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $it:I

.field final synthetic $ta:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;I)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;->$ta:Landroid/content/res/TypedArray;

    iput p3, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;->$it:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/emoji2/emojipicker/EmojiViewItem;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->INSTANCE:Landroidx/emoji2/emojipicker/BundledEmojiListLoader;

    iget-object v1, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;->$ta:Landroid/content/res/TypedArray;

    iget v3, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;->$it:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->access$loadSingleCategory(Landroidx/emoji2/emojipicker/BundledEmojiListLoader;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
