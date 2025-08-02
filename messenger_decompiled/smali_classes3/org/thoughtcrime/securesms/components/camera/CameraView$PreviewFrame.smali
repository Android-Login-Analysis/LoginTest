.class public Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;
.super Ljava/lang/Object;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewFrame"
.end annotation


# instance fields
.field private final data:[B

.field private final height:I

.field private final orientation:I

.field private final width:I


# direct methods
.method private constructor <init>([BIII)V
    .locals 0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;->data:[B

    .line 600
    iput p2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;->width:I

    .line 601
    iput p3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;->height:I

    .line 602
    iput p4, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;->orientation:I

    return-void
.end method

.method synthetic constructor <init>([BIIILorg/thoughtcrime/securesms/components/camera/CameraView$1;)V
    .locals 0

    .line 592
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;-><init>([BIII)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;->data:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 614
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;->height:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 618
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;->orientation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 610
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;->width:I

    return v0
.end method
