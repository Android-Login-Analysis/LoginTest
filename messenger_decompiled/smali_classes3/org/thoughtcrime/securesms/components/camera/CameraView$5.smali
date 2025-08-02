.class Lorg/thoughtcrime/securesms/components/camera/CameraView$5;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;->startPreview(Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$5;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 324
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$5;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->requestLayout()V

    .line 325
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$5;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$400(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;

    .line 326
    invoke-interface {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;->onCameraStart()V

    goto :goto_0

    :cond_0
    return-void
.end method
