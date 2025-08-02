.class public final synthetic Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/qr/QrCodeHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrCodeHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->lambda$handleQrData$4$org-thoughtcrime-securesms-qr-QrCodeHandler(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
