.class Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;
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
    name = "FullscreenClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$1;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;-><init>(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 562
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$600(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->FULL_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    if-eq p1, v0, :cond_0

    .line 563
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->FULL_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerStateAndUpdate(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->access$1000(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 565
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->COLLAPSED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerStateAndUpdate(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V

    goto :goto_0

    .line 567
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$FullscreenClickListener;->this$0:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->HALF_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setDrawerStateAndUpdate(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V

    :goto_0
    return-void
.end method
