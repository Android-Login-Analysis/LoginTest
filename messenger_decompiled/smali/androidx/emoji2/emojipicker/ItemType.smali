.class public final enum Landroidx/emoji2/emojipicker/ItemType;
.super Ljava/lang/Enum;
.source "ItemViewData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/emoji2/emojipicker/ItemType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/ItemType;",
        "",
        "(Ljava/lang/String;I)V",
        "CATEGORY_TITLE",
        "PLACEHOLDER_TEXT",
        "EMOJI",
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
.field private static final synthetic $VALUES:[Landroidx/emoji2/emojipicker/ItemType;

.field public static final enum CATEGORY_TITLE:Landroidx/emoji2/emojipicker/ItemType;

.field public static final enum EMOJI:Landroidx/emoji2/emojipicker/ItemType;

.field public static final enum PLACEHOLDER_TEXT:Landroidx/emoji2/emojipicker/ItemType;


# direct methods
.method private static final synthetic $values()[Landroidx/emoji2/emojipicker/ItemType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/emoji2/emojipicker/ItemType;

    const/4 v1, 0x0

    sget-object v2, Landroidx/emoji2/emojipicker/ItemType;->CATEGORY_TITLE:Landroidx/emoji2/emojipicker/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/emoji2/emojipicker/ItemType;->PLACEHOLDER_TEXT:Landroidx/emoji2/emojipicker/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/emoji2/emojipicker/ItemType;->EMOJI:Landroidx/emoji2/emojipicker/ItemType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Landroidx/emoji2/emojipicker/ItemType;

    const-string v1, "CATEGORY_TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/emoji2/emojipicker/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/emoji2/emojipicker/ItemType;->CATEGORY_TITLE:Landroidx/emoji2/emojipicker/ItemType;

    .line 21
    new-instance v0, Landroidx/emoji2/emojipicker/ItemType;

    const-string v1, "PLACEHOLDER_TEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/emoji2/emojipicker/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/emoji2/emojipicker/ItemType;->PLACEHOLDER_TEXT:Landroidx/emoji2/emojipicker/ItemType;

    .line 22
    new-instance v0, Landroidx/emoji2/emojipicker/ItemType;

    const-string v1, "EMOJI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/emoji2/emojipicker/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/emoji2/emojipicker/ItemType;->EMOJI:Landroidx/emoji2/emojipicker/ItemType;

    invoke-static {}, Landroidx/emoji2/emojipicker/ItemType;->$values()[Landroidx/emoji2/emojipicker/ItemType;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/emojipicker/ItemType;->$VALUES:[Landroidx/emoji2/emojipicker/ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/emoji2/emojipicker/ItemType;
    .locals 1

    const-class v0, Landroidx/emoji2/emojipicker/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/emojipicker/ItemType;

    return-object p0
.end method

.method public static values()[Landroidx/emoji2/emojipicker/ItemType;
    .locals 1

    sget-object v0, Landroidx/emoji2/emojipicker/ItemType;->$VALUES:[Landroidx/emoji2/emojipicker/ItemType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/emoji2/emojipicker/ItemType;

    return-object v0
.end method
