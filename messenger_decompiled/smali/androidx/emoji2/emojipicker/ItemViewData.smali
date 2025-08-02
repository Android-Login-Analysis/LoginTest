.class public abstract Landroidx/emoji2/emojipicker/ItemViewData;
.super Ljava/lang/Object;
.source "ItemViewData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0001\u0003\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/ItemViewData;",
        "",
        "itemType",
        "Landroidx/emoji2/emojipicker/ItemType;",
        "(Landroidx/emoji2/emojipicker/ItemType;)V",
        "getItemType",
        "()Landroidx/emoji2/emojipicker/ItemType;",
        "viewType",
        "",
        "getViewType",
        "()I",
        "Landroidx/emoji2/emojipicker/CategoryTitle;",
        "Landroidx/emoji2/emojipicker/EmojiViewData;",
        "Landroidx/emoji2/emojipicker/PlaceholderText;",
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
.field private final itemType:Landroidx/emoji2/emojipicker/ItemType;

.field private final viewType:I


# direct methods
.method private constructor <init>(Landroidx/emoji2/emojipicker/ItemType;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/emojipicker/ItemViewData;->itemType:Landroidx/emoji2/emojipicker/ItemType;

    .line 29
    invoke-virtual {p1}, Landroidx/emoji2/emojipicker/ItemType;->ordinal()I

    move-result p1

    iput p1, p0, Landroidx/emoji2/emojipicker/ItemViewData;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/emoji2/emojipicker/ItemType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/emoji2/emojipicker/ItemViewData;-><init>(Landroidx/emoji2/emojipicker/ItemType;)V

    return-void
.end method


# virtual methods
.method public final getItemType()Landroidx/emoji2/emojipicker/ItemType;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemViewData;->itemType:Landroidx/emoji2/emojipicker/ItemType;

    return-object v0
.end method

.method public final getViewType()I
    .locals 1

    .line 29
    iget v0, p0, Landroidx/emoji2/emojipicker/ItemViewData;->viewType:I

    return v0
.end method
