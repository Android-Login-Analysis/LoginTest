.class Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;
.super Landroid/view/OrientationEventListener;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOrientationChange"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/content/Context;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    .line 404
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->disable()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 410
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getCameraPictureRotation(I)I

    move-result p1

    .line 413
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$900(Lorg/thoughtcrime/securesms/components/camera/CameraView;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 414
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$902(Lorg/thoughtcrime/securesms/components/camera/CameraView;I)I

    .line 416
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 418
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$900(Lorg/thoughtcrime/securesms/components/camera/CameraView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 421
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 424
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception updating camera parameters in orientation change"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
