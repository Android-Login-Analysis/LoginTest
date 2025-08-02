.class public final Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;
.super Ljava/lang/Object;
.source "UnicodeRenderableManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnicodeRenderableManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnicodeRenderableManager.kt\nandroidx/emoji2/emojipicker/utils/UnicodeRenderableManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0007J\r\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u000eJ\u0015\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u0010J\u000e\u0010\u0011\u001a\u0004\u0018\u00010\u0005*\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;",
        "",
        "()V",
        "CATEGORY_MOVED_EMOJIS",
        "",
        "",
        "VARIATION_SELECTOR",
        "YAWNING_FACE_EMOJI",
        "paint",
        "Landroid/text/TextPaint;",
        "getClosestRenderable",
        "emoji",
        "isEmoji12Supported",
        "",
        "isEmoji12Supported$emoji2_emojipicker_release",
        "isEmojiRenderable",
        "isEmojiRenderable$emoji2_emojipicker_release",
        "takeIfHasGlyph",
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
.field private static final CATEGORY_MOVED_EMOJIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;

.field private static final VARIATION_SELECTOR:Ljava/lang/String; = "\ufe0f"

.field private static final YAWNING_FACE_EMOJI:Ljava/lang/String; = "\ud83e\udd71"

.field private static final paint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;

    invoke-direct {v0}, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;-><init>()V

    sput-object v0, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->INSTANCE:Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->paint:Landroid/text/TextPaint;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u2695\ufe0f"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u2640\ufe0f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u2642\ufe0f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u265f\ufe0f"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u267e\ufe0f"

    aput-object v2, v0, v1

    .line 43
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->CATEGORY_MOVED_EMOJIS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final takeIfHasGlyph(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->paint:Landroid/text/TextPaint;

    check-cast v0, Landroid/graphics/Paint;

    invoke-static {v0, p1}, Landroidx/core/graphics/PaintCompat;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final getClosestRenderable(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "emoji"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-string/jumbo v3, "\ufe0f"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    .line 74
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->takeIfHasGlyph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->takeIfHasGlyph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;

    .line 77
    sget-object v0, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->CATEGORY_MOVED_EMOJIS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "\ufe0f"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 78
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->takeIfHasGlyph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v0, p1

    :cond_2
    return-object v0
.end method

.method public final isEmoji12Supported$emoji2_emojipicker_release()Z
    .locals 1

    const-string/jumbo v0, "\ud83e\udd71"

    .line 69
    invoke-virtual {p0, v0}, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->isEmojiRenderable$emoji2_emojipicker_release(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isEmojiRenderable$emoji2_emojipicker_release(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "emoji"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Landroidx/emoji2/emojipicker/EmojiPickerView;->Companion:Landroidx/emoji2/emojipicker/EmojiPickerView$Companion;

    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/EmojiPickerView$Companion;->getEmojiCompatLoaded$emoji2_emojipicker_release()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    const v3, 0x7fffffff

    invoke-virtual {v0, p1, v3}, Landroidx/emoji2/text/EmojiCompat;->getEmojiMatch(Ljava/lang/CharSequence;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/emoji2/emojipicker/utils/UnicodeRenderableManager;->getClosestRenderable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
