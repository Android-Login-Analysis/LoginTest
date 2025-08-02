.class Lorg/thoughtcrime/securesms/components/camera/CameraView$3$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView$3;->onPostMain(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/thoughtcrime/securesms/components/camera/CameraView$3;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView$3;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3$1;->this$1:Lorg/thoughtcrime/securesms/components/camera/CameraView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 239
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3$1;->this$1:Lorg/thoughtcrime/securesms/components/camera/CameraView$3;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3$1;->this$1:Lorg/thoughtcrime/securesms/components/camera/CameraView$3;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$1200(Lorg/thoughtcrime/securesms/components/camera/CameraView;)I

    move-result v5

    .line 244
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 246
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3$1;->this$1:Lorg/thoughtcrime/securesms/components/camera/CameraView$3;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;->val$previewCallback:Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewCallback;

    new-instance v7, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;-><init>([BIIILorg/thoughtcrime/securesms/components/camera/CameraView$1;)V

    invoke-interface {v0, v7}, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewCallback;->onPreviewFrame(Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;)V

    :cond_1
    return-void
.end method
