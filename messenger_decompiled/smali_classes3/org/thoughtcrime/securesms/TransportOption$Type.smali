.class public final enum Lorg/thoughtcrime/securesms/TransportOption$Type;
.super Ljava/lang/Enum;
.source "TransportOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/TransportOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/TransportOption$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/TransportOption$Type;

.field public static final enum NORMAL_MAIL:Lorg/thoughtcrime/securesms/TransportOption$Type;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/TransportOption$Type;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/thoughtcrime/securesms/TransportOption$Type;

    const/4 v1, 0x0

    .line 8
    sget-object v2, Lorg/thoughtcrime/securesms/TransportOption$Type;->NORMAL_MAIL:Lorg/thoughtcrime/securesms/TransportOption$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lorg/thoughtcrime/securesms/TransportOption$Type;

    const-string v1, "NORMAL_MAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/TransportOption$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/TransportOption$Type;->NORMAL_MAIL:Lorg/thoughtcrime/securesms/TransportOption$Type;

    .line 8
    invoke-static {}, Lorg/thoughtcrime/securesms/TransportOption$Type;->$values()[Lorg/thoughtcrime/securesms/TransportOption$Type;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/TransportOption$Type;->$VALUES:[Lorg/thoughtcrime/securesms/TransportOption$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/TransportOption$Type;
    .locals 1

    .line 8
    const-class v0, Lorg/thoughtcrime/securesms/TransportOption$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/TransportOption$Type;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/TransportOption$Type;
    .locals 1

    .line 8
    sget-object v0, Lorg/thoughtcrime/securesms/TransportOption$Type;->$VALUES:[Lorg/thoughtcrime/securesms/TransportOption$Type;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/TransportOption$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/TransportOption$Type;

    return-object v0
.end method
