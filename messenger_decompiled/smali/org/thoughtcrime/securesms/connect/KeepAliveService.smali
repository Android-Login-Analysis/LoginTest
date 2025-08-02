.class public Lorg/thoughtcrime/securesms/connect/KeepAliveService;
.super Landroid/app/Service;
.source "KeepAliveService.java"


# static fields
.field private static ch_created:Z = false

.field static s_this:Lorg/thoughtcrime/securesms/connect/KeepAliveService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static createFgNotificationChannel(Landroid/content/Context;)V
    .locals 4

    .line 117
    sget-boolean v0, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->ch_created:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 118
    sput-boolean v0, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->ch_created:Z

    .line 119
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "dc_foreground_notification_ch"

    const-string v3, "Receive messages in background."

    invoke-direct {v1, v2, v3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v0, "Ensure reliable message receiving."

    .line 121
    invoke-static {v1, v0}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 122
    const-class v0, Landroid/app/NotificationManager;

    invoke-static {p0, v0}, Landroidx/core/content/pm/PackageInfoCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 123
    invoke-static {p0, v1}, Landroidx/core/content/pm/PackageInfoCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 4

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x8000000

    .line 96
    invoke-static {}, Lorg/thoughtcrime/securesms/util/IntentUtils;->FLAG_MUTABLE()I

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 98
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120050

    .line 100
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f1202cc

    .line 101
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, -0x2

    .line 103
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-wide/16 v2, 0x0

    .line 104
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 105
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f0801c6

    .line 106
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 108
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->createFgNotificationChannel(Landroid/content/Context;)V

    const-string v0, "dc_foreground_notification_ch"

    .line 109
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 111
    :cond_0
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/thoughtcrime/securesms/connect/KeepAliveService;
    .locals 1

    .line 85
    sget-object v0, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->s_this:Lorg/thoughtcrime/securesms/connect/KeepAliveService;

    return-object v0
.end method

.method public static maybeStartSelf(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->reliableService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->startSelf(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static startSelf(Landroid/content/Context;)V
    .locals 2

    .line 40
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/connect/KeepAliveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "DeltaChat"

    const-string v1, "*** KeepAliveService.onCreate()"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sput-object p0, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->s_this:Lorg/thoughtcrime/securesms/connect/KeepAliveService;

    const/4 v0, 0x1

    .line 56
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->stopForeground(Z)V

    .line 57
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DeltaChat"

    const-string v1, "*** KeepAliveService.onDestroy()"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "DeltaChat"

    const-string p2, "*** KeepAliveService.onStartCommand()"

    .line 69
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
