.class final enum Lorg/thoughtcrime/securesms/components/camera/CameraView$State;
.super Ljava/lang/Enum;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/components/camera/CameraView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

.field public static final enum ACTIVE:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

.field public static final enum PAUSED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

.field public static final enum RESUMED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/components/camera/CameraView$State;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    const/4 v1, 0x0

    .line 622
    sget-object v2, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->PAUSED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->RESUMED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->ACTIVE:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 623
    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->PAUSED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    const-string v1, "RESUMED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->RESUMED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->ACTIVE:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    .line 622
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->$values()[Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->$VALUES:[Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 622
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/camera/CameraView$State;
    .locals 1

    .line 622
    const-class v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/components/camera/CameraView$State;
    .locals 1

    .line 622
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->$VALUES:[Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    return-object v0
.end method
