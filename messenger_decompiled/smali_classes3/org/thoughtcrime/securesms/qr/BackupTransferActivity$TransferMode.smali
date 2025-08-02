.class public final enum Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;
.super Ljava/lang/Enum;
.source "BackupTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

.field public static final enum INVALID:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

.field public static final enum RECEIVER_SCAN_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

.field public static final enum SENDER_SHOW_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;


# instance fields
.field private final i:I


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    const/4 v1, 0x0

    .line 32
    sget-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->INVALID:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->SENDER_SHOW_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->RECEIVER_SCAN_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->INVALID:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    .line 34
    new-instance v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    const-string v1, "SENDER_SHOW_QR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->SENDER_SHOW_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    .line 35
    new-instance v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    const-string v1, "RECEIVER_SCAN_QR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->RECEIVER_SCAN_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    .line 32
    invoke-static {}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->$values()[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->$VALUES:[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->i:I

    return-void
.end method

.method public static fromInt(I)Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;
    .locals 1

    .line 39
    invoke-static {}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->values()[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;
    .locals 1

    .line 32
    const-class v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;
    .locals 1

    .line 32
    sget-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->$VALUES:[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->i:I

    return v0
.end method
