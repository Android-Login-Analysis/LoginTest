.class public final enum Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;
.super Ljava/lang/Enum;
.source "EmojiTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Matches"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

.field public static final enum EXACTLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

.field public static final enum IMPOSSIBLE:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

.field public static final enum POSSIBLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    const/4 v1, 0x0

    .line 126
    sget-object v2, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->EXACTLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->POSSIBLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->IMPOSSIBLE:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 127
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    const-string v1, "EXACTLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->EXACTLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    const-string v1, "POSSIBLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->POSSIBLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    const-string v1, "IMPOSSIBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->IMPOSSIBLE:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    .line 126
    invoke-static {}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->$values()[Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->$VALUES:[Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;
    .locals 1

    .line 126
    const-class v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;
    .locals 1

    .line 126
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->$VALUES:[Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    return-object v0
.end method


# virtual methods
.method public exactMatch()Z
    .locals 1

    .line 130
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->EXACTLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public impossibleMatch()Z
    .locals 1

    .line 134
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->IMPOSSIBLE:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
