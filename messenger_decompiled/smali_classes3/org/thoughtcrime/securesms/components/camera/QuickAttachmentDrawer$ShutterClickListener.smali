.class Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;
.super Ljava/lang/Object;
.source "QuickAttachmentDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;-><init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 543
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$600(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->FULL_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 544
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1500(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getKeyboardHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1300(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/CameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getMeasuredHeight()I

    move-result p1

    .line 545
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1300(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/CameraView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v1, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 546
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$ShutterClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1300(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/CameraView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->takePicture(Landroid/graphics/Rect;)V

    return-void
.end method
