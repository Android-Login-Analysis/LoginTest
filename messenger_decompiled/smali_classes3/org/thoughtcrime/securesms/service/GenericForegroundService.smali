.class public final Lorg/thoughtcrime/securesms/service/GenericForegroundService;
.super Landroid/app/Service;
.source "GenericForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;,
        Lorg/thoughtcrime/securesms/service/GenericForegroundService$LocalBinder;
    }
.end annotation


# static fields
.field private static final ACTION_START:Ljava/lang/String; = "start"

.field private static final ACTION_STOP:Ljava/lang/String; = "stop"

.field private static final CHANNEL_CREATED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final DEFAULTS:Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

.field private static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "extra_channel_id"

.field private static final EXTRA_CONTENT_TEXT:Ljava/lang/String; = "extra_content_text"

.field private static final EXTRA_ICON_RES:Ljava/lang/String; = "extra_icon_res"

.field private static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field private static final EXTRA_PROGRESS:Ljava/lang/String; = "extra_progress"

.field private static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "extra_progress_indeterminate"

.field private static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "extra_progress_max"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "extra_title"

.field private static final NEXT_ID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final TAG:Ljava/lang/String; = "GenericForegroundService"

.field private static startedCounter:I


# instance fields
.field private final allActiveMessages:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final binder:Landroid/os/IBinder;

.field private lastPosted:Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->NEXT_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->CHANNEL_CREATED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    sput v1, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startedCounter:I

    .line 57
    new-instance v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    const-string v3, ""

    const-string v4, ""

    const-string v5, "ch_generic"

    const v6, 0x7f080177

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZLorg/thoughtcrime/securesms/service/GenericForegroundService$1;)V

    sput-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->DEFAULTS:Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$LocalBinder;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService$LocalBinder;-><init>(Lorg/thoughtcrime/securesms/service/GenericForegroundService;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->binder:Landroid/os/IBinder;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->allActiveMessages:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$200()Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;
    .locals 1

    .line 32
    sget-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->DEFAULTS:Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    return-object v0
.end method

.method private static createFgNotificationChannel(Landroid/content/Context;)V
    .locals 4

    .line 189
    sget-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->CHANNEL_CREATED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "ch_generic"

    const-string v3, "Generic Background Service"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Ensure app will not be killed while long ongoing background tasks are running."

    .line 193
    invoke-static {v0, v1}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 194
    const-class v1, Landroid/app/NotificationManager;

    invoke-static {p0, v1}, Landroidx/core/content/pm/PackageInfoCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 195
    invoke-static {p0, v0}, Landroidx/core/content/pm/PackageInfoCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized handleStart(Landroid/content/Intent;)V
    .locals 5

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->access$100(Landroid/content/Intent;)Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object p1

    .line 96
    sget-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "handleStart() %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->allActiveMessages:Ljava/util/LinkedHashMap;

    iget v1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleStop(Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    .line 102
    :try_start_0
    sget-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->TAG:Ljava/lang/String;

    const-string v1, "handleStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "extra_id"

    const/4 v2, -0x1

    .line 104
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 106
    iget-object v1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->allActiveMessages:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    if-nez p1, :cond_0

    const-string p1, "Could not find entry to remove"

    .line 109
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static isForegroundTaskStarted()Z
    .locals 1

    .line 158
    sget v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startedCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private postObligatoryForegroundNotification(Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;)V
    .locals 3

    .line 114
    iput-object p1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->lastPosted:Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    .line 115
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->channelId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->iconRes:I

    .line 116
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->title:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->contentText:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->contentText:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget v1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progressMax:I

    iget v2, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progress:I

    iget-boolean p1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->indeterminate:Z

    .line 120
    invoke-virtual {v0, v1, v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/DummyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-static {}, Lorg/thoughtcrime/securesms/util/IntentUtils;->FLAG_MUTABLE()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 v0, 0x3

    .line 115
    invoke-virtual {p0, v0, p1}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public static startForegroundTask(Landroid/content/Context;Ljava/lang/String;)Lorg/thoughtcrime/securesms/service/NotificationController;
    .locals 3

    .line 132
    sget v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startedCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startedCounter:I

    .line 133
    sget-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->NEXT_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 135
    invoke-static {p0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->createFgNotificationChannel(Landroid/content/Context;)V

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/thoughtcrime/securesms/service/GenericForegroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "start"

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_title"

    .line 138
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_channel_id"

    const-string v2, "ch_generic"

    .line 139
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_icon_res"

    const v2, 0x7f0801c6

    .line 140
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_id"

    .line 141
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 145
    new-instance p1, Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-direct {p1, p0, v0}, Lorg/thoughtcrime/securesms/service/NotificationController;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public static stopForegroundTask(Landroid/content/Context;I)V
    .locals 2

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/service/GenericForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "stop"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_id"

    .line 151
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 154
    sget p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startedCounter:I

    add-int/lit8 p0, p0, -0x1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startedCounter:I

    return-void
.end method

.method private declared-synchronized updateNotification()V
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->allActiveMessages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->postObligatoryForegroundNotification(Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;)V

    goto :goto_1

    .line 85
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->TAG:Ljava/lang/String;

    const-string v1, "Last request. Ending foreground service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->lastPosted:Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->DEFAULTS:Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    :goto_0
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->postObligatoryForegroundNotification(Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;)V

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->stopForeground(Z)V

    .line 88
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 127
    iget-object p1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-eqz p1, :cond_2

    .line 67
    const-class p2, Lorg/thoughtcrime/securesms/service/GenericForegroundService;

    monitor-enter p2

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v0, "start"

    .line 69
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->handleStart(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "stop"

    .line 70
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->handleStop(Landroid/content/Intent;)V

    .line 73
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->updateNotification()V

    .line 75
    monitor-exit p2

    return v1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Action needs to be %s or %s."

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "start"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "stop"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Intent needs to be non-null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method declared-synchronized replaceProgress(IIIZLjava/lang/String;)V
    .locals 10

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->allActiveMessages:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    if-nez p1, :cond_0

    .line 165
    sget-object p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->TAG:Ljava/lang/String;

    const-string p2, "Failed to replace notification, it was not found"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :cond_0
    if-nez p5, :cond_1

    .line 170
    :try_start_1
    iget-object p5, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->contentText:Ljava/lang/String;

    :cond_1
    move-object v2, p5

    .line 173
    new-instance p5, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    iget-object v1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->title:Ljava/lang/String;

    iget-object v3, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->channelId:Ljava/lang/String;

    iget v4, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->iconRes:I

    iget v5, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->id:I

    const/4 v9, 0x0

    move-object v0, p5

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZLorg/thoughtcrime/securesms/service/GenericForegroundService$1;)V

    .line 175
    invoke-virtual {p1, p5}, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    .line 176
    sget-object p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->TAG:Ljava/lang/String;

    const-string p4, "handleReplace() skip, no change %s"

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p5, p3, p2

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 180
    :cond_2
    :try_start_2
    sget-object p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->TAG:Ljava/lang/String;

    const-string p4, "handleReplace() %s"

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p5, p3, p2

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->allActiveMessages:Ljava/util/LinkedHashMap;

    iget p2, p5, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->updateNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
