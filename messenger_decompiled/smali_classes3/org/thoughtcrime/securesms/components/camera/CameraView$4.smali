.class Lorg/thoughtcrime/securesms/components/camera/CameraView$4;
.super Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;->onCameraReady(Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

.field final synthetic val$camera:Landroid/hardware/Camera;

.field final synthetic val$parameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;->val$camera:Landroid/hardware/Camera;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;->val$parameters:Landroid/hardware/Camera$Parameters;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Lorg/thoughtcrime/securesms/components/camera/CameraView$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onRunBackground()Ljava/lang/Object;
    .locals 1

    .line 288
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;->onRunBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onRunBackground()Ljava/lang/Void;
    .locals 3

    .line 292
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;->val$camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$1000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 293
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;->val$parameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$1400(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 295
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "couldn\'t set preview display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
