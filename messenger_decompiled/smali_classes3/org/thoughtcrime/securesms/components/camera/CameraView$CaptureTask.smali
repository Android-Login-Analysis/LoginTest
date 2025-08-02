.class Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;
.super Landroid/os/AsyncTask;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/camera/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[B",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final croppingRect:Landroid/graphics/Rect;

.field private final previewSize:Landroid/hardware/Camera$Size;

.field private final rotation:I

.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/hardware/Camera$Size;ILandroid/graphics/Rect;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 548
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->previewSize:Landroid/hardware/Camera$Size;

    .line 549
    iput p3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->rotation:I

    .line 550
    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->croppingRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 542
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->doInBackground([[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([[B)[B
    .locals 7

    const/4 v0, 0x0

    .line 555
    aget-object v1, p1, v0

    .line 557
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->previewSize:Landroid/hardware/Camera$Size;

    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->previewSize:Landroid/hardware/Camera$Size;

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->rotation:I

    iget-object v5, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->croppingRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    .line 562
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$100(Lorg/thoughtcrime/securesms/components/camera/CameraView;)I

    move-result p1

    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 557
    :goto_0
    invoke-static/range {v1 .. v6}, Lorg/thoughtcrime/securesms/util/BitmapUtil;->createFromNV21([BIIILandroid/graphics/Rect;Z)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 564
    invoke-static {}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 542
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 572
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;->this$0:Lorg/thoughtcrime/securesms/components/camera/CameraView;

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

    .line 573
    invoke-interface {v1, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;->onImageCapture([B)V

    goto :goto_0

    :cond_0
    return-void
.end method
