.class Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "QuickAttachmentDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;-><init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    return p2
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 425
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 377
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$500(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    if-nez p1, :cond_0

    .line 378
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$600(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$700(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V

    .line 379
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getTargetSlideOffset()I

    move-result v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$802(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;I)I

    .line 380
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 390
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$800(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)I

    move-result p2

    sub-int/2addr p2, p5

    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-static {p2, p4, p3}, Lorg/thoughtcrime/securesms/util/Util;->clamp(III)I

    move-result p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$802(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;I)I

    .line 391
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->requestLayout()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 2

    .line 396
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$400(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_6

    neg-float p1, p3

    .line 398
    sget-object p2, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->COLLAPSED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpl-float p3, p1, p3

    if-lez p3, :cond_0

    .line 401
    sget-object p2, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->FULL_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    goto :goto_2

    :cond_0
    const/high16 p3, -0x40800000    # -1.0f

    cmpg-float p1, p1, p3

    if-gez p1, :cond_3

    .line 403
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$800(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)I

    move-result p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$900(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1000(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 404
    sget-object p1, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->HALF_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->COLLAPSED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    :goto_1
    move-object p2, p1

    goto :goto_2

    .line 405
    :cond_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1000(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 406
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$800(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)I

    move-result p1

    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$900(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)I

    move-result p3

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    if-lt p1, p3, :cond_4

    .line 407
    sget-object p2, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->FULL_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    goto :goto_2

    .line 408
    :cond_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$800(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)I

    move-result p1

    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$900(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    if-lt p1, p3, :cond_5

    .line 409
    sget-object p2, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->HALF_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    .line 413
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$700(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V

    .line 414
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->getTargetSlideOffset()I

    move-result p1

    .line 415
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$500(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1100(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 416
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$500(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1100(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {v1, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1200(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 417
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$500(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1300(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/CameraView;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 418
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$500(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p3}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1300(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/CameraView;

    move-result-object p3

    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getLeft()I

    move-result p3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1400(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 419
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 372
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ViewDragHelperCallback;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$400(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
