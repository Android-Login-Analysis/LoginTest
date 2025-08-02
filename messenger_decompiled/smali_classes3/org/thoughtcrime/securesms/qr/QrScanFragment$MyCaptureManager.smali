.class public Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;
.super Lcom/journeyapps/barcodescanner/CaptureManager;
.source "QrScanFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/qr/QrScanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCaptureManager"
.end annotation


# instance fields
.field private final myActivity:Landroid/app/Activity;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/qr/QrScanFragment;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/qr/QrScanFragment;Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;->this$0:Lorg/thoughtcrime/securesms/qr/QrScanFragment;

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/journeyapps/barcodescanner/CaptureManager;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    .line 102
    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;->myActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected displayFrameworkBugMessageAndExit()V
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrScanFragment$MyCaptureManager;->myActivity:Landroid/app/Activity;

    const v1, 0x7f120444

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
