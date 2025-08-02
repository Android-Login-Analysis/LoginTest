.class final Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BundledEmojiListLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/emoji2/emojipicker/BundledEmojiListLoader$EmojiDataCategory;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/emoji2/emojipicker/BundledEmojiListLoader$EmojiDataCategory;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.emoji2.emojipicker.BundledEmojiListLoader$loadEmoji$2$1$1"
    f = "BundledEmojiListLoader.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $categoryHeaderIconIds:[I

.field final synthetic $categoryNames:[Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $emojiFileCache:Landroidx/emoji2/emojipicker/utils/FileCache;

.field final synthetic $it:I

.field final synthetic $ta:Landroid/content/res/TypedArray;

.field label:I


# direct methods
.method constructor <init>(Landroidx/emoji2/emojipicker/utils/FileCache;ILandroid/content/Context;Landroid/content/res/TypedArray;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/emoji2/emojipicker/utils/FileCache;",
            "I",
            "Landroid/content/Context;",
            "Landroid/content/res/TypedArray;",
            "[I[",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$emojiFileCache:Landroidx/emoji2/emojipicker/utils/FileCache;

    iput p2, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$it:I

    iput-object p3, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$ta:Landroid/content/res/TypedArray;

    iput-object p5, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$categoryHeaderIconIds:[I

    iput-object p6, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$categoryNames:[Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;

    iget-object v1, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$emojiFileCache:Landroidx/emoji2/emojipicker/utils/FileCache;

    iget v2, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$it:I

    iget-object v3, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$ta:Landroid/content/res/TypedArray;

    iget-object v5, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$categoryHeaderIconIds:[I

    iget-object v6, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$categoryNames:[Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;-><init>(Landroidx/emoji2/emojipicker/utils/FileCache;ILandroid/content/Context;Landroid/content/res/TypedArray;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/emoji2/emojipicker/BundledEmojiListLoader$EmojiDataCategory;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 90
    iget v0, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$emojiFileCache:Landroidx/emoji2/emojipicker/utils/FileCache;

    sget-object v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->INSTANCE:Landroidx/emoji2/emojipicker/BundledEmojiListLoader;

    iget v1, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$it:I

    invoke-static {v0, v1}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->access$getCacheFileName(Landroidx/emoji2/emojipicker/BundledEmojiListLoader;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;

    iget-object v2, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$ta:Landroid/content/res/TypedArray;

    iget v4, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$it:I

    invoke-direct {v1, v2, v3, v4}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1$1;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1}, Landroidx/emoji2/emojipicker/utils/FileCache;->getOrPut$emoji2_emojipicker_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object p1

    .line 93
    iget-object v0, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$categoryHeaderIconIds:[I

    iget v1, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$it:I

    iget-object v2, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;->$categoryNames:[Ljava/lang/String;

    .line 94
    new-instance v3, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$EmojiDataCategory;

    .line 95
    aget v0, v0, v1

    .line 96
    aget-object v1, v2, v1

    .line 94
    invoke-direct {v3, v0, v1, p1}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$EmojiDataCategory;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v3

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
