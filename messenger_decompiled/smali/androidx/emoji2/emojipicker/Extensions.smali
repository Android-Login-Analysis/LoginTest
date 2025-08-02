.class public final Landroidx/emoji2/emojipicker/Extensions;
.super Ljava/lang/Object;
.source "ItemViewData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/Extensions;",
        "",
        "()V",
        "toItemType",
        "Landroidx/emoji2/emojipicker/ItemType;",
        "",
        "toItemType$emoji2_emojipicker_release",
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
.field public static final INSTANCE:Landroidx/emoji2/emojipicker/Extensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/emoji2/emojipicker/Extensions;

    invoke-direct {v0}, Landroidx/emoji2/emojipicker/Extensions;-><init>()V

    sput-object v0, Landroidx/emoji2/emojipicker/Extensions;->INSTANCE:Landroidx/emoji2/emojipicker/Extensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toItemType$emoji2_emojipicker_release(I)Landroidx/emoji2/emojipicker/ItemType;
    .locals 1

    .line 53
    invoke-static {}, Landroidx/emoji2/emojipicker/ItemType;->values()[Landroidx/emoji2/emojipicker/ItemType;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
