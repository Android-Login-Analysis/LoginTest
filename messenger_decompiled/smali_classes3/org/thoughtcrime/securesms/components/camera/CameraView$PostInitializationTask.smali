.class abstract Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;
.super Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PostInitializationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Lorg/thoughtcrime/securesms/components/camera/CameraView$1;)V
    .locals 0

    .line 528
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V

    return-void
.end method


# virtual methods
.method protected onWait()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/thoughtcrime/securesms/components/camera/CameraView$PreconditionsNotMetException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$1000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    monitor-exit v0

    return-void

    .line 535
    :cond_1
    :goto_1
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "waiting. surface ready? %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-static {v4}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$1000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->isReady()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/thoughtcrime/securesms/util/Util;->wait(Ljava/lang/Object;J)V

    goto :goto_0

    .line 532
    :cond_2
    new-instance v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreconditionsNotMetException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/components/camera/CameraView$PreconditionsNotMetException;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView$1;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 538
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
