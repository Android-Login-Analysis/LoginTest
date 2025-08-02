.class public final enum Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;
.super Ljava/lang/Enum;
.source "Fitzpatrick.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

.field public static final enum TYPE_1_2:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

.field public static final enum TYPE_3:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

.field public static final enum TYPE_4:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

.field public static final enum TYPE_5:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

.field public static final enum TYPE_6:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;


# instance fields
.field public final unicode:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_1_2:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_3:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_4:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_5:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_6:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    const/4 v1, 0x0

    const-string v2, "\ud83c\udffb"

    const-string v3, "TYPE_1_2"

    invoke-direct {v0, v3, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_1_2:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    .line 13
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    const/4 v1, 0x1

    const-string v2, "\ud83c\udffc"

    const-string v3, "TYPE_3"

    invoke-direct {v0, v3, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_3:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    .line 18
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    const/4 v1, 0x2

    const-string v2, "\ud83c\udffd"

    const-string v3, "TYPE_4"

    invoke-direct {v0, v3, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_4:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    .line 23
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    const/4 v1, 0x3

    const-string v2, "\ud83c\udffe"

    const-string v3, "TYPE_5"

    invoke-direct {v0, v3, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_5:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    .line 28
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    const/4 v1, 0x4

    const-string v2, "\ud83c\udfff"

    const-string v3, "TYPE_6"

    invoke-direct {v0, v3, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->TYPE_6:Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    .line 4
    invoke-static {}, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->$values()[Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->$VALUES:[Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->unicode:Ljava/lang/String;

    return-void
.end method

.method public static fitzpatrickFromType(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;
    .locals 0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fitzpatrickFromUnicode(Ljava/lang/CharSequence;I)Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;
    .locals 9

    .line 41
    invoke-static {}, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->values()[Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 44
    :goto_1
    iget-object v7, v4, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->unicode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 45
    iget-object v7, v4, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->unicode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    aget-char v7, v7, v6

    add-int v8, p1, v6

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_0

    const/4 v5, 0x0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;
    .locals 1

    .line 4
    const-class v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;
    .locals 1

    .line 4
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->$VALUES:[Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    return-object v0
.end method
