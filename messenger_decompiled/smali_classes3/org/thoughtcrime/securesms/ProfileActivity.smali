.class public Lorg/thoughtcrime/securesms/ProfileActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;
    }
.end annotation


# static fields
.field public static final CHAT_ID_EXTRA:Ljava/lang/String; = "chat_id"

.field public static final CONTACT_ID_EXTRA:Ljava/lang/String; = "contact_id"

.field public static final FORCE_TAB_EXTRA:Ljava/lang/String; = "force_tab"

.field public static final FROM_CHAT:Ljava/lang/String; = "from_chat"

.field private static final REQUEST_CODE_PICK_RINGTONE:I = 0x1

.field public static final TAB_AUDIO:I = 0x19

.field public static final TAB_DOCS:I = 0x1e

.field public static final TAB_GALLERY:I = 0x14

.field public static final TAB_LINKS:I = 0x28

.field public static final TAB_MAP:I = 0x32

.field public static final TAB_SETTINGS:I = 0xa

.field public static final TAB_WEBXDC:I = 0x23


# instance fields
.field backPressed:Z

.field private chatId:I

.field private chatIsBroadcast:Z

.field private chatIsDeviceTalk:Z

.field private chatIsMailingList:Z

.field private chatIsMultiUser:Z

.field private contactId:I

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private fromChat:Z

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->backPressed:Z

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/ProfileActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    return p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/ProfileActivity;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isGlobalProfile()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/ProfileActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    return p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/ProfileActivity;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsDeviceTalk:Z

    return p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/ProfileActivity;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isContactProfile()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/ProfileActivity;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsBroadcast:Z

    return p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/ProfileActivity;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMailingList:Z

    return p0
.end method

.method private initializeResources()V
    .locals 4

    .line 211
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chat_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    .line 212
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    .line 213
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMultiUser:Z

    .line 214
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsDeviceTalk:Z

    .line 215
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMailingList:Z

    .line 216
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsBroadcast:Z

    .line 217
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_chat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->fromChat:Z

    .line 219
    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    if-eqz v0, :cond_0

    .line 220
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getChatIdByContactId(I)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    goto :goto_0

    .line 222
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    if-eqz v0, :cond_2

    .line 223
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v1

    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMultiUser:Z

    .line 225
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isDeviceTalk()Z

    move-result v1

    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsDeviceTalk:Z

    .line 226
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMailingList()Z

    move-result v1

    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMailingList:Z

    .line 227
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result v0

    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsBroadcast:Z

    .line 228
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMultiUser:Z

    if-nez v0, :cond_2

    .line 229
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChatContacts(I)[I

    move-result-object v0

    .line 230
    array-length v1, v0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    aget v2, v0, v2

    :cond_1
    iput v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    .line 234
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isGlobalProfile()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isSelfProfile()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMailingList:Z

    if-nez v0, :cond_3

    .line 235
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabs:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_3
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabs:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabs:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabs:Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabs:Ljava/util/ArrayList;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f090286

    .line 246
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0903b4

    .line 247
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f09038b

    .line 248
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method

.method private isContactProfile()Z
    .locals 1

    .line 270
    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMultiUser:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGlobalProfile()Z
    .locals 1

    .line 265
    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSelfProfile()Z
    .locals 2

    .line 274
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isContactProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$onVibrateSettings$3([ILandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 474
    aput p2, p0, p1

    return-void
.end method

.method private onBlockContact()V
    .locals 5

    .line 554
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->isBlocked()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x1040000

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120062

    .line 557
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 558
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 559
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/ProfileActivity;)V

    const v2, 0x7f12025a

    .line 560
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 565
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120054

    .line 566
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 568
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda7;-><init>(Lorg/thoughtcrime/securesms/ProfileActivity;)V

    const v2, 0x7f120232

    .line 569
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method private onClone()V
    .locals 3

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clone_chat"

    .line 577
    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onCopyAddrToClipboard()V
    .locals 2

    .line 539
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f1200d1

    .line 541
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onEditName()V
    .locals 6

    .line 512
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMultiUser:Z

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 514
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMailingList:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "edit_group_chat_id"

    .line 516
    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    const v1, 0x7f0c0103

    const/4 v2, 0x0

    .line 522
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f090198

    .line 523
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 524
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 526
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f12023e

    .line 527
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 528
    invoke-virtual {v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3, v0}, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ProfileActivity;Landroid/widget/EditText;Lcom/b44t/messenger/DcContact;)V

    const v0, 0x104000a

    .line 529
    invoke-virtual {v1, v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 533
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method private onEncrInfo()V
    .locals 3

    .line 545
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isContactProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContactEncrInfo(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChatEncrInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 549
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private onEnlargeAvatar()V
    .locals 5

    .line 485
    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getProfileImage()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getProfileImage()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 495
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 498
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "activity_title"

    .line 503
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMultiUser:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "avatar_for_chat_id"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0, v3}, Lorg/thoughtcrime/securesms/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 507
    :cond_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onEditName()V

    :goto_2
    return-void
.end method

.method private onNotifyOnOff()V
    .locals 2

    .line 437
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 438
    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->setMuted(J)V

    goto :goto_0

    .line 441
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ProfileActivity;)V

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/MuteDialog;->show(Landroid/content/Context;Lorg/thoughtcrime/securesms/MuteDialog$MuteSelectionListener;)V

    :goto_0
    return-void
.end method

.method private onSoundSettings()V
    .locals 5

    .line 452
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getChatRingtone(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    .line 453
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    if-nez v0, :cond_0

    .line 455
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 458
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v4, 0x1

    .line 459
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 460
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 461
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x2

    .line 462
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 463
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v2, v4}, Lorg/thoughtcrime/securesms/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private onVibrateSettings()V
    .locals 5

    .line 469
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getChatVibrate(Landroid/content/Context;II)Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->getId()I

    move-result v0

    .line 470
    filled-new-array {v0}, [I

    move-result-object v1

    .line 471
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12036b

    .line 472
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda4;-><init>([I)V

    const v4, 0x7f030021

    .line 473
    invoke-virtual {v2, v4, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1}, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/ProfileActivity;[I)V

    const v1, 0x7f1202d8

    .line 475
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120097

    const/4 v2, 0x0

    .line 477
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private setMuted(J)V
    .locals 2

    .line 446
    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0, p1, p2}, Lcom/b44t/messenger/DcContext;->setChatMuteDuration(IJ)Z

    :cond_0
    return-void
.end method

.method private updateToolbar()V
    .locals 4

    .line 252
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isGlobalProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120230

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 255
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    if-lez v0, :cond_1

    .line 256
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcChat;Z)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isContactProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v3, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    invoke-virtual {v2, v3}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setTitle(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcContact;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->updateToolbar()V

    return-void
.end method

.method synthetic lambda$onBlockContact$6$org-thoughtcrime-securesms-ProfileActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 561
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget p2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/b44t/messenger/DcContext;->blockContact(II)V

    return-void
.end method

.method synthetic lambda$onBlockContact$7$org-thoughtcrime-securesms-ProfileActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 570
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget p2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/b44t/messenger/DcContext;->blockContact(II)V

    return-void
.end method

.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-ProfileActivity(Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$onCreate$1$org-thoughtcrime-securesms-ProfileActivity(Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onEnlargeAvatar()V

    return-void
.end method

.method synthetic lambda$onEditName$5$org-thoughtcrime-securesms-ProfileActivity(Landroid/widget/EditText;Lcom/b44t/messenger/DcContact;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 530
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 531
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/b44t/messenger/DcContext;->createContact(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$onNotifyOnOff$2$org-thoughtcrime-securesms-ProfileActivity(J)V
    .locals 0

    .line 441
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ProfileActivity;->setMuted(J)V

    return-void
.end method

.method synthetic lambda$onVibrateSettings$4$org-thoughtcrime-securesms-ProfileActivity([ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 476
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result p2

    iget p3, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->fromId(I)Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    move-result-object p1

    invoke-static {p0, p2, p3, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setChatVibrate(Landroid/content/Context;IILorg/thoughtcrime/securesms/util/Prefs$VibrateState;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 583
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    .line 585
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 586
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    .line 588
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 589
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 591
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result p2

    iget p3, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-static {p0, p2, p3, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setChatRingtone(Landroid/content/Context;IILandroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->backPressed:Z

    .line 188
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 2

    const p1, 0x7f0c00de

    .line 86
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ProfileActivity;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->initializeResources()V

    .line 90
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ProfileActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 91
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 92
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isGlobalProfile()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p2, 0x7f120087

    .line 94
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 96
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f0c004a

    .line 97
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 98
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 99
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 100
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 101
    invoke-virtual {v0, p2, p2, p2, p2}, Landroidx/appcompat/widget/Toolbar;->setPadding(IIII)V

    .line 102
    invoke-virtual {v0, p2, p2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationTitleView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    .line 105
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ProfileActivity;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setOnBackClickedListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->titleView:Lorg/thoughtcrime/securesms/ConversationTitleView;

    new-instance p2, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/ProfileActivity;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->updateToolbar()V

    .line 111
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 112
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;-><init>(Lorg/thoughtcrime/securesms/ProfileActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 113
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "force_tab"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 115
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->tabs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 117
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 121
    :cond_1
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 p2, 0x7e4

    .line 122
    invoke-virtual {p1, p2, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 p2, 0x7ee

    .line 123
    invoke-virtual {p1, p2, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 128
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isSelfProfile()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isGlobalProfile()Z

    move-result v0

    if-nez v0, :cond_8

    .line 129
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0e0013

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const v0, 0x7f0901f3

    .line 133
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMultiUser:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMailingList:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsDeviceTalk:Z

    const v3, 0x7f0900cb

    const v4, 0x7f090109

    if-eqz v0, :cond_1

    .line 135
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090338

    .line 136
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 138
    :cond_1
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMultiUser:Z

    if-eqz v0, :cond_4

    .line 139
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsBroadcast:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 142
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v5, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-virtual {v0, v5}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 143
    iget-boolean v5, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsMailingList:Z

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const/4 v0, 0x1

    .line 147
    :goto_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_6

    const v0, 0x7f090205

    .line 154
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090213

    .line 155
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090215

    .line 156
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 159
    :cond_6
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->isContactProfile()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatIsDeviceTalk:Z

    if-eqz v0, :cond_8

    :cond_7
    const v0, 0x7f09007f

    .line 160
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    :cond_8
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .line 201
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 202
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 400
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 423
    :sswitch_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onEncrInfo()V

    goto :goto_0

    .line 414
    :sswitch_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onVibrateSettings()V

    goto :goto_0

    .line 411
    :sswitch_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onSoundSettings()V

    goto :goto_0

    .line 408
    :sswitch_3
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onNotifyOnOff()V

    goto :goto_0

    .line 429
    :sswitch_4
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onClone()V

    goto :goto_0

    .line 417
    :sswitch_5
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onEditName()V

    goto :goto_0

    .line 420
    :sswitch_6
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onCopyAddrToClipboard()V

    goto :goto_0

    .line 426
    :sswitch_7
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->onBlockContact()V

    goto :goto_0

    :sswitch_8
    const/4 p1, 0x1

    .line 404
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->backPressed:Z

    .line 405
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileActivity;->finish()V

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_8
        0x7f09007f -> :sswitch_7
        0x7f0900cb -> :sswitch_6
        0x7f090109 -> :sswitch_5
        0x7f0901f3 -> :sswitch_4
        0x7f090205 -> :sswitch_3
        0x7f090213 -> :sswitch_2
        0x7f090215 -> :sswitch_1
        0x7f090338 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .line 193
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPause()V

    .line 194
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->backPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->fromChat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onPreCreate()V
    .locals 1

    .line 79
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    .line 80
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPreCreate()V

    .line 81
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f09007f

    .line 170
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->contactId:I

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContact;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f12025a

    goto :goto_0

    :cond_0
    const v1, 0x7f120232

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f090205

    .line 175
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileActivity;->chatId:I

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f12025b

    goto :goto_1

    :cond_2
    const v1, 0x7f120248

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 180
    :cond_3
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
