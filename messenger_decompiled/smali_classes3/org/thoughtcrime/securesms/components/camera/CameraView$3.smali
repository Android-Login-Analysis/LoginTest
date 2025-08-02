.class Lorg/thoughtcrime/securesms/components/camera/CameraView$3;
.super Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;->setPreviewCallback(Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewCallback;)V
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

.field final synthetic val$previewCallback:Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewCallback;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewCallback;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;->val$previewCallback:Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Lorg/thoughtcrime/securesms/components/camera/CameraView$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostMain(Ljava/lang/Object;)V
    .locals 0

    .line 232
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;->onPostMain(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostMain(Ljava/lang/Void;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera;

    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$3$1;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView$3;)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method
