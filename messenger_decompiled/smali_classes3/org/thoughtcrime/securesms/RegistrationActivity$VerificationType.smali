.class final enum Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;
.super Ljava/lang/Enum;
.source "RegistrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/RegistrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VerificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

.field public static final enum EMAIL:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

.field public static final enum PORT:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

.field public static final enum SERVER:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    const/4 v1, 0x0

    .line 75
    sget-object v2, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->EMAIL:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->SERVER:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->PORT:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    const-string v1, "EMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->EMAIL:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    .line 77
    new-instance v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    const-string v1, "SERVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->SERVER:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    .line 78
    new-instance v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    const-string v1, "PORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->PORT:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    .line 75
    invoke-static {}, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->$values()[Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->$VALUES:[Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;
    .locals 1

    .line 75
    const-class v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;
    .locals 1

    .line 75
    sget-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->$VALUES:[Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    return-object v0
.end method
