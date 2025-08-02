.class public Lorg/thoughtcrime/securesms/ConversationListActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "ConversationListActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/BaseConversationListFragment$ConversationSelectedListener;


# static fields
.field public static final ACCOUNT_ID_EXTRA:Ljava/lang/String; = "account_id"

.field public static final CLEAR_NOTIFICATIONS:Ljava/lang/String; = "clear_notifications"

.field public static final FROM_WELCOME:Ljava/lang/String; = "from_welcome"

.field private static final NDK_ARCH_WARNED:Ljava/lang/String; = "ndk_arch_warned"

.field private static final OPENPGP4FPR:Ljava/lang/String; = "openpgp4fpr"

.field private static final TAG:Ljava/lang/String; = "ConversationListActivity"


# instance fields
.field private conversationListFragment:Lorg/thoughtcrime/securesms/ConversationListFragment;

.field private fragmentContainer:Landroid/view/ViewGroup;

.field private searchAction:Landroid/widget/ImageView;

.field private searchFragment:Lorg/thoughtcrime/securesms/search/SearchFragment;

.field private searchToolbar:Lorg/thoughtcrime/securesms/components/SearchToolbar;

.field private selfAvatar:Lorg/thoughtcrime/securesms/components/AvatarImageView;

.field private selfAvatarContainer:Landroid/view/ViewGroup;

.field public title:Landroid/widget/TextView;

.field private unreadIndicator:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/ConversationListActivity;)Lorg/thoughtcrime/securesms/search/SearchFragment;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchFragment:Lorg/thoughtcrime/securesms/search/SearchFragment;

    return-object p0
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/ConversationListActivity;Lorg/thoughtcrime/securesms/search/SearchFragment;)Lorg/thoughtcrime/securesms/search/SearchFragment;
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchFragment:Lorg/thoughtcrime/securesms/search/SearchFragment;

    return-object p1
.end method

.method private checkNdkArchitecture()V
    .locals 8

    const-string v0, "x86_64"

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ndk_arch_warned"

    const/4 v3, 0x0

    if-nez v1, :cond_5

    const-string v1, "os.arch"

    .line 180
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "armv7"

    .line 183
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_0

    const-string v4, "armeabi-v7a"

    goto :goto_0

    :cond_0
    const-string v4, "aarch64"

    .line 184
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "arm64-v8a"

    goto :goto_0

    :cond_1
    const-string v4, "i686"

    .line 185
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "x86"

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    goto :goto_0

    .line 188
    :cond_3
    sget-object v4, Lorg/thoughtcrime/securesms/ConversationListActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown os.arch: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 192
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "This phone has the unknown architecture "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".\n\nPlease open an issue at https://github.com/deltachat/deltachat-android/issues."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 200
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Apparently you used `ndk-make.sh x86_64`, but this device is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".\n\nYou can use the app, but changes you made to the Rust code were not applied.\n\nTo compile in your changes, you can:\n- Either run `ndk-make.sh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "` to build only for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in debug mode\n- Or run `ndk-make.sh` without argument to build for all architectures in release mode\n\nIf something doesn\'t work, please open an issue at https://github.com/deltachat/deltachat-android/issues!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_1
    sget-object v1, Lorg/thoughtcrime/securesms/ConversationListActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {p0, v2, v3}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_6

    .line 210
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v5, 0x0

    .line 212
    invoke-virtual {v0, v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 214
    invoke-static {p0, v2, v4}, Lorg/thoughtcrime/securesms/util/Prefs;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_2
    if-nez v4, :cond_7

    .line 219
    invoke-static {p0, v2, v3}, Lorg/thoughtcrime/securesms/util/Prefs;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method private createChat()V
    .locals 2

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/NewConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->acquireRelayMessageContent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 480
    :cond_0
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleOpenpgp4fpr()V
    .locals 3

    .line 407
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openpgp4fpr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->isInviteURL(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    :cond_1
    new-instance v1, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;-><init>(Landroid/app/Activity;)V

    .line 416
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->handleQrData(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private handleResetRelaying()V
    .locals 2

    .line 422
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->resetRelayingMessageContent(Landroid/app/Activity;)V

    .line 423
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->refreshTitle()V

    .line 424
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->selfAvatarContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->conversationListFragment:Lorg/thoughtcrime/securesms/ConversationListFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->onNewIntent()V

    .line 426
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private initializeSearchListener()V
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchAction:Landroid/widget/ImageView;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchToolbar:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationListActivity$1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationListActivity$1;-><init>(Lorg/thoughtcrime/securesms/ConversationListActivity;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->setListener(Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;)V

    return-void
.end method

.method private refresh()V
    .locals 5

    .line 232
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_id"

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 234
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "clear_notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->removeAllNotifiations(I)V

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 238
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchAccountAndStartActivity(Landroid/app/Activity;I)V

    .line 241
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->refreshAvatar()V

    .line 242
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->refreshUnreadIndicator()V

    .line 243
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->refreshTitle()V

    .line 244
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->handleOpenpgp4fpr()V

    .line 245
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isDirectSharing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getDirectSharingChatId(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->openConversation(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method synthetic lambda$initializeSearchListener$2$org-thoughtcrime-securesms-ConversationListActivity(Landroid/view/View;)V
    .locals 3

    .line 338
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchToolbar:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchAction:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchAction:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchAction:Landroid/widget/ImageView;

    .line 339
    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchAction:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 338
    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->display(FF)V

    return-void
.end method

.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-ConversationListActivity(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->showSwitchAccountMenu(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$org-thoughtcrime-securesms-ConversationListActivity(Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 158
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->showSwitchAccountMenu(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 485
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0xc0de

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p1

    .line 489
    new-instance p2, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;-><init>(Landroid/app/Activity;)V

    .line 490
    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->onScanPerformed(Lcom/google/zxing/integration/android/IntentResult;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchToolbar:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchToolbar:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->collapse()V

    goto :goto_0

    .line 469
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->handleResetRelaying()V

    .line 471
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->finish()V

    goto :goto_0

    .line 472
    :cond_1
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 5

    const-string p1, "pref_last_device_msg_id"

    const-string p2, "update_1_46_0l_android"

    .line 106
    :try_start_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->wasDeviceMsgEverAdded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_welcome"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/b44t/messenger/DcMsg;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "https://get.delta.chat/#changelogs"

    aput-object v4, v2, v3

    const v3, 0x7f12041a

    .line 118
    invoke-virtual {p0, v3, v2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcMsg;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 120
    :goto_0
    invoke-virtual {v0, p2, v1}, Lcom/b44t/messenger/DcContext;->addDeviceMsg(Ljava/lang/String;Lcom/b44t/messenger/DcMsg;)I

    const-string v1, ""

    .line 122
    invoke-static {p0, p1, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    .line 123
    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChatIdByContactId(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->marknoticedChat(I)V

    .line 128
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/thoughtcrime/securesms/util/Prefs;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const p1, 0x7f0c0046

    .line 135
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->setContentView(I)V

    const p1, 0x7f0903b4

    .line 137
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 138
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const p1, 0x7f090322

    .line 139
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/AvatarImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->selfAvatar:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const p1, 0x7f090323

    .line 140
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->selfAvatarContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0903c7

    .line 141
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->unreadIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0903b5

    .line 142
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->title:Landroid/widget/TextView;

    const p1, 0x7f090315

    .line 143
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/SearchToolbar;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchToolbar:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    const p1, 0x7f090308

    .line 144
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchAction:Landroid/widget/ImageView;

    const p1, 0x7f09015a

    .line 145
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->fragmentContainer:Landroid/view/ViewGroup;

    .line 147
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 148
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationListFragment;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/ConversationListFragment;-><init>()V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListFragment;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->conversationListFragment:Lorg/thoughtcrime/securesms/ConversationListFragment;

    .line 150
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->initializeSearchListener()V

    .line 152
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchAction:Landroid/widget/ImageView;

    const p2, 0x7f1203b4

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->selfAvatar:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const p2, 0x7f1203ed

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->selfAvatar:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    new-instance p2, Lorg/thoughtcrime/securesms/ConversationListActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ConversationListActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ConversationListActivity;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->title:Landroid/widget/TextView;

    new-instance p2, Lorg/thoughtcrime/securesms/ConversationListActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ConversationListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ConversationListActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->refresh()V

    return-void
.end method

.method public onCreateConversation(I)V
    .locals 1

    const/4 v0, -0x1

    .line 431
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->openConversation(II)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 225
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->setIntent(Landroid/content/Intent;)V

    .line 226
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->refresh()V

    .line 227
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->conversationListFragment:Lorg/thoughtcrime/securesms/ConversationListFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListFragment;->onNewIntent()V

    .line 228
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 377
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    return v0

    .line 393
    :sswitch_0
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->showSwitchAccountMenu(Landroid/app/Activity;)V

    return v1

    .line 384
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 387
    :sswitch_2
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    const-class v0, Lorg/thoughtcrime/securesms/qr/QrActivity;

    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return v1

    .line 381
    :sswitch_3
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->createChat()V

    return v1

    .line 390
    :sswitch_4
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->openMaps(Landroid/content/Context;I)V

    return v1

    .line 399
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 396
    :sswitch_6
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->onBackPressed()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_6
        0x7f0901ef -> :sswitch_5
        0x7f090202 -> :sswitch_4
        0x7f090207 -> :sswitch_3
        0x7f090209 -> :sswitch_2
        0x7f090211 -> :sswitch_1
        0x7f090214 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPreCreate()V
    .locals 1

    .line 97
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    .line 98
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPreCreate()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 317
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 318
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 320
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const v1, 0x7f0e0018

    .line 321
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090202

    .line 322
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 323
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isLocationStreamingEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 327
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isLocationStreamingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 332
    :cond_1
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 499
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 311
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onResume()V

    .line 312
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->triggerRefreshDirectShare(Landroid/content/Context;)V

    return-void
.end method

.method public onSwitchToArchive()V
    .locals 2

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->acquireRelayMessageContent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 462
    :cond_0
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f010031

    const v1, 0x7f01001f

    .line 463
    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public openConversation(II)V
    .locals 2

    .line 435
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->searchToolbar:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->clearFocus()V

    .line 437
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 438
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isForwarding(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isSelfTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->immediatelyRelay(Landroid/app/Activity;I)V

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->getCheckmarkEmoji(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f1203ae

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 441
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->handleResetRelaying()V

    .line 442
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->finish()V

    goto :goto_0

    .line 444
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_id"

    .line 445
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "starting_position"

    .line 446
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 448
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->acquireRelayMessageContent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 450
    :cond_1
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010031

    const p2, 0x7f01001f

    .line 452
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public refreshAvatar()V
    .locals 6

    .line 270
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->selfAvatarContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->selfAvatarContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 274
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const/4 v2, 0x1

    .line 275
    invoke-virtual {v0, v2}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v2

    const-string v3, "displayname"

    .line 276
    invoke-virtual {v0, v3}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    invoke-virtual {v2}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_1
    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->selfAvatar:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v4

    new-instance v5, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-direct {v5, p0, v2, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    :goto_0
    return-void
.end method

.method public refreshTitle()V
    .locals 2

    .line 251
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isForwarding(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->title:Landroid/widget/TextView;

    const v1, 0x7f12016e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->title:Landroid/widget/TextView;

    const v1, 0x7f1200b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_1

    .line 264
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->title:Landroid/widget/TextView;

    const v1, 0x7f120050

    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getConnectivitySummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_1
    return-void
.end method

.method public refreshUnreadIndicator()V
    .locals 8

    .line 286
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    .line 288
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getAll()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v7, v2, v5

    if-eq v7, v1, :cond_0

    .line 290
    invoke-virtual {v0, v7}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/b44t/messenger/DcContext;->getFreshMsgs()[I

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    .line 295
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->unreadIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 297
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->unreadIndicator:Landroid/widget/ImageView;

    invoke-static {}, Lcom/amulyakhare/textdrawable/TextDrawable;->builder()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v1

    .line 298
    invoke-interface {v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    const/16 v2, 0x18

    .line 299
    invoke-static {p0, v2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->width(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    .line 300
    invoke-static {p0, v2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->height(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    const/4 v2, -0x1

    .line 301
    invoke-interface {v1, v2}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->textColor(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->bold()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v1

    .line 304
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060361

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity;->unreadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
