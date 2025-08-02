.class abstract Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;
.super Lorg/thoughtcrime/securesms/jobmanager/Job;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SerialAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/thoughtcrime/securesms/jobmanager/Job;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 490
    invoke-static {}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->newBuilder()Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;

    move-result-object v0

    const-class v1, Lorg/thoughtcrime/securesms/components/camera/CameraView;

    const-string v1, "CameraView"

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->withGroupId(Ljava/lang/String;)Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->create()Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;-><init>(Lorg/thoughtcrime/securesms/jobmanager/JobParameters;)V

    return-void
.end method


# virtual methods
.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onCanceled()V
    .locals 0

    return-void
.end method

.method protected onPostMain(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreMain()V
    .locals 0

    return-void
.end method

.method public final onRun()V
    .locals 2

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;->onWait()V

    .line 498
    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$1;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 504
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;->onRunBackground()Ljava/lang/Object;

    move-result-object v0

    .line 506
    new-instance v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$2;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$2;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMainSync(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/thoughtcrime/securesms/components/camera/CameraView$PreconditionsNotMetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skipping task, preconditions not met in onWait()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onRunBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onShouldRetry(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onWait()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/thoughtcrime/securesms/components/camera/CameraView$PreconditionsNotMetException;
        }
    .end annotation

    return-void
.end method
