.class public Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteReplyReceiver.java"


# static fields
.field public static final ACCOUNT_ID_EXTRA:Ljava/lang/String; = "account_id"

.field public static final CHAT_ID_EXTRA:Ljava/lang/String; = "chat_id"

.field public static final EXTRA_REMOTE_REPLY:Ljava/lang/String; = "extra_remote_reply"

.field public static final REPLY_ACTION:Ljava/lang/String; = "org.thoughtcrime.securesms.notifications.WEAR_REPLY"

.field public static final TAG:Ljava/lang/String; = "RemoteReplyReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 2

    .line 60
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isContactRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->acceptChat(I)V

    .line 64
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/b44t/messenger/DcContext;->sendTextMsg(ILjava/lang/String;)I

    .line 65
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->removeNotifications(II)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "org.thoughtcrime.securesms.notifications.WEAR_REPLY"

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {p2}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_id"

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "chat_id"

    .line 52
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "extra_remote_reply"

    .line 56
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    new-instance v2, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1, p2, v0}, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;IILjava/lang/CharSequence;)V

    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
