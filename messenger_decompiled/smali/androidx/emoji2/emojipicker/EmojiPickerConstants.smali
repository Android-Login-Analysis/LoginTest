.class public final Landroidx/emoji2/emojipicker/EmojiPickerConstants;
.super Ljava/lang/Object;
.source "EmojiPickerConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/EmojiPickerConstants;",
        "",
        "()V",
        "ADD_VIEW_EXCEPTION_MESSAGE",
        "",
        "DEFAULT_BODY_COLUMNS",
        "",
        "DEFAULT_MAX_RECENT_ITEM_ROWS",
        "EMOJI_VIEW_POOL_SIZE",
        "REMOVE_VIEW_EXCEPTION_MESSAGE",
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
.field public static final ADD_VIEW_EXCEPTION_MESSAGE:Ljava/lang/String; = "Adding views to the EmojiPickerView is unsupported"

.field public static final DEFAULT_BODY_COLUMNS:I = 0x9

.field public static final DEFAULT_MAX_RECENT_ITEM_ROWS:I = 0x3

.field public static final EMOJI_VIEW_POOL_SIZE:I = 0x64

.field public static final INSTANCE:Landroidx/emoji2/emojipicker/EmojiPickerConstants;

.field public static final REMOVE_VIEW_EXCEPTION_MESSAGE:Ljava/lang/String; = "Removing views from the EmojiPickerView is unsupported"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/emoji2/emojipicker/EmojiPickerConstants;

    invoke-direct {v0}, Landroidx/emoji2/emojipicker/EmojiPickerConstants;-><init>()V

    sput-object v0, Landroidx/emoji2/emojipicker/EmojiPickerConstants;->INSTANCE:Landroidx/emoji2/emojipicker/EmojiPickerConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
