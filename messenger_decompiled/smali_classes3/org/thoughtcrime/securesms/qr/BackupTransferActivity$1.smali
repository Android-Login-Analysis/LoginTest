.class synthetic Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$1;
.super Ljava/lang/Object;
.source "BackupTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/qr/BackupTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$thoughtcrime$securesms$qr$BackupTransferActivity$TransferMode:[I

.field static final synthetic $SwitchMap$org$thoughtcrime$securesms$qr$BackupTransferActivity$TransferState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 158
    invoke-static {}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->values()[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$1;->$SwitchMap$org$thoughtcrime$securesms$qr$BackupTransferActivity$TransferState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_ERROR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$1;->$SwitchMap$org$thoughtcrime$securesms$qr$BackupTransferActivity$TransferState:[I

    sget-object v3, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->TRANSFER_SUCCESS:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :catch_1
    invoke-static {}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->values()[Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$1;->$SwitchMap$org$thoughtcrime$securesms$qr$BackupTransferActivity$TransferMode:[I

    :try_start_2
    sget-object v3, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->SENDER_SHOW_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$1;->$SwitchMap$org$thoughtcrime$securesms$qr$BackupTransferActivity$TransferMode:[I

    sget-object v2, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->RECEIVER_SCAN_QR:Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/qr/BackupTransferActivity$TransferMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
