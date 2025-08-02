.class public final Landroidx/emoji2/emojipicker/EmojiPickerView$2;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "EmojiPickerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/emojipicker/EmojiPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "androidx/emoji2/emojipicker/EmojiPickerView$2",
        "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
        "onFailed",
        "",
        "throwable",
        "",
        "onInitialized",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;


# direct methods
.method constructor <init>(Landroidx/emoji2/emojipicker/EmojiPickerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$2;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    iput-object p2, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$2;->$context:Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onInitialized()V
    .locals 7

    .line 123
    sget-object v0, Landroidx/emoji2/emojipicker/EmojiPickerView;->Companion:Landroidx/emoji2/emojipicker/EmojiPickerView$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/emoji2/emojipicker/EmojiPickerView$Companion;->setEmojiCompatLoaded$emoji2_emojipicker_release(Z)V

    .line 124
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$2;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    invoke-static {v0}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getScope$p(Landroidx/emoji2/emojipicker/EmojiPickerView;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Landroidx/emoji2/emojipicker/EmojiPickerView$2$onInitialized$1;

    iget-object v4, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Landroidx/emoji2/emojipicker/EmojiPickerView$2;->this$0:Landroidx/emoji2/emojipicker/EmojiPickerView;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Landroidx/emoji2/emojipicker/EmojiPickerView$2$onInitialized$1;-><init>(Landroid/content/Context;Landroidx/emoji2/emojipicker/EmojiPickerView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
