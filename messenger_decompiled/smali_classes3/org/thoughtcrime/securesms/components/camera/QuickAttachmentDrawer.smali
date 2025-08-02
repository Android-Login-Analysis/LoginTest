.class public Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;
.super Landroid/view/ViewGroup;
.source "QuickAttachmentDrawer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;
.implements Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;,
        Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;,
        Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$CameraFlipClickListener;,
        Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;,
        Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;,
        Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$AttachmentDrawerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickAttachmentDrawer"


# instance fields
.field private animator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

.field private container:Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

.field private controls:Landroid/view/View;

.field private coverView:Landroid/view/View;

.field private coverViewPosition:I

.field private final dragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private final drawChildrenRect:Landroid/graphics/Rect;

.field private drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

.field private fullScreenButton:Landroid/widget/ImageButton;

.field private halfExpandedHeight:I

.field private initialMotionX:F

.field private initialMotionY:F

.field private listener:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$AttachmentDrawerListener;

.field private paused:Z

.field private rotation:I

.field private shutterButton:Landroid/widget/ImageButton;

.field private slideOffset:I

.field private swapCameraButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget-object p1, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->COLLAPSED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawChildrenRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->paused:Z

    .line 68
    new-instance p1, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;-><init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 69
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->initializeView()V

    .line 70
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->updateHalfExpandedAnchorPoint()V

    .line 71
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1000(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->isLandscape()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->coverView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;I)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->computeCoverTopPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/CameraView;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;I)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->computeCameraTopPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getContainer()Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroid/widget/ImageButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->swapCameraButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->controls:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroidx/customview/widget/ViewDragHelper;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    return-object p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerState(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V

    return-void
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideOffset:I

    return p0
.end method

.method static synthetic access$802(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;I)I
    .locals 0

    .line 33
    iput p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideOffset:I

    return p1
.end method

.method static synthetic access$900(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->halfExpandedHeight:I

    return p0
.end method

.method private computeCameraTopPosition(I)I
    .locals 4

    .line 491
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->halfExpandedHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 492
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    .line 493
    iget v2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->halfExpandedHeight:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->halfExpandedHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v3}, Lorg/thoughtcrime/securesms/util/Util;->clamp(FFF)F

    move-result p1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    add-int/2addr v1, p1

    return v1
.end method

.method private computeCoverTopPosition(I)I
    .locals 2

    .line 500
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getCoverView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getContainer()Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->container:Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->container:Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->container:Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    return-object v0
.end method

.method private getCoverView()Landroid/view/View;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->coverView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->coverViewPosition:I

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->coverView:Landroid/view/View;

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->coverView:Landroid/view/View;

    return-object v0
.end method

.method private initializeView()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00eb

    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0902b4

    .line 76
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/camera/CameraView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    .line 77
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->updateControlsView()V

    .line 79
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getChildCount()I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->coverViewPosition:I

    .line 80
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->controls:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->addListener(Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;)V

    return-void
.end method

.method public static isDeviceSupported(Landroid/content/Context;)Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 87
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDragViewUnder(II)Z
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 481
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v2, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getLocationOnScreen([I)V

    new-array v0, v0, [I

    .line 483
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/2addr v3, p1

    const/4 p1, 0x1

    aget v0, v0, p1

    add-int/2addr v0, p2

    aget p2, v1, v2

    if-lt v3, p2, :cond_0

    .line 486
    iget-object v4, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getWidth()I

    move-result v4

    add-int/2addr p2, v4

    if-ge v3, p2, :cond_0

    aget p2, v1, p1

    if-lt v0, p2, :cond_0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    .line 487
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    if-ge v0, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isLandscape()Z
    .locals 3

    .line 140
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private setDrawerState(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V
    .locals 3

    .line 289
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;->$SwitchMap$org$thoughtcrime$securesms$components$camera$QuickAttachmentDrawer$DrawerState:[I

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0801d8

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->fullScreenButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0801d9

    goto :goto_0

    :cond_1
    const v1, 0x7f0801d6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 294
    :cond_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    sget-object p1, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->FULL_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerState(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V

    return-void

    .line 298
    :cond_3
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->fullScreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 291
    :cond_4
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->fullScreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 306
    :goto_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->listener:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$AttachmentDrawerListener;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    if-eq p1, v1, :cond_5

    .line 307
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    .line 308
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$AttachmentDrawerListener;->onAttachmentDrawerStateChanged(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V

    :cond_5
    return-void
.end method

.method private slideTo(IZ)V
    .locals 2

    .line 504
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->animator:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 506
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->animator:Lcom/nineoldandroids/animation/ObjectAnimator;

    :cond_0
    if-nez p2, :cond_1

    .line 510
    iget p2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideOffset:I

    filled-new-array {p2, p1}, [I

    move-result-object p1

    const-string p2, "slideOffset"

    invoke-static {p0, p2, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->animator:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 511
    new-instance p2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 512
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->animator:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 513
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->animator:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 514
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 516
    :cond_1
    iput p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideOffset:I

    .line 517
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->requestLayout()V

    .line 518
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->invalidate()V

    :goto_0
    return-void
.end method

.method private updateControlsView()V
    .locals 4

    .line 120
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->TAG:Ljava/lang/String;

    const-string v1, "updateControlsView()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c00ed

    goto :goto_0

    :cond_0
    const v1, 0x7f0c00ec

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09033a

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->shutterButton:Landroid/widget/ImageButton;

    const v1, 0x7f090388

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->swapCameraButton:Landroid/widget/ImageButton;

    const v1, 0x7f090160

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->fullScreenButton:Landroid/widget/ImageButton;

    .line 127
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->isMultiCamera()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->swapCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->swapCameraButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->isRearCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0801d7

    goto :goto_1

    :cond_1
    const v2, 0x7f0801db

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 131
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->swapCameraButton:Landroid/widget/ImageButton;

    new-instance v2, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$CameraFlipClickListener;

    invoke-direct {v2, p0, v3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$CameraFlipClickListener;-><init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_2
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->shutterButton:Landroid/widget/ImageButton;

    new-instance v2, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;

    invoke-direct {v2, p0, v3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;-><init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->fullScreenButton:Landroid/widget/ImageButton;

    new-instance v2, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;

    invoke-direct {v2, p0, v3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;-><init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->controls:Landroid/view/View;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->swapChildInPlace(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;I)V

    .line 136
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->controls:Landroid/view/View;

    return-void
.end method

.method private updateHalfExpandedAnchorPoint()V
    .locals 1

    .line 154
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getContainer()Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getContainer()Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getKeyboardHeight()I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->halfExpandedHeight:I

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .line 273
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 277
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideOffset:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onPause()V

    .line 279
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->controls:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->setVisibility(I)V

    goto :goto_0

    .line 281
    :cond_1
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideOffset:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->isStarted()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->paused:Z

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->controls:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onResume()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 259
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawChildrenRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 260
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->coverView:Landroid/view/View;

    if-ne p2, v1, :cond_0

    .line 261
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawChildrenRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawChildrenRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->coverView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 265
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawChildrenRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 267
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method public getTargetSlideOffset()I
    .locals 2

    .line 318
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;->$SwitchMap$org$thoughtcrime$securesms$components$camera$QuickAttachmentDrawer$DrawerState:[I

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 320
    :cond_1
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->halfExpandedHeight:I

    return v0
.end method

.method public hide(Z)V
    .locals 1

    .line 97
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->COLLAPSED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-virtual {p0, v0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerStateAndUpdate(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;Z)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onCameraFail()V
    .locals 2

    .line 348
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->swapCameraButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->shutterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public onCameraStart()V
    .locals 2

    .line 354
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->swapCameraButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->shutterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public onCameraStop()V
    .locals 2

    .line 360
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->swapCameraButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->shutterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 107
    iget v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->rotation:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 108
    :goto_0
    iput v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->rotation:I

    if-eqz v1, :cond_1

    .line 110
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->updateControlsView()V

    .line 111
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-virtual {p0, v0, v2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerStateAndUpdate(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;Z)V

    .line 112
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onPause()V

    .line 114
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onResume()V

    :cond_1
    return-void
.end method

.method public onImageCapture([B)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 436
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 453
    :cond_1
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->initialMotionX:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 454
    iget v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->initialMotionY:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 455
    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_2

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    .line 458
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 461
    :cond_3
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->initialMotionX:F

    float-to-int v0, v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->initialMotionY:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->isDragViewUnder(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 462
    :cond_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    return v2

    .line 448
    :cond_5
    iput v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->initialMotionX:F

    .line 449
    iput v3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->initialMotionY:F

    .line 467
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 439
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    sget-object p2, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->FULL_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    if-ne p1, p2, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setSlideOffset(I)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getPaddingLeft()I

    move-result p1

    .line 166
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getPaddingTop()I

    move-result p2

    const/4 p3, 0x0

    .line 168
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_4

    .line 169
    invoke-virtual {p0, p3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 170
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 176
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    if-ne p4, v0, :cond_2

    .line 177
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideOffset:I

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->computeCameraTopPosition(I)I

    move-result v0

    add-int/2addr p5, v0

    .line 179
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    goto :goto_2

    :cond_1
    :goto_1
    move v1, p1

    goto :goto_2

    .line 181
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->controls:Landroid/view/View;

    if-ne p4, v0, :cond_3

    .line 182
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredHeight()I

    move-result p5

    move v1, p1

    move v0, p2

    goto :goto_2

    .line 184
    :cond_3
    iget v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideOffset:I

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->computeCoverTopPosition(I)I

    move-result v0

    add-int/2addr p5, v0

    goto :goto_1

    .line 187
    :goto_2
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 189
    invoke-virtual {p4, v1, v0, v2, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 196
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 197
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 198
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_7

    if-ne v1, v2, :cond_6

    .line 206
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 208
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 209
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 212
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    if-nez v1, :cond_0

    goto :goto_3

    .line 217
    :cond_0
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v6, -0x80000000

    const/4 v7, -0x1

    const/4 v8, -0x2

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    .line 225
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_1

    .line 222
    :cond_1
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_1

    .line 219
    :cond_2
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 230
    :goto_1
    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v9, v8, :cond_4

    if-eq v9, v7, :cond_3

    .line 238
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_2

    .line 235
    :cond_3
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_2

    .line 232
    :cond_4
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 242
    :goto_2
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setMeasuredDimension(II)V

    return-void

    .line 203
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->paused:Z

    .line 524
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->paused:Z

    .line 529
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    .line 251
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->updateHalfExpandedAnchorPoint()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setDrawerStateAndUpdate(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerStateAndUpdate(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;Z)V

    return-void
.end method

.method public setDrawerStateAndUpdate(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;Z)V
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    .line 331
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerState(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V

    .line 332
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->drawerState:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    if-eq v0, p1, :cond_0

    .line 333
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->updateHalfExpandedAnchorPoint()V

    .line 334
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getTargetSlideOffset()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideTo(IZ)V

    :cond_0
    return-void
.end method

.method public setListener(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$AttachmentDrawerListener;)V
    .locals 1

    .line 339
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->listener:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$AttachmentDrawerListener;

    .line 340
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->cameraView:Lorg/thoughtcrime/securesms/components/camera/CameraView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->addListener(Lorg/thoughtcrime/securesms/components/camera/CameraView$CameraViewListener;)V

    return-void
.end method

.method public setSlideOffset(I)V
    .locals 0

    .line 313
    iput p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->slideOffset:I

    .line 314
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->requestLayout()V

    return-void
.end method

.method public show(IZ)V
    .locals 0

    .line 102
    sget-object p1, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->HALF_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerStateAndUpdate(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;Z)V

    return-void
.end method
