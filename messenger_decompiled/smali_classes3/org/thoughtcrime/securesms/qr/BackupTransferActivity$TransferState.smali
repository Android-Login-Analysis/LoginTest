.class public final enum Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;
.super Ljava/lang/Enum;
.source "BackupTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

.field public static final enum TRANSFER_ERROR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

.field public static final enum TRANSFER_SUCCESS:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

.field public static final enum TRANSFER_UNKNOWN:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    const/4 v1, 0x0

    .line 42
    sget-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_UNKNOWN:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_ERROR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_SUCCESS:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    const-string v1, "TRANSFER_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_UNKNOWN:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    .line 44
    new-instance v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    const-string v1, "TRANSFER_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_ERROR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    .line 45
    new-instance v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    const-string v1, "TRANSFER_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_SUCCESS:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    .line 42
    invoke-static {}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->$values()[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->$VALUES:[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;
    .locals 1

    .line 42
    const-class v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;
    .locals 1

    .line 42
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->$VALUES:[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    return-object v0
.end method
