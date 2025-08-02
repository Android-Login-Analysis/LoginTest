.class Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$1;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;->onPreMain()V

    return-void
.end method
