.class Lorg/thoughtcrime/securesms/components/camera/CameraView$1;
.super Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;->onResume()V
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
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostMain(Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->onPostMain(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostMain(Ljava/lang/Void;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_1

    .line 122
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tried to open camera but got null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$400(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;

    .line 124
    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;->onCameraFail()V

    goto :goto_0

    :cond_0
    return-void

    .line 129
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$500(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 130
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$600(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;->enable()V

    .line 132
    :cond_2
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onResume() completed"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onRunBackground()Ljava/lang/Object;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->onRunBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onRunBackground()Ljava/lang/Void;
    .locals 7

    const-string v0, "camera.open() -> "

    .line 106
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 107
    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$100(Lorg/thoughtcrime/securesms/components/camera/CameraView;)I

    move-result v4

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    invoke-static {v4}, Lorg/thoughtcrime/securesms/util/guava/Optional;->fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$002(Lorg/thoughtcrime/securesms/components/camera/CameraView;Lorg/thoughtcrime/securesms/util/guava/Optional;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 108
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :try_start_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$300(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/hardware/Camera;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 111
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 114
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
