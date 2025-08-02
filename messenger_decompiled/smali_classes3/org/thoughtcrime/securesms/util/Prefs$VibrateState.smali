.class public final enum Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;
.super Ljava/lang/Enum;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/util/Prefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibrateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

.field public static final enum DEFAULT:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

.field public static final enum DISABLED:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

.field public static final enum ENABLED:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    const/4 v1, 0x0

    .line 70
    sget-object v2, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->DEFAULT:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->ENABLED:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->DISABLED:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->DEFAULT:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    new-instance v0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    const-string v1, "ENABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->ENABLED:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    new-instance v0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    const-string v1, "DISABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->DISABLED:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    .line 70
    invoke-static {}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->$values()[Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->$VALUES:[Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->id:I

    return-void
.end method

.method public static fromId(I)Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;
    .locals 1

    .line 75
    invoke-static {}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->values()[Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;
    .locals 1

    .line 70
    const-class v0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;
    .locals 1

    .line 70
    sget-object v0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->$VALUES:[Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->id:I

    return v0
.end method
