.class final Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BundledEmojiListLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/emojipicker/BundledEmojiListLoader;->loadEmoji(Landroid/content/res/TypedArray;[I[Ljava/lang/String;Landroidx/emoji2/emojipicker/utils/FileCache;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Landroidx/emoji2/emojipicker/BundledEmojiListLoader$EmojiDataCategory;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBundledEmojiListLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BundledEmojiListLoader.kt\nandroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,140:1\n1549#2:141\n1620#2,3:142\n*S KotlinDebug\n*F\n+ 1 BundledEmojiListLoader.kt\nandroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2\n*L\n89#1:141\n89#1:142,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
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
    c = "androidx.emoji2.emojipicker.BundledEmojiListLoader$loadEmoji$2"
    f = "BundledEmojiListLoader.kt"
    i = {}
    l = {
        0x65
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $categoryHeaderIconIds:[I

.field final synthetic $categoryNames:[Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $emojiFileCache:Landroidx/emoji2/emojipicker/utils/FileCache;

.field final synthetic $ta:Landroid/content/res/TypedArray;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/res/TypedArray;Landroidx/emoji2/emojipicker/utils/FileCache;Landroid/content/Context;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Landroidx/emoji2/emojipicker/utils/FileCache;",
            "Landroid/content/Context;",
            "[I[",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$ta:Landroid/content/res/TypedArray;

    iput-object p2, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$emojiFileCache:Landroidx/emoji2/emojipicker/utils/FileCache;

    iput-object p3, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$context:Landroid/content/Context;

    iput-object p4, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$categoryHeaderIconIds:[I

    iput-object p5, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$categoryNames:[Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v7, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;

    iget-object v1, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$ta:Landroid/content/res/TypedArray;

    iget-object v2, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$emojiFileCache:Landroidx/emoji2/emojipicker/utils/FileCache;

    iget-object v3, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$categoryHeaderIconIds:[I

    iget-object v5, p0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$categoryNames:[Ljava/lang/String;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;-><init>(Landroid/content/res/TypedArray;Landroidx/emoji2/emojipicker/utils/FileCache;Landroid/content/Context;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Landroidx/emoji2/emojipicker/BundledEmojiListLoader$EmojiDataCategory;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 88
    iget v2, v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 89
    iget-object v4, v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$ta:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    iget-object v13, v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$emojiFileCache:Landroidx/emoji2/emojipicker/utils/FileCache;

    iget-object v14, v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$context:Landroid/content/Context;

    iget-object v15, v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$ta:Landroid/content/res/TypedArray;

    iget-object v12, v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$categoryHeaderIconIds:[I

    iget-object v11, v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->$categoryNames:[Ljava/lang/String;

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v5

    check-cast v10, Ljava/util/Collection;

    .line 142
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v4, v16

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 90
    new-instance v4, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;

    const/16 v19, 0x0

    move-object v5, v4

    move-object v6, v13

    move-object v8, v14

    move-object v9, v15

    move-object v3, v10

    move-object v10, v12

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v12, v19

    invoke-direct/range {v5 .. v12}, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2$1$1;-><init>(Landroidx/emoji2/emojipicker/utils/FileCache;ILandroid/content/Context;Landroid/content/res/TypedArray;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v2

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    .line 143
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v10, v3

    move-object/from16 v12, v21

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v10

    .line 144
    move-object v10, v3

    check-cast v10, Ljava/util/List;

    .line 141
    check-cast v10, Ljava/util/Collection;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    .line 101
    iput v3, v0, Landroidx/emoji2/emojipicker/BundledEmojiListLoader$loadEmoji$2;->label:I

    invoke-static {v10, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v2
.end method
