.class Lorg/thoughtcrime/securesms/components/camera/CameraView$2;
.super Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private cameraToDestroy:Lorg/thoughtcrime/securesms/util/guava/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostMain(Ljava/lang/Object;)V
    .locals 0

    .line 142
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->onPostMain(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostMain(Ljava/lang/Void;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$600(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->disable()V

    .line 168
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$802(Lorg/thoughtcrime/securesms/components/camera/CameraView;I)I

    .line 169
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$902(Lorg/thoughtcrime/securesms/components/camera/CameraView;I)I

    .line 170
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$1000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->removeView(Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$1000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->addView(Landroid/view/View;)V

    .line 172
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPause() completed"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPreMain()V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->cameraToDestroy:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 148
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$002(Lorg/thoughtcrime/securesms/components/camera/CameraView;Lorg/thoughtcrime/securesms/util/guava/Optional;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    return-void
.end method

.method protected bridge synthetic onRunBackground()Ljava/lang/Object;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->onRunBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onRunBackground()Ljava/lang/Void;
    .locals 3

    .line 153
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->cameraToDestroy:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$700(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V

    .line 156
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->cameraToDestroy:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 157
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;->cameraToDestroy:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 158
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "released old camera instance"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v1
.end method
