.class public final Landroidx/emoji2/emojipicker/StickyVariantProvider;
.super Ljava/lang/Object;
.source "StickyVariantProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/emojipicker/StickyVariantProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0080\u0002\u00a2\u0006\u0002\u0008\u0011J\u001d\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u0016R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/StickyVariantProvider;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "stickyVariantMap",
        "",
        "",
        "getStickyVariantMap",
        "()Ljava/util/Map;",
        "stickyVariantMap$delegate",
        "Lkotlin/Lazy;",
        "get",
        "emoji",
        "get$emoji2_emojipicker_release",
        "update",
        "",
        "baseEmoji",
        "variantClicked",
        "update$emoji2_emojipicker_release",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/emoji2/emojipicker/StickyVariantProvider$Companion;

.field public static final ENTRY_DELIMITER:Ljava/lang/String; = "|"

.field public static final KEY_VALUE_DELIMITER:Ljava/lang/String; = "="

.field public static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "androidx.emoji2.emojipicker.preferences"

.field public static final STICKY_VARIANT_PROVIDER_KEY:Ljava/lang/String; = "pref_key_sticky_variant"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final stickyVariantMap$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/emoji2/emojipicker/StickyVariantProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/emoji2/emojipicker/StickyVariantProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/emoji2/emojipicker/StickyVariantProvider;->Companion:Landroidx/emoji2/emojipicker/StickyVariantProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "androidx.emoji2.emojipicker.preferences"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/emojipicker/StickyVariantProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 36
    new-instance p1, Landroidx/emoji2/emojipicker/StickyVariantProvider$stickyVariantMap$2;

    invoke-direct {p1, p0}, Landroidx/emoji2/emojipicker/StickyVariantProvider$stickyVariantMap$2;-><init>(Landroidx/emoji2/emojipicker/StickyVariantProvider;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/emojipicker/StickyVariantProvider;->stickyVariantMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getSharedPreferences$p(Landroidx/emoji2/emojipicker/StickyVariantProvider;)Landroid/content/SharedPreferences;
    .locals 0

    .line 25
    iget-object p0, p0, Landroidx/emoji2/emojipicker/StickyVariantProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final getStickyVariantMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Landroidx/emoji2/emojipicker/StickyVariantProvider;->stickyVariantMap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final get$emoji2_emojipicker_release(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "emoji"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Landroidx/emoji2/emojipicker/StickyVariantProvider;->getStickyVariantMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final update$emoji2_emojipicker_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "baseEmoji"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variantClicked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Landroidx/emoji2/emojipicker/StickyVariantProvider;->getStickyVariantMap()Ljava/util/Map;

    move-result-object v0

    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :goto_0
    iget-object p1, p0, Landroidx/emoji2/emojipicker/StickyVariantProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 56
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    const-string/jumbo p2, "|"

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_key_sticky_variant"

    .line 54
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
