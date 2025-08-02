.class Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$2;
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

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 508
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$2;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;->onPostMain(Ljava/lang/Object;)V

    return-void
.end method
