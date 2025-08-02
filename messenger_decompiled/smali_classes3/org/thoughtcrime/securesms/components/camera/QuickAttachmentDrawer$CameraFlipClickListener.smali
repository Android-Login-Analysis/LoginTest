.class Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$CameraFlipClickListener;
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
    name = "CameraFlipClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$CameraFlipClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;)V
    .locals 0

    .line 550
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$CameraFlipClickListener;-><init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 553
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$CameraFlipClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1300(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/CameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->flipCamera()V

    .line 554
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$CameraFlipClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1600(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$CameraFlipClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1300(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/CameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/CameraView;->isRearCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0801d7

    goto :goto_0

    :cond_0
    const v0, 0x7f0801db

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method
