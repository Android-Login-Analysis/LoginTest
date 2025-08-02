.class Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 1375
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V
    .locals 0

    .line 1375
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1378
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1900(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/InputPanel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->isRecordingInLockedMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1379
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1900(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/InputPanel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->releaseRecordingLock()V

    return-void

    .line 1383
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->getTextTrimmed()Ljava/lang/String;

    move-result-object p1

    .line 1384
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1800(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->isAttachmentPresent()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1385
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    const v0, 0x7f1200af

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1386
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1389
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->processComposeControls(I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 1390
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->maybePlaySendSound(Lcom/b44t/messenger/DcChat;)V

    :goto_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1397
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$2000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/SendButton;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/SendButton;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
