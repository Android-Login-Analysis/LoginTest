.class public final Landroidx/emoji2/emojipicker/EmojiPickerView$Companion;
.super Ljava/lang/Object;
.source "EmojiPickerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/emojipicker/EmojiPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/EmojiPickerView$Companion;",
        "",
        "()V",
        "emojiCompatLoaded",
        "",
        "getEmojiCompatLoaded$emoji2_emojipicker_release",
        "()Z",
        "setEmojiCompatLoaded$emoji2_emojipicker_release",
        "(Z)V",
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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/emojipicker/EmojiPickerView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmojiCompatLoaded$emoji2_emojipicker_release()Z
    .locals 1

    .line 50
    invoke-static {}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$getEmojiCompatLoaded$cp()Z

    move-result v0

    return v0
.end method

.method public final setEmojiCompatLoaded$emoji2_emojipicker_release(Z)V
    .locals 0

    .line 50
    invoke-static {p1}, Landroidx/emoji2/emojipicker/EmojiPickerView;->access$setEmojiCompatLoaded$cp(Z)V

    return-void
.end method
