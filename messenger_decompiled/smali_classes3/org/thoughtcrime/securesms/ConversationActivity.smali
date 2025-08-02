.class public Lorg/thoughtcrime/securesms/ConversationActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "ConversationActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentListener;
.implements Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;
.implements Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;
.implements Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$AttachmentDrawerListener;
.implements Lorg/thoughtcrime/securesms/components/InputPanel$Listener;
.implements Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ConversationActivity$AttachmentTypeListener;,
        Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;,
        Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;,
        Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonListener;,
        Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonLongClickListener;,
        Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID_EXTRA:Ljava/lang/String; = "account_id"

.field protected static final ACTION_SAVE_DRAFT:I = 0x2

.field protected static final ACTION_SEND_OUT:I = 0x1

.field public static final CHAT_ID_EXTRA:Ljava/lang/String; = "chat_id"

.field public static final FROM_ARCHIVED_CHATS_EXTRA:Ljava/lang/String; = "from_archived"

.field private static final GROUP_EDIT:I = 0x6

.field private static final PICK_AUDIO:I = 0x3

.field private static final PICK_CONTACT:I = 0x4

.field private static final PICK_DOCUMENT:I = 0x2

.field private static final PICK_GALLERY:I = 0x1

.field private static final PICK_LOCATION:I = 0x9

.field private static final RECORD_VIDEO:I = 0x8

.field private static final SMS_DEFAULT:I = 0xb

.field public static final STARTING_POSITION_EXTRA:Ljava/lang/String; = "starting_position"

.field private static final TAG:Ljava/lang/String; = "ConversationActivity"

.field private static final TAKE_PHOTO:I = 0x7

.field public static final TEXT_EXTRA:Ljava/lang/String; = "draft_text"


# instance fields
.field private attachButton:Landroid/widget/ImageButton;

.field private attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

.field private attachmentTypeSelector:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

.field private audioRecorder:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

.field private backgroundView:Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

.field private beforeSearchComposeVisibility:I

.field private buttonToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

.field private chatId:I

.field private composePanel:Landroid/view/View;

.field protected composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

.field private container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

.field private context:Lorg/thoughtcrime/securesms/ApplicationContext;

.field private dcChat:Lcom/b44t/messenger/DcChat;

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private emojiDrawerStub:Lorg/thoughtcrime/securesms/util/views/Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

.field private glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

.field private isDefaultSms:Z

.field private final isSecureText:Z

.field private isSecurityInitialized:Z

.field private lastToast:Landroid/widget/Toast;

.field private messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

.field private quickAttachmentDrawer:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

.field protected quickAttachmentToggle:Lorg/thoughtcrime/securesms/components/HidingLinearLayout;

.field private recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

.field private rpc:Lcom/b44t/messenger/rpc/Rpc;

.field private searchMenu:Landroid/view/Menu;

.field private searchResult:[I

.field private searchResultPosition:I

.field private sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

.field private successfulForwardingAttempt:Z

.field protected titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 141
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    .line 193
    new-instance v0, Lcom/b44t/messenger/DcChat;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/b44t/messenger/DcChat;-><init>(IJ)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isSecureText:Z

    .line 196
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isDefaultSms:Z

    .line 197
    iput-boolean v3, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isSecurityInitialized:Z

    .line 198
    iput-boolean v3, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->successfulForwardingAttempt:Z

    .line 1511
    iput v3, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->beforeSearchComposeVisibility:I

    const/4 v0, 0x0

    .line 1513
    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchMenu:Landroid/view/Menu;

    new-array v1, v3, [I

    .line 1514
    iput-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResult:[I

    const/4 v1, -0x1

    .line 1515
    iput v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    .line 1517
    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->lastToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/ConversationFragment;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 141
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcChat;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/DcContext;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/thoughtcrime/securesms/ConversationActivity;)I
    .locals 0

    .line 141
    iget p0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    return p0
.end method

.method static synthetic access$1500(Lorg/thoughtcrime/securesms/ConversationActivity;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->addAttachment(I)V

    return-void
.end method

.method static synthetic access$1600(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentDrawer:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/InputAwareLayout;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/InputPanel;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 0

    .line 141
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeDraft()Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/SendButton;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleAddAttachment()V

    return-void
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/ConversationActivity;Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->searchExpand(Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/ConversationActivity;Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->searchCollapse(Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateToggleButtonState()V

    return-void
.end method

.method private addAttachment(I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 950
    :pswitch_0
    invoke-static {}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->canRecode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 951
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->captureVideo(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    const-string p1, "This device does not support video-compression (requires Android 4.4 KitKat)"

    .line 954
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 946
    :pswitch_1
    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectLocation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 948
    :pswitch_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    const/4 v0, 0x7

    invoke-virtual {p1, p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->capturePhoto(Landroid/app/Activity;I)V

    goto :goto_0

    .line 944
    :pswitch_3
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->startContactChooserActivity()V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    .line 942
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectAudio(Landroid/app/Activity;I)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 940
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectDocument(Landroid/app/Activity;I)V

    goto :goto_0

    .line 938
    :pswitch_6
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectGallery(Landroid/app/Activity;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addAttachmentContactInfo(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "contact_id_extra"

    const/4 v1, 0x0

    .line 979
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 985
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/b44t/messenger/rpc/Rpc;->makeVcard(I[I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v0, "application/octet-stream"

    .line 987
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v1

    const-string v2, "vcard.vcf"

    invoke-virtual {v1, p0, p1, v0, v2}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->create(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->DOCUMENT:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 989
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationActivity;->TAG:Ljava/lang/String;

    const-string v1, "makeVcard() failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleAddAttachment()V
    .locals 4

    .line 653
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentTypeSelector:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/ConversationActivity$AttachmentTypeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/thoughtcrime/securesms/ConversationActivity$AttachmentTypeListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V

    iget v3, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;-><init>(Landroid/content/Context;Landroidx/loader/app/LoaderManager;Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;I)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentTypeSelector:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    .line 656
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentTypeSelector:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0, v1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->show(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private handleArchiveChat()V
    .locals 4

    .line 629
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->isArchived()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 631
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v3, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v2, v3, v0}, Lcom/b44t/messenger/DcContext;->setChatVisibility(II)V

    const v2, 0x7f1200f9

    .line 632
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    if-ne v0, v1, :cond_0

    .line 634
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->finish()V

    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    return-void
.end method

.method private handleDeleteChat()V
    .locals 6

    .line 641
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 642
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/high16 v4, 0x7f100000

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda13;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    const v2, 0x7f1200e4

    .line 643
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120097

    const/4 v2, 0x0

    .line 648
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private handleEphemeralMessages()V
    .locals 2

    .line 573
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChatEphemeralTimer(I)I

    move-result v0

    .line 574
    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda10;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog;->show(Landroid/content/Context;ILorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;)V

    return-void
.end method

.method private handleForwarding()V
    .locals 6

    .line 673
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isSelfTalk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->immediatelyRelay(Landroid/app/Activity;I)V

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 679
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, v4}, Lcom/b44t/messenger/DcContext;->getChatContacts(I)[I

    move-result-object v0

    .line 680
    array-length v4, v0

    if-eq v4, v3, :cond_1

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 681
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getNameNAddr()Ljava/lang/String;

    move-result-object v1

    .line 684
    :cond_2
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const v1, 0x7f12005c

    .line 685
    invoke-virtual {p0, v1, v3}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda7;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    const v2, 0x7f1202d8

    .line 686
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda8;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    const v2, 0x7f120097

    .line 690
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda9;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    .line 691
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method private handleLeaveGroup()V
    .locals 3

    .line 618
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12005e

    .line 619
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda12;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    const v2, 0x7f12043f

    .line 620
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202bf

    const/4 v2, 0x0

    .line 624
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private handleMenuSearchNext(Z)V
    .locals 3

    .line 1548
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResult:[I

    array-length v1, v0

    if-lez v1, :cond_3

    .line 1549
    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v1, p1

    iput v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    if-gez v1, :cond_1

    .line 1550
    array-length p1, v0

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    .line 1551
    :cond_1
    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    array-length v1, v0

    if-lt p1, v1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    .line 1552
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollToMsgId(I)V

    .line 1553
    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResult:[I

    array-length v0, v0

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateResultCounter(II)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 1557
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollToBottom()V

    goto :goto_1

    .line 1559
    :cond_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollToTop()V

    :goto_1
    return-void
.end method

.method private handleMuteNotifications()V
    .locals 4

    .line 597
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda11;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/MuteDialog;->show(Landroid/content/Context;Lorg/thoughtcrime/securesms/MuteDialog$MuteSelectionListener;)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/b44t/messenger/DcContext;->setChatMuteDuration(IJ)Z

    .line 605
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcChat;)V

    :goto_0
    return-void
.end method

.method private handleProfile()V
    .locals 3

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_id"

    .line 611
    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "from_chat"

    const/4 v2, 0x1

    .line 612
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, v0, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private handleRelaying()V
    .locals 1

    .line 284
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isForwarding(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleForwarding()V

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isSharing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleSharing()V

    .line 290
    :cond_1
    :goto_0
    invoke-static {}, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;->finishActivity()V

    return-void
.end method

.method private handleReturnToConversationList()V
    .locals 1

    const/4 v0, 0x0

    .line 584
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleReturnToConversationList(Landroid/os/Bundle;)V

    return-void
.end method

.method private handleReturnToConversationList(Landroid/os/Bundle;)V
    .locals 3

    .line 588
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_archived"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 589
    new-instance v1, Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-class v0, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lorg/thoughtcrime/securesms/ConversationListActivity;

    :goto_0
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 590
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 591
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 592
    :cond_1
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 593
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->finish()V

    return-void
.end method

.method private handleSecurityChange(ZZ)V
    .locals 3

    .line 660
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSecurityChange("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isSecurityInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isDefaultSms:Z

    if-ne p2, p1, :cond_0

    return-void

    .line 665
    :cond_0
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isDefaultSms:Z

    .line 666
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isSecurityInitialized:Z

    .line 668
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/SendButton;->resetAvailableTransports()V

    .line 669
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    sget-object p2, Lorg/thoughtcrime/securesms/TransportOption$Type;->NORMAL_MAIL:Lorg/thoughtcrime/securesms/TransportOption$Type;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/SendButton;->setDefaultTransport(Lorg/thoughtcrime/securesms/TransportOption$Type;)V

    return-void
.end method

.method private handleSharing()V
    .locals 4

    .line 697
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedUris(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const v1, 0x7f1203d3

    .line 699
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 700
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 701
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 702
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda14;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    const/high16 v2, 0x1040000

    .line 703
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda15;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    const v2, 0x7f120254

    .line 704
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 707
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedText(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->createMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/b44t/messenger/DcMsg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b44t/messenger/DcContext;->setDraft(ILcom/b44t/messenger/DcMsg;)V

    goto :goto_0

    .line 710
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v3, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedText(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->createMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/b44t/messenger/DcMsg;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/b44t/messenger/DcContext;->setDraft(ILcom/b44t/messenger/DcMsg;)V

    .line 712
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeDraft()Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    :goto_1
    return-void
.end method

.method private handleVideochatInvite()V
    .locals 2

    .line 580
    new-instance v0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/videochat/VideochatUtil;-><init>()V

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, p0, v1}, Lorg/thoughtcrime/securesms/videochat/VideochatUtil;->invite(Landroid/app/Activity;I)V

    return-void
.end method

.method private initializeBackground()V
    .locals 2

    .line 875
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->getBackgroundImagePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 878
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 880
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 886
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->backgroundView:Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initializeDraft()Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 723
    new-instance v0, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    .line 724
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getDraft(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    .line 725
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedText(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 728
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 729
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 731
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/components/ComposeText;->setText(Ljava/lang/CharSequence;)V

    .line 732
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 734
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateToggleButtonState()V

    return-object v0

    .line 738
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object v2

    .line 739
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 740
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v4, v2}, Lorg/thoughtcrime/securesms/components/ComposeText;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/components/ComposeText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/thoughtcrime/securesms/components/ComposeText;->setSelection(I)V

    .line 744
    :cond_3
    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getQuotedMsg()Lcom/b44t/messenger/DcMsg;

    move-result-object v4

    if-nez v4, :cond_4

    .line 746
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/components/InputPanel;->clearQuoteWithoutAnimation()V

    goto :goto_1

    .line 748
    :cond_4
    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleReplyMessage(Lcom/b44t/messenger/DcMsg;)V

    .line 751
    :goto_1
    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v4

    .line 752
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    .line 758
    :cond_5
    new-instance v3, Lorg/thoughtcrime/securesms/ConversationActivity$4;

    invoke-direct {v3, p0, v0, v2}, Lorg/thoughtcrime/securesms/ConversationActivity$4;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lcom/b44t/messenger/util/concurrent/SettableFuture;Ljava/lang/String;)V

    .line 772
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 774
    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_a

    const/16 v5, 0x15

    if-eq v4, v5, :cond_9

    const/16 v5, 0x28

    if-eq v4, v5, :cond_8

    const/16 v5, 0x32

    if-eq v4, v5, :cond_7

    const/16 v5, 0x50

    if-eq v4, v5, :cond_6

    .line 791
    sget-object v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->DOCUMENT:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, v2, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    goto :goto_2

    .line 788
    :cond_6
    sget-object v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->DOCUMENT:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, v1, v2}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    goto :goto_2

    .line 785
    :cond_7
    sget-object v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->VIDEO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, v2, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    goto :goto_2

    .line 782
    :cond_8
    sget-object v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->AUDIO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, v2, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    goto :goto_2

    .line 779
    :cond_9
    sget-object v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->GIF:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, v2, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    goto :goto_2

    .line 776
    :cond_a
    sget-object v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->IMAGE:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, v2, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    :goto_2
    return-object v0

    .line 753
    :cond_b
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 754
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateToggleButtonState()V

    return-object v0
.end method

.method private initializeEnabledCheck()V
    .locals 2

    .line 800
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->setEnabled(Z)V

    .line 801
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/SendButton;->setEnabled(Z)V

    .line 802
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method private initializeMediaKeyboardProviders(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;Z)V
    .locals 2

    .line 1327
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isSystemEmojiPreferred(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

    .line 1329
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, v1, p2}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->setProviders(I[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;)V

    :cond_0
    return-void
.end method

.method private initializeResources()V
    .locals 3

    .line 904
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 905
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 906
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-virtual {v1, v2, v0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchAccount(Landroid/content/Context;I)V

    .line 907
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcContext:Lcom/b44t/messenger/DcContext;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 908
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    iget-object v1, v1, Lorg/thoughtcrime/securesms/ApplicationContext;->dcContext:Lcom/b44t/messenger/DcContext;

    iput-object v1, v0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 909
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeBackground()V

    .line 911
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chat_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    if-eqz v0, :cond_1

    .line 914
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    .line 915
    new-instance v0, Lorg/thoughtcrime/securesms/recipients/Recipient;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 916
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 918
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->setComposePanelVisibility()V

    .line 919
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeContactRequest()V

    return-void

    .line 913
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t display a conversation for no chat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeSecurity(ZZ)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 808
    new-instance v0, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 810
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->isMultiUser()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleSecurityChange(ZZ)V

    .line 812
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initializeViews()V
    .locals 6

    .line 817
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationTitleView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    const v0, 0x7f09008d

    .line 821
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->buttonToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    const v0, 0x7f090324

    .line 822
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/SendButton;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    const v0, 0x7f090062

    .line 823
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachButton:Landroid/widget/ImageButton;

    const v0, 0x7f09010f

    .line 824
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ComposeText;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    const v0, 0x7f090112

    .line 825
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findStubById(Landroid/app/Activity;I)Lorg/thoughtcrime/securesms/util/views/Stub;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->emojiDrawerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    const v0, 0x7f090084

    .line 826
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composePanel:Landroid/view/View;

    const v1, 0x7f0901a5

    .line 827
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    const v1, 0x7f0902b0

    .line 828
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentDrawer:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    const v1, 0x7f0902b1

    .line 829
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/HidingLinearLayout;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentToggle:Lorg/thoughtcrime/securesms/components/HidingLinearLayout;

    .line 830
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/InputPanel;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    const v0, 0x7f0900c1

    .line 831
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->backgroundView:Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

    const v0, 0x7f0900c0

    .line 832
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    const v0, 0x7f0902b5

    .line 834
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 836
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->addOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V

    .line 837
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->backgroundView:Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->addOnKeyboardHiddenListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;)V

    .line 838
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->backgroundView:Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->addOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V

    .line 839
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/components/InputPanel;->setListener(Lorg/thoughtcrime/securesms/components/InputPanel$Listener;)V

    .line 840
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/components/InputPanel;->setMediaListener(Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;)V

    const/4 v1, 0x0

    .line 842
    iput-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentTypeSelector:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    .line 843
    new-instance v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-direct {v2, p0, p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;-><init>(Landroid/app/Activity;Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;)V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    .line 844
    new-instance v2, Lorg/thoughtcrime/securesms/audio/AudioRecorder;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->audioRecorder:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

    .line 846
    new-instance v2, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;

    invoke-direct {v2, p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity$SendButtonListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V

    .line 847
    new-instance v3, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;

    invoke-direct {v3, p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity$ComposeKeyPressedListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V

    .line 849
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v4, v2}, Lorg/thoughtcrime/securesms/components/ComposeText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 850
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachButton:Landroid/widget/ImageButton;

    new-instance v5, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonListener;

    invoke-direct {v5, p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachButton:Landroid/widget/ImageButton;

    new-instance v5, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonLongClickListener;

    invoke-direct {v5, p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonLongClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 852
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    invoke-virtual {v4, v2}, Lorg/thoughtcrime/securesms/components/SendButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/thoughtcrime/securesms/components/SendButton;->setEnabled(Z)V

    .line 854
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    new-instance v5, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-virtual {v4, v5}, Lorg/thoughtcrime/securesms/components/SendButton;->addOnTransportChangedListener(Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;)V

    .line 859
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    new-instance v5, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-virtual {v4, v5}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    new-instance v5, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-virtual {v4, v5}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setOnBackClickedListener(Landroid/view/View$OnClickListener;)V

    .line 862
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v4, v3}, Lorg/thoughtcrime/securesms/components/ComposeText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 863
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v4, v3}, Lorg/thoughtcrime/securesms/components/ComposeText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 864
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v4, v2}, Lorg/thoughtcrime/securesms/components/ComposeText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 865
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/components/ComposeText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/components/ComposeText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 868
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentDrawer:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {v2, p0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->setListener(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$AttachmentDrawerListener;)V

    .line 869
    new-instance v2, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;

    invoke-direct {v2, p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity$QuickCameraToggleListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeBackground()V

    return-void

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private isArchived()Z
    .locals 2

    .line 998
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isMultiUser()Z
    .locals 1

    .line 994
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v0

    return v0
.end method

.method private searchCollapse(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 2

    const/4 v0, 0x0

    .line 1541
    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchMenu:Landroid/view/Menu;

    .line 1542
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composePanel:Landroid/view/View;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->beforeSearchComposeVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1544
    invoke-virtual {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->makeSearchMenuVisible(Landroid/view/Menu;Landroid/view/MenuItem;Z)V

    return-void
.end method

.method private searchExpand(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 2

    .line 1532
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchMenu:Landroid/view/Menu;

    .line 1534
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composePanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->beforeSearchComposeVisibility:I

    .line 1535
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composePanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 1537
    invoke-virtual {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->makeSearchMenuVisible(Landroid/view/Menu;Landroid/view/MenuItem;Z)V

    return-void
.end method

.method private sendSticker(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 13

    .line 1311
    new-instance v12, Lorg/thoughtcrime/securesms/attachments/UriAttachment;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v11}, Lorg/thoughtcrime/securesms/attachments/UriAttachment;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IJIILjava/lang/String;Ljava/lang/String;Z)V

    .line 1313
    invoke-virtual {v12, p0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getRealPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1315
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/InputPanel;->getQuote()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p2

    .line 1316
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputPanel;->clearQuote()V

    .line 1318
    new-instance v0, Lcom/b44t/messenger/DcMsg;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    .line 1319
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/mms/QuoteModel;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/QuoteModel;->getQuotedMsg()Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcMsg;->setQuote(Lcom/b44t/messenger/DcMsg;)V

    :cond_0
    const/4 p2, 0x0

    .line 1322
    invoke-virtual {v0, p1, p2}, Lcom/b44t/messenger/DcMsg;->setFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {p1, p2, v0}, Lcom/b44t/messenger/DcContext;->sendMsg(ILcom/b44t/messenger/DcMsg;)I

    return-void
.end method

.method private setComposePanelVisibility()V
    .locals 2

    .line 923
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composePanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->setHidden(Z)V

    goto :goto_0

    .line 927
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composePanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->setHidden(Z)V

    .line 929
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->hideSoftKeyboard()V

    :goto_0
    return-void
.end method

.method private setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;",
            ")",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 968
    new-instance p1, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 971
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->setMedia(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;III)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private setMedia(Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/DcMsg;",
            "Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;",
            ")",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->setMedia(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;III)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private startContactChooserActivity()V
    .locals 3

    .line 961
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/AttachContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "allow_creation"

    const/4 v2, 0x0

    .line 962
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x4

    .line 963
    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateResultCounter(II)V
    .locals 4

    .line 1520
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    const v1, 0x7f09020c

    .line 1521
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v3

    .line 1523
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "%d/%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1524
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1526
    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void
.end method

.method private updateToggleButtonState()V
    .locals 2

    .line 1143
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputPanel;->isRecordingInLockedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->buttonToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->display(Landroid/view/View;)V

    .line 1145
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentToggle:Lorg/thoughtcrime/securesms/components/HidingLinearLayout;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/HidingLinearLayout;->hide()V

    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->isAttachmentPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1150
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->buttonToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->display(Landroid/view/View;)V

    .line 1151
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentToggle:Lorg/thoughtcrime/securesms/components/HidingLinearLayout;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/HidingLinearLayout;->show()V

    goto :goto_0

    .line 1153
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->buttonToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->display(Landroid/view/View;)V

    .line 1154
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentToggle:Lorg/thoughtcrime/securesms/components/HidingLinearLayout;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/HidingLinearLayout;->hide()V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 3

    .line 1491
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x7e4

    if-ne v0, v1, :cond_0

    .line 1492
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v1

    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    if-eq v1, v2, :cond_2

    :cond_0
    const/16 v1, 0x7e5

    if-ne v0, v1, :cond_1

    .line 1493
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v1

    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    if-eq v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x7ee

    if-ne v0, v1, :cond_3

    .line 1495
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    .line 1496
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcChat;)V

    const/4 p1, 0x1

    .line 1497
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isDefaultSms:Z

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeSecurity(ZZ)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 1498
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->setComposePanelVisibility()V

    .line 1499
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeContactRequest()V

    goto :goto_1

    :cond_3
    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7df

    if-ne v0, v1, :cond_6

    .line 1502
    :cond_4
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result p1

    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    if-ne p1, v0, :cond_6

    .line 1503
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object p1

    .line 1504
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->wasSeenRecently()Z

    move-result p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setSeenRecently(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public handleReplyMessage(Lcom/b44t/messenger/DcMsg;)V
    .locals 8

    .line 1464
    new-instance v5, Lorg/thoughtcrime/securesms/recipients/Recipient;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    invoke-direct {v5, p0, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    .line 1466
    new-instance v7, Lorg/thoughtcrime/securesms/mms/SlideDeck;

    invoke-direct {v7}, Lorg/thoughtcrime/securesms/mms/SlideDeck;-><init>()V

    .line 1467
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 1468
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getSlideForMsg(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->addSlide(Lorg/thoughtcrime/securesms/mms/Slide;)V

    :cond_0
    const/16 v0, 0x1f4

    .line 1471
    invoke-virtual {p1, v0}, Lcom/b44t/messenger/DcMsg;->getSummarytext(I)Ljava/lang/String;

    move-result-object v6

    .line 1473
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    .line 1475
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getTimestamp()J

    move-result-wide v3

    move-object v2, p1

    .line 1473
    invoke-virtual/range {v0 .. v7}, Lorg/thoughtcrime/securesms/components/InputPanel;->setQuote(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcMsg;JLorg/thoughtcrime/securesms/recipients/Recipient;Ljava/lang/CharSequence;Lorg/thoughtcrime/securesms/mms/SlideDeck;)V

    .line 1480
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/InputPanel;->clickOnComposeInput()V

    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 2

    .line 567
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideCurrentInput(Landroid/widget/EditText;)V

    return-void
.end method

.method protected initializeActionBar()V
    .locals 3

    .line 890
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 893
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v2, 0x7f0c004a

    .line 894
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    const/4 v2, 0x1

    .line 895
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 896
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 898
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 899
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setPadding(IIII)V

    .line 900
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    return-void

    .line 891
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public initializeContactRequest()V
    .locals 4

    .line 1601
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isHalfBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setVisibility(I)V

    return-void

    .line 1606
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setVisibility(I)V

    .line 1607
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    new-instance v2, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setAcceptOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isProtectionBroken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1615
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    const v2, 0x7f120264

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setBlockText(I)V

    .line 1616
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1617
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    new-instance v3, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setBlockOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const v0, 0x7f1200b0

    invoke-virtual {p0, v0, v3}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setQuestion(Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    const v1, 0x7f1202d8

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setAcceptText(I)V

    goto :goto_0

    .line 1622
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getType()I

    move-result v0

    const/16 v1, 0x78

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1624
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    const v1, 0x7f1200e4

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setBlockText(I)V

    .line 1625
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setBlockOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1626
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setQuestion(Ljava/lang/String;)V

    goto :goto_0

    .line 1629
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    const v1, 0x7f12008a

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setBlockText(I)V

    .line 1630
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setBlockOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1639
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setQuestion(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$handleDeleteChat$3$org-thoughtcrime-securesms-ConversationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 644
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {p1, p2}, Lcom/b44t/messenger/DcContext;->deleteChat(I)V

    .line 645
    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->clearShortcut(Landroid/content/Context;I)V

    .line 646
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->finish()V

    return-void
.end method

.method synthetic lambda$handleEphemeralMessages$0$org-thoughtcrime-securesms-ConversationActivity(J)V
    .locals 2

    .line 575
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    long-to-int p2, p1

    invoke-virtual {v0, v1, p2}, Lcom/b44t/messenger/DcContext;->setChatEphemeralTimer(II)Z

    return-void
.end method

.method synthetic lambda$handleForwarding$4$org-thoughtcrime-securesms-ConversationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 687
    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->immediatelyRelay(Landroid/app/Activity;I)V

    const/4 p1, 0x1

    .line 688
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->successfulForwardingAttempt:Z

    return-void
.end method

.method synthetic lambda$handleForwarding$5$org-thoughtcrime-securesms-ConversationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 690
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->finish()V

    return-void
.end method

.method synthetic lambda$handleForwarding$6$org-thoughtcrime-securesms-ConversationActivity(Landroid/content/DialogInterface;)V
    .locals 0

    .line 691
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->finish()V

    return-void
.end method

.method synthetic lambda$handleLeaveGroup$2$org-thoughtcrime-securesms-ConversationActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 621
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/b44t/messenger/DcContext;->removeContactFromChat(II)I

    const p1, 0x7f1200f9

    .line 622
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$handleMuteNotifications$1$org-thoughtcrime-securesms-ConversationActivity(J)V
    .locals 2

    .line 599
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/b44t/messenger/DcContext;->setChatMuteDuration(IJ)Z

    .line 600
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {p1, p2, v0}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcChat;)V

    return-void
.end method

.method synthetic lambda$handleSharing$7$org-thoughtcrime-securesms-ConversationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 703
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->finish()V

    return-void
.end method

.method synthetic lambda$handleSharing$8$org-thoughtcrime-securesms-ConversationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 704
    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->immediatelyRelay(Landroid/app/Activity;I)V

    return-void
.end method

.method synthetic lambda$initializeContactRequest$12$org-thoughtcrime-securesms-ConversationActivity(Landroid/view/View;)V
    .locals 1

    .line 1608
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/DcContext;->acceptChat(I)V

    .line 1609
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->messageRequestBottomView:Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->setVisibility(I)V

    .line 1610
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composePanel:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$initializeContactRequest$13$org-thoughtcrime-securesms-ConversationActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1617
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->showVerificationBrokenDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initializeContactRequest$14$org-thoughtcrime-securesms-ConversationActivity(Landroid/view/View;)V
    .locals 0

    .line 1625
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleDeleteChat()V

    return-void
.end method

.method synthetic lambda$initializeContactRequest$15$org-thoughtcrime-securesms-ConversationActivity(Landroid/view/View;)V
    .locals 2

    .line 1632
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 v0, 0x7ee

    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 1634
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/DcContext;->blockChat(I)V

    .line 1635
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "reload_list"

    const/4 v1, 0x1

    .line 1636
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1637
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleReturnToConversationList(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$initializeViews$10$org-thoughtcrime-securesms-ConversationActivity(Landroid/view/View;)V
    .locals 0

    .line 859
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleProfile()V

    return-void
.end method

.method synthetic lambda$initializeViews$11$org-thoughtcrime-securesms-ConversationActivity(Landroid/view/View;)V
    .locals 0

    .line 860
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleReturnToConversationList()V

    return-void
.end method

.method synthetic lambda$initializeViews$9$org-thoughtcrime-securesms-ConversationActivity(Lorg/thoughtcrime/securesms/TransportOption;Z)V
    .locals 0

    .line 855
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->setTransport(Lorg/thoughtcrime/securesms/TransportOption;)V

    .line 856
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->buttonToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 366
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/16 v2, 0xb

    if-nez p3, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    if-eq p1, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 p2, 0x1

    if-eq p1, p2, :cond_e

    const/4 v3, 0x2

    if-eq p1, v3, :cond_d

    const/4 v3, 0x3

    if-eq p1, v3, :cond_c

    const/4 v3, 0x4

    if-eq p1, v3, :cond_b

    const/4 v3, 0x6

    if-eq p1, v3, :cond_a

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 p2, 0x7ac0

    if-eq p1, p2, :cond_3

    goto/16 :goto_2

    .line 419
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->IMAGE:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    goto/16 :goto_2

    .line 422
    :cond_4
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isDefaultSms:Z

    invoke-direct {p0, p2, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeSecurity(ZZ)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    goto/16 :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 407
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_7

    .line 408
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getVideoCaptureUri()Landroid/net/Uri;

    move-result-object p1

    :cond_7
    if-eqz p1, :cond_8

    .line 410
    sget-object p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->VIDEO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    goto/16 :goto_2

    :cond_8
    const-string p1, "No video returned from system"

    .line 413
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 401
    :cond_9
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getImageCaptureUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 402
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getImageCaptureUri()Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->IMAGE:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    goto :goto_2

    .line 397
    :cond_a
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {p1, p2}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    .line 398
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {p2, p3, p1}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcChat;)V

    goto :goto_2

    .line 394
    :cond_b
    invoke-direct {p0, p3}, Lorg/thoughtcrime/securesms/ConversationActivity;->addAttachmentContactInfo(Landroid/content/Intent;)V

    goto :goto_2

    .line 391
    :cond_c
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->AUDIO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    goto :goto_2

    .line 388
    :cond_d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->DOCUMENT:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    goto :goto_2

    .line 378
    :cond_e
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isGif(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    sget-object p1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->GIF:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    goto :goto_1

    .line 381
    :cond_f
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->VIDEO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    goto :goto_1

    .line 382
    :cond_10
    sget-object p1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->IMAGE:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    .line 384
    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    :cond_11
    :goto_2
    return-void
.end method

.method public onAttachmentChanged()V
    .locals 2

    const/4 v0, 0x1

    .line 1485
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isDefaultSms:Z

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleSecurityChange(ZZ)V

    .line 1486
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateToggleButtonState()V

    return-void
.end method

.method public onAttachmentDrawerStateChanged(Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;)V
    .locals 2

    .line 1160
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1163
    sget-object v1, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->FULL_EXPANDED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    if-ne p1, v1, :cond_0

    .line 1164
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 1169
    :goto_0
    sget-object v0, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;->COLLAPSED:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer$DrawerState;

    if-ne p1, v0, :cond_1

    .line 1170
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideAttachedInput(Z)V

    :cond_1
    return-void

    .line 1161
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 544
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->isInputOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideCurrentInput(Landroid/widget/EditText;)V

    goto :goto_0

    .line 547
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleReturnToConversationList()V

    :goto_0
    return-void
.end method

.method public onCameraFail()V
    .locals 2

    const v0, 0x7f1200a7

    const/4 v1, 0x0

    .line 1184
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1185
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentDrawer:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->hide(Z)V

    .line 1186
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentToggle:Lorg/thoughtcrime/securesms/components/HidingLinearLayout;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/HidingLinearLayout;->disable()V

    return-void
.end method

.method public onCameraStart()V
    .locals 0

    return-void
.end method

.method public onCameraStop()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 346
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 348
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/SendButton;->getSelectedTransport()Lorg/thoughtcrime/securesms/TransportOption;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/ComposeText;->setTransport(Lorg/thoughtcrime/securesms/TransportOption;)V

    .line 349
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentDrawer:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->onConfigurationChanged()V

    .line 351
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->emojiDrawerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->getCurrentInput()Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->emojiDrawerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 352
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideAttachedInput(Z)V

    .line 355
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeBackground()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 203
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 204
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    const/16 p1, 0x9

    .line 206
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->supportRequestWindowFeature(I)Z

    const p1, 0x7f0c0030

    .line 207
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->setContentView(I)V

    const p1, 0x7f040173

    .line 209
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 211
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 215
    new-instance p1, Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;-><init>()V

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p2

    const v1, 0x7f09015c

    invoke-virtual {p0, v1, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationFragment;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    .line 217
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeActionBar()V

    .line 218
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeViews()V

    .line 219
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeResources()V

    .line 220
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isDefaultSms:Z

    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeSecurity(ZZ)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/ConversationActivity$1;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$1;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-interface {p1, p2}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    .line 240
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 p2, 0x7e4

    .line 241
    invoke-virtual {p1, p2, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 p2, 0x7e5

    .line 242
    invoke-virtual {p1, p2, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 p2, 0x7ee

    .line 243
    invoke-virtual {p1, p2, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 245
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->isMultiUser()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x7d5

    .line 246
    invoke-virtual {p1, p2, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 p2, 0x7df

    .line 247
    invoke-virtual {p1, p2, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 250
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleRelaying()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 360
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 361
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onEmojiToggle()V
    .locals 3

    .line 1286
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->emojiDrawerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->emojiDrawerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeMediaKeyboardProviders(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;Z)V

    .line 1288
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->emojiDrawerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->setMediaKeyboard(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)V

    .line 1291
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->getCurrentInput()Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->emojiDrawerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1292
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->showSoftkey(Landroid/widget/EditText;)V

    goto :goto_0

    .line 1294
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->emojiDrawerStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->show(Landroid/widget/EditText;Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;)V

    :goto_0
    return-void
.end method

.method public onImageCapture([B)V
    .locals 3

    .line 1176
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v0

    const-string v1, "image/jpeg"

    const/4 v2, 0x0

    .line 1177
    invoke-virtual {v0, p0, p1, v1, v2}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->create(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->IMAGE:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    .line 1176
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 1179
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentDrawer:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->hide(Z)V

    return-void
.end method

.method public onKeyboardShown()V
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputPanel;->onKeyboardShown()V

    return-void
.end method

.method public onMediaSelected(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1301
    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->sendSticker(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 1303
    :cond_0
    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    sget-object p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->VIDEO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 1305
    :cond_1
    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isAudioType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1306
    sget-object p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->AUDIO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationActivity;->setMedia(Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    :cond_2
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 255
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->isEmpty(Lorg/thoughtcrime/securesms/components/ComposeText;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->isAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    .line 262
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->processComposeControls(I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 263
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {v0, v2, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;Z)V

    .line 264
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/components/ComposeText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_2
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->setIntent(Landroid/content/Intent;)V

    .line 268
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeResources()V

    .line 269
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->isDefaultSms:Z

    invoke-direct {p0, v1, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeSecurity(ZZ)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/ConversationActivity$2;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$2;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-interface {p1, v0}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    .line 276
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleRelaying()V

    .line 278
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    if-eqz p1, :cond_3

    .line 279
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->onNewIntent()V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 523
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 524
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    return v0

    .line 536
    :sswitch_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleVideochatInvite()V

    return v1

    .line 531
    :sswitch_1
    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->openMaps(Landroid/content/Context;I)V

    return v1

    .line 532
    :sswitch_2
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleMenuSearchNext(Z)V

    return v1

    .line 533
    :sswitch_3
    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleMenuSearchNext(Z)V

    return v1

    .line 530
    :sswitch_4
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleMuteNotifications()V

    return v1

    .line 526
    :sswitch_5
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleLeaveGroup()V

    return v1

    .line 535
    :sswitch_6
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleEphemeralMessages()V

    return v1

    .line 529
    :sswitch_7
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleDeleteChat()V

    return v1

    .line 528
    :sswitch_8
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleClearChat()V

    return v1

    .line 527
    :sswitch_9
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleArchiveChat()V

    return v1

    .line 525
    :sswitch_a
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleAddAttachment()V

    return v1

    .line 534
    :sswitch_b
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->handleReturnToConversationList()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_b
        0x7f0901ec -> :sswitch_a
        0x7f0901f0 -> :sswitch_9
        0x7f0901f2 -> :sswitch_8
        0x7f0901ff -> :sswitch_7
        0x7f090201 -> :sswitch_6
        0x7f090203 -> :sswitch_5
        0x7f090205 -> :sswitch_4
        0x7f09020d -> :sswitch_3
        0x7f09020e -> :sswitch_2
        0x7f090212 -> :sswitch_1
        0x7f090216 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .line 316
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPause()V

    const/4 v0, 0x2

    .line 318
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->processComposeControls(I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 320
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->clearVisibleChat()V

    .line 321
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f01001e

    const v1, 0x7f010032

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->overridePendingTransition(II)V

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentDrawer:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->onPause()V

    .line 323
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputPanel;->onPause()V

    .line 324
    invoke-static {}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->stopAll()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 443
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 444
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e0005

    .line 446
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 448
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isSelfTalk()Z

    move-result v1

    const v2, 0x7f090205

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f12025b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 449
    :cond_1
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 454
    :cond_2
    :goto_1
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isLocationStreamingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f090212

    .line 455
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 458
    :cond_3
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->isWebrtcConfigOk(Lcom/b44t/messenger/DcContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->canVideochat()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const v1, 0x7f090216

    .line 459
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    :cond_5
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isMailingList()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const v1, 0x7f090201

    .line 463
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 466
    :cond_7
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->isMultiUser()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 467
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isMailingList()Z

    move-result v1

    if-nez v1, :cond_8

    const v1, 0x7f0e000c

    .line 468
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_8
    const v1, 0x7f0e0006

    .line 472
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 473
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->isArchived()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0901f0

    .line 474
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f120259

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_9
    const v1, 0x7f0e0007

    .line 477
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0e0009

    .line 478
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09020b

    const/4 v1, 0x1

    .line 481
    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 482
    new-instance v2, Lorg/thoughtcrime/securesms/ConversationActivity$3;

    invoke-direct {v2, p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$3;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;Landroid/view/Menu;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 495
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 496
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    const v2, 0x7f1203b3

    .line 497
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    const v2, 0x7f09030d

    .line 501
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 503
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v2, 0x0

    .line 504
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 507
    sget-object v2, Lorg/thoughtcrime/securesms/ConversationActivity;->TAG:Ljava/lang/String;

    const-string v4, "cannot set up in-chat-search: "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x7f0901ec

    .line 511
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 513
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 517
    :cond_b
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    return v1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    .line 1571
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->lastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 1573
    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->lastToast:Landroid/widget/Toast;

    .line 1576
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1577
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, v1, p1}, Lcom/b44t/messenger/DcContext;->searchMsgs(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResult:[I

    .line 1579
    array-length v1, v0

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 1580
    array-length p1, v0

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    .line 1581
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    aget p1, v0, p1

    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollToMsgId(I)V

    .line 1582
    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResult:[I

    array-length v0, v0

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateResultCounter(II)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1584
    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->searchResultPosition:I

    .line 1585
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1586
    invoke-direct {p0, v0, v3}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateResultCounter(II)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const p1, 0x7f1203b8

    .line 1588
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1589
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->lastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 1590
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1592
    :cond_3
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->lastToast:Landroid/widget/Toast;

    .line 1593
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1594
    invoke-direct {p0, v3, v3}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateResultCounter(II)V

    :goto_0
    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onRecorderCanceled()V
    .locals 3

    .line 1260
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateToggleButtonState()V

    .line 1261
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x32

    .line 1262
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1264
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1266
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->audioRecorder:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->stopRecording()Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1267
    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$7;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$7;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-interface {v0, v1}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    return-void
.end method

.method public onRecorderFinished()V
    .locals 3

    .line 1223
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateToggleButtonState()V

    .line 1224
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x14

    .line 1225
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1227
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1229
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->audioRecorder:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->stopRecording()Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1230
    new-instance v1, Lorg/thoughtcrime/securesms/ConversationActivity$6;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$6;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    invoke-interface {v0, v1}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    return-void
.end method

.method public onRecorderLocked()V
    .locals 1

    .line 1217
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->updateToggleButtonState()V

    const/4 v0, -0x1

    .line 1218
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onRecorderPermissionRequired()V
    .locals 4

    .line 1197
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    .line 1198
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 1199
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f6

    .line 1200
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 1201
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method public onRecorderStarted()V
    .locals 3

    .line 1206
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->hideAddReactionView()V

    .line 1207
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x14

    .line 1208
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1210
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1212
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->audioRecorder:Lorg/thoughtcrime/securesms/audio/AudioRecorder;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/audio/AudioRecorder;->startRecording()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 558
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 295
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onResume()V

    .line 296
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->quickAttachmentDrawer:Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/camera/QuickAttachmentDrawer;->onResume()V

    .line 298
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->initializeEnabledCheck()V

    .line 299
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->sendButton:Lorg/thoughtcrime/securesms/components/SendButton;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/SendButton;->getSelectedTransport()Lorg/thoughtcrime/securesms/TransportOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/ComposeText;->setTransport(Lorg/thoughtcrime/securesms/TransportOption;)V

    .line 301
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcChat;)V

    .line 303
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->updateVisibleChat(II)V

    .line 305
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->onResume()V

    .line 308
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 329
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onStop()V

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->isKeyboardOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "power"

    .line 336
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 337
    invoke-static {v1}, Lcom/bumptech/glide/util/LogTime$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/os/PowerManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method protected processComposeControls(I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ComposeText;->getTextTrimmed()Ljava/lang/String;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->isAttachmentPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->buildSlideDeck()Lorg/thoughtcrime/securesms/mms/SlideDeck;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1007
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity;->processComposeControls(ILjava/lang/String;Lorg/thoughtcrime/securesms/mms/SlideDeck;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected processComposeControls(ILjava/lang/String;Lorg/thoughtcrime/securesms/mms/SlideDeck;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/thoughtcrime/securesms/mms/SlideDeck;",
            ")",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    .line 1014
    new-instance v3, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {v3}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    .line 1017
    iget-object v4, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/components/InputPanel;->getQuote()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v4

    const/4 v5, 0x0

    .line 1018
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 1023
    iget-object v8, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lorg/thoughtcrime/securesms/components/ComposeText;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v8, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->inputPanel:Lorg/thoughtcrime/securesms/components/InputPanel;

    invoke-virtual {v8}, Lorg/thoughtcrime/securesms/components/InputPanel;->clearQuote()V

    :cond_0
    const/16 v8, 0xa

    const/4 v9, 0x0

    if-eqz p3, :cond_9

    if-ne v2, v7, :cond_1

    .line 1030
    iget-object v10, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    iget-object v11, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {v10, v11, v5}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;Z)V

    .line 1034
    :cond_1
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->getWebxdctDraftId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1035
    iget-object v10, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v11, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    invoke-virtual {v10, v11}, Lcom/b44t/messenger/DcContext;->getDraft(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v9

    goto/16 :goto_5

    .line 1037
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->asAttachments()Ljava/util/List;

    move-result-object v10

    .line 1038
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v11, v9

    :goto_0
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/thoughtcrime/securesms/attachments/Attachment;

    .line 1039
    invoke-virtual {v12}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v13

    .line 1040
    invoke-static {v13}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isImageType(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p3 .. p3}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->getDocumentSlide()Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    move-result-object v14

    if-nez v14, :cond_4

    .line 1041
    new-instance v14, Lcom/b44t/messenger/DcMsg;

    iget-object v15, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 1042
    invoke-static {v13}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isGif(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x15

    goto :goto_1

    :cond_3
    const/16 v13, 0x14

    :goto_1
    invoke-direct {v14, v15, v13}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1043
    :try_start_2
    invoke-virtual {v12}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getWidth()I

    move-result v11

    invoke-virtual {v12}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getHeight()I

    move-result v13

    invoke-virtual {v14, v11, v13}, Lcom/b44t/messenger/DcMsg;->setDimension(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v14

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v9, v14

    goto :goto_6

    .line 1044
    :cond_4
    :try_start_3
    invoke-static {v13}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isAudioType(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1045
    new-instance v13, Lcom/b44t/messenger/DcMsg;

    iget-object v14, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 1046
    invoke-virtual {v12}, Lorg/thoughtcrime/securesms/attachments/Attachment;->isVoiceNote()Z

    move-result v15

    if-eqz v15, :cond_5

    const/16 v15, 0x29

    goto :goto_2

    :cond_5
    const/16 v15, 0x28

    :goto_2
    invoke-direct {v13, v14, v15}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    goto :goto_3

    .line 1047
    :cond_6
    invoke-static {v13}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isVideoType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual/range {p3 .. p3}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->getDocumentSlide()Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    move-result-object v13

    if-nez v13, :cond_7

    .line 1048
    new-instance v13, Lcom/b44t/messenger/DcMsg;

    iget-object v14, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    const/16 v15, 0x32

    invoke-direct {v13, v14, v15}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1049
    :try_start_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v9, v13

    goto :goto_6

    .line 1051
    :cond_7
    :try_start_5
    new-instance v13, Lcom/b44t/messenger/DcMsg;

    iget-object v14, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    const/16 v15, 0x3c

    invoke-direct {v13, v14, v15}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    :goto_3
    move-object v11, v13

    .line 1053
    :goto_4
    invoke-virtual {v12, v1}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getRealPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 1054
    invoke-virtual {v11, v12, v9}, Lcom/b44t/messenger/DcMsg;->setFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :cond_8
    move-object v9, v11

    .line 1057
    :goto_5
    :try_start_6
    invoke-virtual {v9, v0}, Lcom/b44t/messenger/DcMsg;->setText(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v9, v11

    goto :goto_6

    :catch_3
    move-exception v0

    .line 1060
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1063
    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1064
    new-instance v9, Lcom/b44t/messenger/DcMsg;

    iget-object v10, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-direct {v9, v10, v8}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    .line 1065
    invoke-virtual {v9, v0}, Lcom/b44t/messenger/DcMsg;->setText(Ljava/lang/String;)V

    .line 1068
    :cond_a
    :goto_7
    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v9, :cond_b

    .line 1069
    new-instance v0, Lcom/b44t/messenger/DcMsg;

    iget-object v9, v1, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-direct {v0, v9, v8}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    move-object v9, v0

    .line 1070
    :cond_b
    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/mms/QuoteModel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/QuoteModel;->getQuotedMsg()Lcom/b44t/messenger/DcMsg;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/b44t/messenger/DcMsg;->setQuote(Lcom/b44t/messenger/DcMsg;)V

    .line 1074
    :cond_c
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationActivity$5;

    invoke-direct {v0, v1, v2, v3}, Lorg/thoughtcrime/securesms/ConversationActivity$5;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;ILcom/b44t/messenger/util/concurrent/SettableFuture;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v5

    aput-object v6, v4, v7

    .line 1114
    invoke-virtual {v0, v2, v4}, Lorg/thoughtcrime/securesms/ConversationActivity$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v3
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method

.method protected sendComplete(I)V
    .locals 4

    .line 1121
    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1122
    :goto_0
    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->chatId:I

    .line 1124
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1128
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/thoughtcrime/securesms/ConversationFragment;->setLastSeen(J)V

    if-eqz v0, :cond_2

    .line 1131
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/thoughtcrime/securesms/ConversationFragment;->reload(Lorg/thoughtcrime/securesms/recipients/Recipient;J)V

    .line 1132
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->updateVisibleChat(II)V

    .line 1135
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->fragment:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->scrollToBottom()V

    .line 1136
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setDraftText(Ljava/lang/String;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/ComposeText;->setSelection(I)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.browser.application_id"

    .line 429
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 434
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 436
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const p1, 0x7f1202c0

    const/4 v0, 0x1

    .line 437
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
