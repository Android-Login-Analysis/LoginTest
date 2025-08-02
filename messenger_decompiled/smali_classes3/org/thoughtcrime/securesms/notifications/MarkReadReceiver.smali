.class public Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MarkReadReceiver.java"


# static fields
.field public static final ACCOUNT_ID_EXTRA:Ljava/lang/String; = "account_id"

.field public static final CANCEL_ACTION:Ljava/lang/String; = "org.thoughtcrime.securesms.notifications.CANCEL"

.field public static final CHAT_ID_EXTRA:Ljava/lang/String; = "chat_id"

.field public static final MARK_NOTICED_ACTION:Ljava/lang/String; = "org.thoughtcrime.securesms.notifications.MARK_NOTICED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;IIZ)V
    .locals 1

    .line 34
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->removeNotifications(II)V

    if-eqz p3, :cond_0

    .line 36
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/b44t/messenger/DcContext;->marknoticedChat(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "org.thoughtcrime.securesms.notifications.MARK_NOTICED"

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "org.thoughtcrime.securesms.notifications.CANCEL"

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "account_id"

    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "chat_id"

    .line 28
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    new-instance v2, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1, p2, v0}, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;IIZ)V

    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
