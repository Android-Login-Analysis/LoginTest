.class public Lorg/thoughtcrime/securesms/notifications/NotificationCenter;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;
    }
.end annotation


# static fields
.field public static final CH_GENERIC:Ljava/lang/String; = "ch_generic"

.field private static final CH_GRP_MSG:Ljava/lang/String; = "chgrp_msg"

.field public static final CH_MSG_PREFIX:Ljava/lang/String; = "ch_msg"

.field public static final CH_MSG_VERSION:Ljava/lang/String; = "5"

.field public static final CH_PERMANENT:Ljava/lang/String; = "dc_foreground_notification_ch"

.field private static final GRP_MSG:Ljava/lang/String; = "grp_msg"

.field public static final ID_GENERIC:I = 0x3

.field public static final ID_MSG_OFFSET:I = 0x0

.field public static final ID_MSG_SUMMARY:I = 0x2

.field public static final ID_PERMANENT:I = 0x1

.field private static final MIN_AUDIBLE_PERIOD_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "NotificationCenter"


# instance fields
.field private final context:Lorg/thoughtcrime/securesms/ApplicationContext;

.field private final inboxes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private volatile lastAudibleNotification:J

.field private volatile visibleChat:Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->MIN_AUDIBLE_PERIOD_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->visibleChat:Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->lastAudibleNotification:J

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->inboxes:Ljava/util/HashMap;

    .line 62
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    return-void
.end method

.method private computeChannelId(Ljava/lang/String;ZLandroid/net/Uri;Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Ljava/lang/String;
    .locals 5

    const-string v0, "ch_msg5_"

    const-string v1, "ch_msg"

    :try_start_0
    const-string v2, "SHA-256"

    .line 203
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    const/4 p1, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 205
    :goto_0
    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update(B)V

    if-eqz p3, :cond_1

    .line 206
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update([B)V

    const-string p2, "%X"

    new-array p3, p1, [Ljava/lang/Object;

    .line 207
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v4, p1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, p3, v3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x10

    invoke-virtual {p2, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 209
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_2

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".%d.%d"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p4, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget p4, p4, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 215
    sget-object p2, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-object v1
.end method

.method private effectiveSound(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;-><init>(Lorg/thoughtcrime/securesms/notifications/NotificationCenter;II)V

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    iget v1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    iget p1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getChatRingtone(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 73
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private effectiveVibrate(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    invoke-direct {p1, p0, v0, v0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;-><init>(Lorg/thoughtcrime/securesms/notifications/NotificationCenter;II)V

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    iget v2, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    iget p1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-static {v1, v2, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getChatVibrate(Landroid/content/Context;II)Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    move-result-object p1

    .line 86
    sget-object v1, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->ENABLED:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 88
    :cond_1
    sget-object v1, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->DISABLED:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    if-ne p1, v1, :cond_2

    return v0

    .line 91
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->isNotificationVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private getLedArgb(Ljava/lang/String;)I
    .locals 0

    .line 105
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0xff

    .line 108
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getMarkAsReadIntent(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;Z)Landroid/app/PendingIntent;
    .locals 2

    .line 142
    new-instance v0, Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p2, "org.thoughtcrime.securesms.notifications.MARK_NOTICED"

    goto :goto_0

    :cond_0
    const-string p2, "org.thoughtcrime.securesms.notifications.CANCEL"

    :goto_0
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const-class v1, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "custom://"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p2, "account_id"

    .line 145
    iget v1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "chat_id"

    .line 146
    iget p1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const/high16 p2, 0x8000000

    invoke-static {}, Lorg/thoughtcrime/securesms/util/IntentUtils;->FLAG_MUTABLE()I

    move-result v1

    or-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getNotificationChannel(Landroidx/core/app/NotificationManagerCompat;Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;Lcom/b44t/messenger/DcChat;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 248
    invoke-direct/range {p0 .. p0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->notificationChannelsSupported()Z

    move-result v3

    const-string v4, "ch_msg"

    if-eqz v3, :cond_8

    .line 251
    :try_start_0
    iget-object v3, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/util/Prefs;->getNotificationLedColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->effectiveVibrate(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Z

    move-result v5

    .line 253
    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->effectiveSound(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Landroid/net/Uri;

    move-result-object v6

    .line 254
    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->requiresIndependentChannel(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 257
    :goto_0
    invoke-direct {v1, v3, v5, v6, v2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->computeChannelId(Ljava/lang/String;ZLandroid/net/Uri;Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :try_start_1
    iget-object v9, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const v10, 0x7f1200de

    invoke-virtual {v9, v10}, Lorg/thoughtcrime/securesms/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_1

    .line 264
    invoke-virtual/range {p3 .. p3}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v9

    .line 268
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 270
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v11, v13, :cond_4

    .line 271
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Landroidx/core/app/NotificationCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/NotificationChannel;

    move-result-object v13

    invoke-static {v13}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v13

    .line 272
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 274
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 278
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Landroidx/core/app/NotificationCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/NotificationChannel;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Ljava/lang/CharSequence;)V

    const/4 v12, 0x1

    goto :goto_2

    .line 281
    :cond_2
    invoke-direct {v1, v13}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->parseNotificationChannelChat(Ljava/lang/String;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    move-result-object v14

    .line 282
    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->effectiveVibrate(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Z

    move-result v15

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->effectiveSound(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v3, v15, v8, v14}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->computeChannelId(Ljava/lang/String;ZLandroid/net/Uri;Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 283
    invoke-virtual {v0, v13}, Landroidx/core/app/NotificationManagerCompat;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    if-nez v12, :cond_7

    .line 292
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v7, 0x4

    invoke-direct {v4, v2, v9, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v7, "Informs about new messages."

    .line 293
    invoke-static {v4, v7}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 294
    invoke-direct/range {p0 .. p1}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->getNotificationChannelGroup(Landroidx/core/app/NotificationManagerCompat;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 295
    invoke-static {v4, v5}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    .line 296
    invoke-static {v4, v14}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    const-string v5, "none"

    .line 298
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 299
    invoke-static {v4, v14}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 300
    invoke-direct {v1, v3}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->getLedArgb(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    goto :goto_3

    .line 302
    :cond_5
    invoke-static {v4, v10}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    :goto_3
    if-eqz v6, :cond_6

    .line 305
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 306
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 307
    invoke-static {v3, v10}, Landroidx/core/app/NotificationCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/16 v5, 0x8

    .line 308
    invoke-static {v3, v5}, Landroidx/core/app/NotificationCompat$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 309
    invoke-static {v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v3

    .line 306
    invoke-static {v4, v6, v3}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 311
    invoke-static {v4, v3, v3}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 314
    :goto_4
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    move-object v4, v2

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v4, v2

    goto :goto_5

    :catch_1
    move-exception v0

    .line 318
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_6
    return-object v4
.end method

.method private getNotificationChannelGroup(Landroidx/core/app/NotificationManagerCompat;)Ljava/lang/String;
    .locals 4

    .line 238
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->notificationChannelsSupported()Z

    move-result v0

    const-string v1, "chgrp_msg"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Landroid/app/NotificationChannelGroup;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const v3, 0x7f12031c

    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    :cond_0
    return-object v1
.end method

.method private getOpenChatIntent(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Landroid/app/PendingIntent;
    .locals 3

    .line 122
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const-class v2, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account_id"

    .line 123
    iget v2, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 124
    iget v2, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "custom://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    iget-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v0}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p1

    const/high16 v0, 0x8000000

    .line 128
    invoke-static {}, Lorg/thoughtcrime/securesms/util/IntentUtils;->FLAG_MUTABLE()I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getOpenChatlistIntent(I)Landroid/app/PendingIntent;
    .locals 3

    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const-class v2, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account_id"

    .line 115
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "clear_notifications"

    const/4 v2, 0x1

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "custom://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const/high16 v1, 0x8000000

    invoke-static {}, Lorg/thoughtcrime/securesms/util/IntentUtils;->FLAG_MUTABLE()I

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getRemoteReplyIntent(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Landroid/app/PendingIntent;
    .locals 3

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.thoughtcrime.securesms.notifications.WEAR_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const-class v2, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "custom://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "account_id"

    .line 135
    iget v2, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "chat_id"

    .line 136
    iget p1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const/high16 v1, 0x8000000

    invoke-static {}, Lorg/thoughtcrime/securesms/util/IntentUtils;->FLAG_MUTABLE()I

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private notificationChannelsSupported()Z
    .locals 2

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseNotificationChannelChat(Ljava/lang/String;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;
    .locals 4

    const-string v0, "."

    .line 223
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 225
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 226
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 230
    new-instance v0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    invoke-direct {v0, p0, p1, v2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;-><init>(Lorg/thoughtcrime/securesms/notifications/NotificationCenter;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private requiresIndependentChannel(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 96
    new-instance p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    invoke-direct {p1, p0, v0, v0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;-><init>(Lorg/thoughtcrime/securesms/notifications/NotificationCenter;II)V

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    iget v2, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    iget v3, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    invoke-static {v1, v2, v3}, Lorg/thoughtcrime/securesms/util/Prefs;->getChatRingtone(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    iget v2, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    iget p1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    .line 99
    invoke-static {v1, v2, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getChatVibrate(Landroid/content/Context;II)Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    move-result-object p1

    sget-object v1, Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;->DEFAULT:Lorg/thoughtcrime/securesms/util/Prefs$VibrateState;

    if-eq p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public addNotification(III)V
    .locals 1

    .line 330
    new-instance v0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/notifications/NotificationCenter;III)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearVisibleChat()V
    .locals 1

    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->visibleChat:Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    return-void
.end method

.method synthetic lambda$addNotification$0$org-thoughtcrime-securesms-notifications-NotificationCenter(III)V
    .locals 19

    .line 0
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 332
    sget-object v0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v0, v2}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object v4

    .line 333
    invoke-virtual {v4, v3}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 334
    new-instance v5, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    invoke-direct {v5, v1, v2, v3}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;-><init>(Lorg/thoughtcrime/securesms/notifications/NotificationCenter;II)V

    .line 336
    iget-object v6, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v6}, Lorg/thoughtcrime/securesms/util/Prefs;->isNotificationsEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMuted()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_9

    .line 340
    :cond_0
    iget-object v6, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v6}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v6

    .line 341
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x21

    if-lt v7, v8, :cond_1

    invoke-virtual {v6}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    return-void

    .line 345
    :cond_1
    iget-object v7, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->visibleChat:Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    invoke-static {v7, v5}, Lorg/thoughtcrime/securesms/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 346
    iget-object v0, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Prefs;->isInChatNotifications(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/InChatSounds;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->playIncomingSound()V

    :cond_2
    return-void

    .line 353
    :cond_3
    iget-object v7, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v7}, Lorg/thoughtcrime/securesms/util/Prefs;->getNotificationPrivacy(Landroid/content/Context;)Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;

    move-result-object v7

    move/from16 v8, p3

    .line 355
    invoke-virtual {v4, v8}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v8

    .line 356
    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayMessage()Z

    move-result v9

    const/16 v10, 0x7d0

    if-eqz v9, :cond_4

    invoke-virtual {v8, v10}, Lcom/b44t/messenger/DcMsg;->getSummarytext(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_4
    iget-object v9, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const v11, 0x7f1202d0

    invoke-virtual {v9, v11}, Lorg/thoughtcrime/securesms/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 357
    :goto_0
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayContact()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 358
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v13

    invoke-virtual {v8, v13, v12}, Lcom/b44t/messenger/DcMsg;->getSenderName(Lcom/b44t/messenger/DcContact;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 362
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 363
    iget-wide v10, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->lastAudibleNotification:J

    sub-long v10, v13, v10

    sget-wide v15, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->MIN_AUDIBLE_PERIOD_MILLIS:J

    cmp-long v17, v10, v15

    if-lez v17, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_7

    .line 365
    iput-wide v13, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->lastAudibleNotification:J

    .line 372
    :cond_7
    invoke-direct {v1, v6, v5, v0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->getNotificationChannel(Landroidx/core/app/NotificationManagerCompat;Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;Lcom/b44t/messenger/DcChat;)Ljava/lang/String;

    move-result-object v11

    .line 373
    new-instance v13, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v14, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-direct {v13, v14, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v14, 0x7f080177

    .line 374
    invoke-virtual {v13, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    iget-object v15, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 375
    invoke-virtual {v15}, Lorg/thoughtcrime/securesms/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v14, 0x7f060058

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v13, v15}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    iget-object v15, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 376
    invoke-static {v15}, Lorg/thoughtcrime/securesms/util/Prefs;->getNotificationPriority(Landroid/content/Context;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    const-string v15, "msg"

    .line 377
    invoke-virtual {v13, v15}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    xor-int/lit8 v15, v10, 0x1

    .line 378
    invoke-virtual {v13, v15}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 379
    invoke-virtual {v13, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    const/4 v15, 0x0

    .line 380
    invoke-direct {v1, v5, v15}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->getMarkAsReadIntent(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;Z)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 381
    invoke-direct {v1, v5}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->getOpenChatIntent(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 383
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x18

    if-lt v14, v15, :cond_8

    .line 384
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "grp_msg."

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_8
    const-string v14, "addr"

    .line 387
    invoke-virtual {v4, v14}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 388
    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayContact()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 389
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 390
    invoke-virtual {v13, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 396
    :cond_9
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayContact()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 397
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v12

    invoke-virtual {v4, v12}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v12

    move-object/from16 v18, v14

    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Lcom/b44t/messenger/DcMsg;->getSenderName(Lcom/b44t/messenger/DcContact;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_a
    move-object/from16 v18, v14

    move-object v8, v9

    .line 399
    :goto_2
    invoke-virtual {v13, v9}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 402
    invoke-direct/range {p0 .. p0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->notificationChannelsSupported()Z

    move-result v9

    const/4 v12, 0x2

    if-nez v9, :cond_d

    if-eqz v10, :cond_c

    .line 404
    invoke-direct {v1, v5}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->effectiveSound(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 405
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 406
    invoke-virtual {v13, v9}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 408
    :cond_b
    invoke-direct {v1, v5}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->effectiveVibrate(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 410
    invoke-virtual {v13, v12}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 413
    :cond_c
    iget-object v9, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v9}, Lorg/thoughtcrime/securesms/util/Prefs;->getNotificationLedColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "none"

    .line 414
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 415
    invoke-direct {v1, v9}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->getLedArgb(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x1f4

    const/16 v14, 0x7d0

    invoke-virtual {v13, v9, v10, v14}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    .line 420
    :cond_d
    new-instance v9, Lorg/thoughtcrime/securesms/recipients/Recipient;

    iget-object v10, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-direct {v9, v10, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;)V

    .line 421
    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayContact()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 424
    :try_start_0
    iget-object v0, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-virtual {v9, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getContactPhoto(Landroid/content/Context;)Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 426
    iget-object v9, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-virtual {v9}, Lorg/thoughtcrime/securesms/ApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/content/Context;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v9

    .line 427
    invoke-virtual {v9, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 428
    invoke-virtual {v0, v9}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    iget-object v9, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 430
    invoke-virtual {v9}, Lorg/thoughtcrime/securesms/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v10, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 431
    invoke-virtual {v10}, Lorg/thoughtcrime/securesms/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x1050006

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 430
    invoke-virtual {v0, v9, v10}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 435
    :cond_e
    invoke-virtual {v9}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getFallbackContactPhoto()Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;

    move-result-object v0

    iget-object v10, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-virtual {v9}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getFallbackAvatarColor()I

    move-result v9

    invoke-virtual {v0, v10, v9}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_f

    .line 438
    iget-object v9, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-virtual {v9}, Lorg/thoughtcrime/securesms/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07005f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 439
    invoke-static {v0, v9, v9}, Lorg/thoughtcrime/securesms/util/BitmapUtil;->createFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 441
    invoke-virtual {v13, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 444
    sget-object v9, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->TAG:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    :cond_f
    :goto_4
    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayContact()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayMessage()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 451
    :try_start_1
    invoke-direct {v1, v5}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->getRemoteReplyIntent(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v9, 0x1

    .line 452
    invoke-direct {v1, v5, v9}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->getMarkAsReadIntent(Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;Z)Landroid/app/PendingIntent;

    move-result-object v5

    .line 454
    new-instance v9, Landroidx/core/app/NotificationCompat$Action;

    iget-object v10, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    const v14, 0x7f1202cd

    .line 455
    invoke-virtual {v10, v14}, Lorg/thoughtcrime/securesms/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v14, 0x7f08008b

    invoke-direct {v9, v14, v10, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 458
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const v10, 0x7f1202d4

    const/16 v14, 0x18

    if-lt v5, v14, :cond_10

    .line 459
    new-instance v5, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v14, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 460
    invoke-virtual {v14, v10}, Lorg/thoughtcrime/securesms/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f080156

    invoke-direct {v5, v15, v14, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v14, Landroidx/core/app/RemoteInput$Builder;

    const-string v15, "extra_remote_reply"

    invoke-direct {v14, v15}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 463
    invoke-virtual {v15, v10}, Lorg/thoughtcrime/securesms/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v14

    .line 462
    invoke-virtual {v5, v14}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v5

    .line 464
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v5

    .line 465
    invoke-virtual {v13, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 468
    :cond_10
    new-instance v5, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v14, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 469
    invoke-virtual {v14, v10}, Lorg/thoughtcrime/securesms/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f080154

    invoke-direct {v5, v15, v14, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v0, Landroidx/core/app/RemoteInput$Builder;

    const-string v14, "extra_remote_reply"

    invoke-direct {v0, v14}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 472
    invoke-virtual {v14, v10}, Lorg/thoughtcrime/securesms/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v0

    .line 471
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    .line 474
    invoke-virtual {v13, v9}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 475
    new-instance v5, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    invoke-virtual {v5, v9}, Landroidx/core/app/NotificationCompat$WearableExtender;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$WearableExtender;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 476
    sget-object v5, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    :cond_11
    :goto_5
    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayContact()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayMessage()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 482
    :try_start_2
    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 483
    iget-object v5, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->inboxes:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 484
    :try_start_3
    iget-object v9, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->inboxes:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    if-nez v9, :cond_12

    .line 486
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 487
    iget-object v10, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->inboxes:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_12
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_13

    .line 491
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_13
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_6
    if-ltz v8, :cond_14

    .line 497
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 499
    :cond_14
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 500
    :try_start_4
    invoke-virtual {v13, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 499
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 501
    sget-object v5, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    :cond_15
    :goto_7
    invoke-virtual {v4, v3}, Lcom/b44t/messenger/DcContext;->getFreshMsgCount(I)I

    move-result v0

    .line 509
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 510
    invoke-virtual {v13, v0}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 515
    :try_start_7
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    add-int/2addr v3, v4

    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v6, v0, v3, v4}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 517
    sget-object v3, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->TAG:Ljava/lang/String;

    const-string v4, "cannot add notification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    :goto_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_17

    .line 525
    :try_start_8
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-direct {v0, v3, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "grp_msg."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 527
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x7f080177

    .line 528
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v3, v1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 529
    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v3, "msg"

    .line 530
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v3, "Delta Chat"

    .line 531
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v3, "New messages"

    .line 532
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 533
    invoke-direct/range {p0 .. p1}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->getOpenChatlistIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 534
    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->isDisplayContact()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v3, v18

    .line 535
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 537
    :cond_16
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v6, v2, v12, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    .line 539
    sget-object v2, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->TAG:Ljava/lang/String;

    const-string v3, "cannot add notification summary"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_9
    return-void
.end method

.method synthetic lambda$updateVisibleChat$1$org-thoughtcrime-securesms-notifications-NotificationCenter(II)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 587
    new-instance v0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    invoke-direct {v0, p0, p1, p2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;-><init>(Lorg/thoughtcrime/securesms/notifications/NotificationCenter;II)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->visibleChat:Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    .line 588
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->removeNotifications(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 590
    iput-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->visibleChat:Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    :goto_0
    return-void
.end method

.method public maybePlaySendSound(Lcom/b44t/messenger/DcChat;)V
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Prefs;->isInChatNotifications(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Prefs;->isNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcChat;->isMuted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 602
    iget-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/InChatSounds;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->playSendSound()V

    :cond_0
    return-void
.end method

.method public removeAllNotifiations(I)V
    .locals 5

    .line 569
    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 570
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 571
    iget-object v2, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->inboxes:Ljava/util/HashMap;

    monitor-enter v2

    .line 572
    :try_start_0
    iget-object v3, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->inboxes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const/4 v3, 0x2

    .line 573
    invoke-virtual {v0, v1, v3}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 575
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 576
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 580
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeNotifications(II)V
    .locals 3

    .line 547
    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->inboxes:Ljava/util/HashMap;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->inboxes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 550
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 552
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 554
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :try_start_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->context:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 560
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p2, 0x0

    .line 561
    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    if-eqz v1, :cond_1

    const/4 p2, 0x2

    .line 563
    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 565
    sget-object p2, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 554
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public updateVisibleChat(II)V
    .locals 1

    .line 584
    new-instance v0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/notifications/NotificationCenter;II)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method
