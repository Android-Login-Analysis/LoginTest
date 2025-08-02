.class Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickCameraToggleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V
    .locals 0

    .line 1350
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$org-thoughtcrime-securesms-ConversationActivity$QuickCameraToggleListener()V
    .locals 3

    .line 1362
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ComposeText;->clearFocus()V

    .line 1363
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1700(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object v1, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1600(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->show(Landroid/widget/EditText;Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1353
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/ConversationFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->hideAddReactionView()V

    .line 1354
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->isBuiltInCameraPreferred(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    .line 1355
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->isDeviceSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1356
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1600(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->isShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1357
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v0

    .line 1358
    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 1359
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    const v1, 0x7f1202f4

    .line 1360
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;)V

    .line 1361
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 1365
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    goto :goto_0

    .line 1367
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1700(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideAttachedInput(Z)V

    goto :goto_0

    .line 1370
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1800(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->capturePhoto(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method
