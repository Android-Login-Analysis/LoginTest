.class public final Landroidx/emoji2/emojipicker/utils/FileCache$Companion;
.super Ljava/lang/Object;
.source "FileCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/emojipicker/utils/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileCache.kt\nandroidx/emoji2/emojipicker/utils/FileCache$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n1#2:163\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/utils/FileCache$Companion;",
        "",
        "()V",
        "EMOJI_PICKER_FOLDER",
        "",
        "TAG",
        "instance",
        "Landroidx/emoji2/emojipicker/utils/FileCache;",
        "getInstance",
        "context",
        "Landroid/content/Context;",
        "getInstance$emoji2_emojipicker_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/emojipicker/utils/FileCache$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance$emoji2_emojipicker_release(Landroid/content/Context;)Landroidx/emoji2/emojipicker/utils/FileCache;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/emoji2/emojipicker/utils/FileCache;->access$getInstance$cp()Landroidx/emoji2/emojipicker/utils/FileCache;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-static {}, Landroidx/emoji2/emojipicker/utils/FileCache;->access$getInstance$cp()Landroidx/emoji2/emojipicker/utils/FileCache;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/emoji2/emojipicker/utils/FileCache;

    invoke-direct {v0, p1}, Landroidx/emoji2/emojipicker/utils/FileCache;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroidx/emoji2/emojipicker/utils/FileCache;->Companion:Landroidx/emoji2/emojipicker/utils/FileCache$Companion;

    invoke-static {v0}, Landroidx/emoji2/emojipicker/utils/FileCache;->access$setInstance$cp(Landroidx/emoji2/emojipicker/utils/FileCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method
