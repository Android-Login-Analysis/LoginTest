.class public Lorg/thoughtcrime/securesms/components/camera/CameraView;
.super Landroid/view/ViewGroup;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;,
        Lorg/thoughtcrime/securesms/components/camera/CameraView$State;,
        Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;,
        Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;,
        Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewCallback;,
        Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewFrame;,
        Lorg/thoughtcrime/securesms/components/camera/CameraView$PreconditionsNotMetException;,
        Lorg/thoughtcrime/securesms/components/camera/CameraView$CaptureTask;,
        Lorg/thoughtcrime/securesms/components/camera/CameraView$PostInitializationTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraView"


# instance fields
.field private volatile camera:Lorg/thoughtcrime/securesms/util/guava/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cameraId:I

.field private volatile displayOrientation:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOrientationChange:Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;

.field private outputOrientation:I

.field private previewSize:Landroid/hardware/Camera$Size;

.field private state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

.field private final surface:Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p3

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    const/4 p3, 0x0

    .line 61
    iput p3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->cameraId:I

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->displayOrientation:I

    .line 64
    sget-object v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->PAUSED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->listeners:Ljava/util/List;

    .line 67
    iput v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->outputOrientation:I

    const/high16 v1, -0x1000000

    .line 79
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->setBackgroundColor(I)V

    if-eqz p2, :cond_2

    .line 82
    sget-object v1, Lorg/thoughtcrime/securesms/R$styleable;->CameraView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-eq p3, v0, :cond_0

    .line 85
    iput p3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->cameraId:I

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->isMultiCamera()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getDirectCaptureCameraId(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->cameraId:I

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    :cond_2
    new-instance p2, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->surface:Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    .line 92
    new-instance p3, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onOrientationChange:Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;

    .line 93
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    return-object p0
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/components/camera/CameraView;Lorg/thoughtcrime/securesms/util/guava/Optional;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    return-object p1
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/camera/CameraView;)I
    .locals 0

    .line 54
    iget p0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->cameraId:I

    return p0
.end method

.method static synthetic access$1000(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->surface:Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/thoughtcrime/securesms/components/camera/CameraView;)I
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getCameraPictureOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->startPreview(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/hardware/Camera$Size;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getCroppedRect(Landroid/hardware/Camera$Size;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/hardware/Camera;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onCameraReady(Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Landroid/app/Activity;
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/components/camera/CameraView;)Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onOrientationChange:Lorg/thoughtcrime/securesms/components/camera/CameraView$OnOrientationChange;

    return-object p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->stopPreview()V

    return-void
.end method

.method static synthetic access$802(Lorg/thoughtcrime/securesms/components/camera/CameraView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->displayOrientation:I

    return p1
.end method

.method static synthetic access$900(Lorg/thoughtcrime/securesms/components/camera/CameraView;)I
    .locals 0

    .line 54
    iget p0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->outputOrientation:I

    return p0
.end method

.method static synthetic access$902(Lorg/thoughtcrime/securesms/components/camera/CameraView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->outputOrientation:I

    return p1
.end method

.method private enqueueTask(Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;)V
    .locals 1

    .line 484
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getJobManager()Lorg/thoughtcrime/securesms/jobmanager/JobManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->add(Lorg/thoughtcrime/securesms/jobmanager/Job;)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 384
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private getCameraInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 2

    .line 377
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 378
    iget v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->cameraId:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    return-object v0
.end method

.method private getCameraPictureOrientation()I
    .locals 2

    .line 356
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 357
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 357
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getCameraPictureRotation(I)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->outputOrientation:I

    goto :goto_0

    .line 360
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 361
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->displayOrientation:I

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->outputOrientation:I

    goto :goto_0

    .line 363
    :cond_1
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->displayOrientation:I

    iput v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->outputOrientation:I

    .line 366
    :goto_0
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->outputOrientation:I

    return v0
.end method

.method private getCroppedRect(Landroid/hardware/Camera$Size;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 6

    .line 455
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    .line 456
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    .line 458
    rem-int/lit16 p3, p3, 0xb4

    if-lez p3, :cond_0

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->rotateRect(Landroid/graphics/Rect;)V

    :cond_0
    int-to-float v1, v0

    .line 460
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 461
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    int-to-float v4, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 462
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v4, v2

    .line 464
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    .line 465
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    .line 466
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->isTroublemaker()Z

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    div-float v0, v3, v5

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_2
    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 467
    :goto_0
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-float/2addr v3, v5

    sub-float v0, v1, v3

    float-to-int v0, v0

    div-float/2addr v4, v5

    sub-float v2, p1, v4

    float-to-int v2, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-float/2addr p1, v4

    float-to-int p1, p1

    .line 469
    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-lez p3, :cond_3

    .line 474
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->rotateRect(Landroid/graphics/Rect;)V

    :cond_3
    return-object p2
.end method

.method private getPreferredPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 3

    .line 349
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->displayOrientation:I

    .line 350
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getMeasuredWidth()I

    move-result v1

    .line 351
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getMeasuredHeight()I

    move-result v2

    .line 349
    invoke-static {v0, v1, v2, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraUtils;->getPreferredPreviewSize(IIILandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object p1

    return-object p1
.end method

.method private isTroublemaker()Z
    .locals 3

    .line 371
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "JWR66Y"

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yakju"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onCameraReady(Landroid/hardware/Camera;)V
    .locals 4

    .line 275
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x1

    .line 277
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 278
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-picture"

    .line 279
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "continuous-video"

    .line 281
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 285
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/components/camera/CameraUtils;->getCameraDisplayOrientation(Landroid/app/Activity;Landroid/hardware/Camera$CameraInfo;)I

    move-result v1

    iput v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->displayOrientation:I

    .line 286
    iget v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->displayOrientation:I

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 287
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 288
    new-instance v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;

    invoke-direct {v1, p0, p1, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$4;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->enqueueTask(Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;)V

    return-void
.end method

.method private rotateRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 480
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private startPreview(Landroid/hardware/Camera$Parameters;)V
    .locals 7

    const-string v0, "camera.startPreview() -> "

    const-string v1, "starting preview with size "

    .line 303
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    :try_start_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera;

    .line 306
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getPreferredPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 309
    sget-object v4, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    sget-object v4, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->ACTIVE:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->stopPreview()V

    .line 311
    :cond_0
    iput-object v3, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->previewSize:Landroid/hardware/Camera$Size;

    .line 312
    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 313
    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->previewSize:Landroid/hardware/Camera$Size;

    .line 317
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 318
    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 319
    sget-object p1, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object p1, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->ACTIVE:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    .line 321
    new-instance p1, Lorg/thoughtcrime/securesms/components/camera/CameraView$5;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$5;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 331
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private stopPreview()V
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 340
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->RESUMED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 342
    sget-object v1, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public flipCamera()V
    .locals 2

    .line 264
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 265
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->cameraId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 267
    :goto_0
    iput v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->cameraId:I

    .line 268
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onPause()V

    .line 269
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onResume()V

    .line 270
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->cameraId:I

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->setDirectCaptureCameraId(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public getCameraPictureRotation(I)I
    .locals 3

    .line 388
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    add-int/lit8 p1, p1, 0x2d

    .line 391
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    .line 393
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 394
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 396
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    :goto_0
    return v0
.end method

.method public isMultiCamera()Z
    .locals 2

    .line 256
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRearCamera()Z
    .locals 1

    .line 260
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->cameraId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    sget-object v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->PAUSED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 193
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->previewSize:Landroid/hardware/Camera$Size;

    if-eqz p1, :cond_2

    .line 194
    iget p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->displayOrientation:I

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_1

    iget p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->displayOrientation:I

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    .line 199
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_1

    .line 195
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    .line 196
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    goto :goto_1

    :cond_2
    move p1, p4

    move p2, p5

    :goto_1
    if-eqz p2, :cond_5

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    mul-int p3, p4, p2

    mul-int v0, p5, p1

    const/4 v1, 0x0

    if-le p3, v0, :cond_4

    .line 212
    div-int/2addr p3, p1

    .line 213
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->surface:Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    sub-int p2, p5, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p1, v1, p2, p4, p5}, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->layout(IIII)V

    goto :goto_2

    .line 215
    :cond_4
    div-int/2addr v0, p2

    .line 216
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->surface:Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;

    sub-int p2, p4, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p2, v1, p4, p5}, Lorg/thoughtcrime/securesms/components/camera/CameraSurfaceView;->layout(IIII)V

    :goto_2
    return-void

    .line 207
    :cond_5
    :goto_3
    sget-object p1, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    const-string p2, "skipping layout due to zero-width/height preview size"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    sget-object v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->PAUSED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 139
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->PAUSED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    .line 140
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    const-string v1, "onPause() queued"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$2;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->enqueueTask(Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;)V

    .line 176
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;

    .line 177
    invoke-interface {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;->onCameraStop()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    sget-object v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->PAUSED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 98
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$State;->RESUMED:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->state:Lorg/thoughtcrime/securesms/components/camera/CameraView$State;

    .line 99
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    const-string v1, "onResume() queued"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView$1;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;)V

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->enqueueTask(Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 222
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSizeChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 224
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->startPreview(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public setPreviewCallback(Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewCallback;)V
    .locals 1

    .line 232
    new-instance v0, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$3;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Lorg/thoughtcrime/securesms/components/camera/CameraView$PreviewCallback;)V

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->enqueueTask(Lorg/thoughtcrime/securesms/components/camera/CameraView$SerialAsyncTask;)V

    return-void
.end method

.method public takePicture(Landroid/graphics/Rect;)V
    .locals 2

    .line 432
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/CameraView;->camera:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    new-instance v1, Lorg/thoughtcrime/securesms/components/camera/CameraView$6;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView$6;-><init>(Lorg/thoughtcrime/securesms/components/camera/CameraView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void

    .line 433
    :cond_1
    :goto_0
    sget-object p1, Lorg/thoughtcrime/securesms/components/camera/CameraView;->TAG:Ljava/lang/String;

    const-string v0, "camera not in capture-ready state"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
