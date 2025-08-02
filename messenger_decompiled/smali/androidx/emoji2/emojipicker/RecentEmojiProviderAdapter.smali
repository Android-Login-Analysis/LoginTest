.class public final Landroidx/emoji2/emojipicker/RecentEmojiProviderAdapter;
.super Ljava/lang/Object;
.source "RecentEmojiAsyncProvider.kt"

# interfaces
.implements Landroidx/emoji2/emojipicker/RecentEmojiProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/RecentEmojiProviderAdapter;",
        "Landroidx/emoji2/emojipicker/RecentEmojiProvider;",
        "recentEmojiAsyncProvider",
        "Landroidx/emoji2/emojipicker/RecentEmojiAsyncProvider;",
        "(Landroidx/emoji2/emojipicker/RecentEmojiAsyncProvider;)V",
        "getRecentEmojiList",
        "",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "recordSelection",
        "",
        "emoji",
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
.field private final recentEmojiAsyncProvider:Landroidx/emoji2/emojipicker/RecentEmojiAsyncProvider;


# direct methods
.method public constructor <init>(Landroidx/emoji2/emojipicker/RecentEmojiAsyncProvider;)V
    .locals 1

    const-string v0, "recentEmojiAsyncProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/emojipicker/RecentEmojiProviderAdapter;->recentEmojiAsyncProvider:Landroidx/emoji2/emojipicker/RecentEmojiAsyncProvider;

    return-void
.end method


# virtual methods
.method public getRecentEmojiList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroidx/emoji2/emojipicker/RecentEmojiProviderAdapter;->recentEmojiAsyncProvider:Landroidx/emoji2/emojipicker/RecentEmojiAsyncProvider;

    invoke-interface {v0}, Landroidx/emoji2/emojipicker/RecentEmojiAsyncProvider;->getRecentEmojiListAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/guava/ListenableFutureKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public recordSelection(Ljava/lang/String;)V
    .locals 1

    const-string v0, "emoji"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Landroidx/emoji2/emojipicker/RecentEmojiProviderAdapter;->recentEmojiAsyncProvider:Landroidx/emoji2/emojipicker/RecentEmojiAsyncProvider;

    invoke-interface {v0, p1}, Landroidx/emoji2/emojipicker/RecentEmojiAsyncProvider;->recordSelection(Ljava/lang/String;)V

    return-void
.end method
