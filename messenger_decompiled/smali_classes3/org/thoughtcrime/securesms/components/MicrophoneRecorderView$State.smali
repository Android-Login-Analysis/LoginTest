.class final enum Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;
.super Ljava/lang/Enum;
.source "MicrophoneRecorderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

.field public static final enum NOT_RUNNING:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

.field public static final enum RUNNING_HELD:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

.field public static final enum RUNNING_LOCKED:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    const/4 v1, 0x0

    .line 29
    sget-object v2, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->NOT_RUNNING:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_HELD:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_LOCKED:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    const-string v1, "NOT_RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->NOT_RUNNING:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    .line 31
    new-instance v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    const-string v1, "RUNNING_HELD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_HELD:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    .line 32
    new-instance v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    const-string v1, "RUNNING_LOCKED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_LOCKED:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    .line 29
    invoke-static {}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->$values()[Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->$VALUES:[Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;
    .locals 1

    .line 29
    const-class v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;
    .locals 1

    .line 29
    sget-object v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->$VALUES:[Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    return-object v0
.end method
