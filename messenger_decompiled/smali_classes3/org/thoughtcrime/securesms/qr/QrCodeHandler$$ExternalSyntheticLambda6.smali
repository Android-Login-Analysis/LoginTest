.class public final synthetic Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

.field public final synthetic f$1:Lcom/b44t/messenger/DcLot;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Lcom/b44t/messenger/DcLot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda6;->f$0:Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda6;->f$1:Lcom/b44t/messenger/DcLot;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda6;->f$0:Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda6;->f$1:Lcom/b44t/messenger/DcLot;

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->lambda$showFingerprintOrQrSuccess$10$org-thoughtcrime-securesms-qr-QrCodeHandler(Lcom/b44t/messenger/DcLot;Landroid/content/DialogInterface;I)V

    return-void
.end method
