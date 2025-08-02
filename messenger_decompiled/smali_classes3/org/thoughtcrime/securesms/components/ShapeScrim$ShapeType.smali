.class final enum Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;
.super Ljava/lang/Enum;
.source "ShapeScrim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/ShapeScrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ShapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

.field public static final enum CIRCLE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

.field public static final enum SQUARE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    const/4 v1, 0x0

    .line 19
    sget-object v2, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->CIRCLE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->SQUARE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->CIRCLE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    new-instance v0, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    const-string v1, "SQUARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->SQUARE:Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    .line 19
    invoke-static {}, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->$values()[Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->$VALUES:[Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;
    .locals 1

    .line 19
    const-class v0, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;
    .locals 1

    .line 19
    sget-object v0, Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->$VALUES:[Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/components/ShapeScrim$ShapeType;

    return-object v0
.end method
