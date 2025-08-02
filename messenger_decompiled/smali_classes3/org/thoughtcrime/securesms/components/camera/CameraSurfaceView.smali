.class public Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;
.super Landroid/view/SurfaceView;
.source "CameraSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private ready:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 14
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->ready:Z

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->ready:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->ready:Z

    return-void
.end method
