.class public Lorg/thoughtcrime/securesms/connect/DcHelper;
.super Ljava/lang/Object;
.source "DcHelper.java"


# static fields
.field public static final CONFIG_ADDRESS:Ljava/lang/String; = "addr"

.field public static final CONFIG_BCC_SELF:Ljava/lang/String; = "bcc_self"

.field public static final CONFIG_CONFIGURED_ADDRESS:Ljava/lang/String; = "configured_addr"

.field public static final CONFIG_DISPLAY_NAME:Ljava/lang/String; = "displayname"

.field public static final CONFIG_E2EE_ENABLED:Ljava/lang/String; = "e2ee_enabled"

.field public static final CONFIG_INBOX_WATCH:Ljava/lang/String; = "inbox_watch"

.field public static final CONFIG_MAIL_PASSWORD:Ljava/lang/String; = "mail_pw"

.field public static final CONFIG_MAIL_PORT:Ljava/lang/String; = "mail_port"

.field public static final CONFIG_MAIL_SECURITY:Ljava/lang/String; = "mail_security"

.field public static final CONFIG_MAIL_SERVER:Ljava/lang/String; = "mail_server"

.field public static final CONFIG_MAIL_USER:Ljava/lang/String; = "mail_user"

.field public static final CONFIG_MEDIA_QUALITY:Ljava/lang/String; = "media_quality"

.field public static final CONFIG_MVBOX_MOVE:Ljava/lang/String; = "mvbox_move"

.field public static final CONFIG_MVBOX_WATCH:Ljava/lang/String; = "mvbox_watch"

.field public static final CONFIG_ONLY_FETCH_MVBOX:Ljava/lang/String; = "only_fetch_mvbox"

.field public static final CONFIG_QR_OVERLAY_LOGO:Ljava/lang/String; = "qr_overlay_logo"

.field public static final CONFIG_SELF_AVATAR:Ljava/lang/String; = "selfavatar"

.field public static final CONFIG_SELF_STATUS:Ljava/lang/String; = "selfstatus"

.field public static final CONFIG_SEND_PASSWORD:Ljava/lang/String; = "send_pw"

.field public static final CONFIG_SEND_PORT:Ljava/lang/String; = "send_port"

.field public static final CONFIG_SEND_SECURITY:Ljava/lang/String; = "send_security"

.field public static final CONFIG_SEND_SERVER:Ljava/lang/String; = "send_server"

.field public static final CONFIG_SEND_USER:Ljava/lang/String; = "send_user"

.field public static final CONFIG_SENTBOX_WATCH:Ljava/lang/String; = "sentbox_watch"

.field public static final CONFIG_SERVER_FLAGS:Ljava/lang/String; = "server_flags"

.field public static final CONFIG_SHOW_EMAILS:Ljava/lang/String; = "show_emails"

.field public static final CONFIG_SOCKS5_ENABLED:Ljava/lang/String; = "socks5_enabled"

.field public static final CONFIG_SOCKS5_HOST:Ljava/lang/String; = "socks5_host"

.field public static final CONFIG_SOCKS5_PASSWORD:Ljava/lang/String; = "socks5_password"

.field public static final CONFIG_SOCKS5_PORT:Ljava/lang/String; = "socks5_port"

.field public static final CONFIG_SOCKS5_USER:Ljava/lang/String; = "socks5_user"

.field public static final CONFIG_VERIFIED_ONE_ON_ONE_CHATS:Ljava/lang/String; = "verified_one_on_one_chats"

.field public static final CONFIG_WEBRTC_INSTANCE:Ljava/lang/String; = "webrtc_instance"

.field public static final CONFIG_WEBXDC_REALTIME_ENABLED:Ljava/lang/String; = "webxdc_realtime_enabled"

.field private static final TAG:Ljava/lang/String; = "DcHelper"

.field public static final sharedFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/connect/DcHelper;->sharedFiles:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "application/octet-stream"

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, " "

    const-string v1, ""

    .line 365
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 130
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p0

    .line 131
    invoke-virtual {p0, p1}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;
    .locals 0

    .line 92
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    sget-object p0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    return-object p0
.end method

.method public static getBlobdirFile(Lcom/b44t/messenger/DcContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 397
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 399
    :goto_0
    invoke-static {p0, p1, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getBlobdirFile(Lcom/b44t/messenger/DcContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobdirFile(Lcom/b44t/messenger/DcContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 374
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/FileUtils;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/FileUtils;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3e8

    const-string v2, "/"

    if-ge v0, v1, :cond_3

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b44t/messenger/DcContext;->getBlobdir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v3, ""

    goto :goto_2

    :cond_0
    const/16 v3, 0x64

    const-string v4, "-"

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_4

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b44t/messenger/DcContext;->getBlobdir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public static getConnectivitySummary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 448
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getConnectivity()I

    move-result v0

    const/16 v1, 0xfa0

    if-lt v0, v1, :cond_0

    .line 450
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p1, 0xbb8

    if-lt v0, p1, :cond_1

    const p1, 0x7f1200c7

    .line 452
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p1, 0x7d0

    if-lt v0, p1, :cond_2

    const p1, 0x7f1200c5

    .line 454
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f1200c6

    .line 456
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;
    .locals 0

    .line 84
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object p0

    iget-object p0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcContext:Lcom/b44t/messenger/DcContext;

    return-object p0
.end method

.method public static getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;
    .locals 0

    .line 96
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object p0

    iget-object p0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->eventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    return-object p0
.end method

.method public static getImexDir()Ljava/io/File;
    .locals 1

    .line 273
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 125
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p0

    .line 126
    invoke-virtual {p0, p1}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;
    .locals 0

    .line 100
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object p0

    iget-object p0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->notificationCenter:Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    return-object p0
.end method

.method public static getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;
    .locals 0

    .line 88
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object p0

    iget-object p0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    return-object p0
.end method

.method public static getSelfAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 120
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p0

    const-string v0, "configured_addr"

    .line 121
    invoke-virtual {p0, v0}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getThreadRecord(Landroid/content/Context;Lcom/b44t/messenger/DcLot;Lcom/b44t/messenger/DcChat;)Lorg/thoughtcrime/securesms/database/model/ThreadRecord;
    .locals 17

    .line 410
    invoke-virtual/range {p2 .. p2}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v0

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/b44t/messenger/DcLot;->getText2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 418
    new-instance v5, Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v5, v1, v2}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;)V

    .line 419
    invoke-virtual/range {p1 .. p1}, Lcom/b44t/messenger/DcLot;->getTimestamp()J

    move-result-wide v6

    .line 420
    invoke-static/range {p0 .. p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getFreshMsgCount(I)I

    move-result v8

    .line 422
    new-instance v1, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;

    int-to-long v9, v0

    .line 424
    invoke-virtual/range {p2 .. p2}, Lcom/b44t/messenger/DcChat;->getVisibility()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/b44t/messenger/DcChat;->isProtected()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/b44t/messenger/DcChat;->isSendingLocations()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/b44t/messenger/DcChat;->isMuted()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/b44t/messenger/DcChat;->isContactRequest()Z

    move-result v15

    move-object v3, v1

    move-object/from16 v16, p1

    invoke-direct/range {v3 .. v16}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;-><init>(Ljava/lang/String;Lorg/thoughtcrime/securesms/recipients/Recipient;JIJIZZZZLcom/b44t/messenger/DcLot;)V

    return-object v1
.end method

.method public static hasAnyConfiguredContext(Landroid/content/Context;)Z
    .locals 6

    .line 104
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Lcom/b44t/messenger/DcAccounts;->getAll()[I

    move-result-object v0

    .line 106
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 107
    invoke-virtual {p0, v4}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b44t/messenger/DcContext;->isConfigured()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isConfigured(Landroid/content/Context;)Z
    .locals 1

    .line 115
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/b44t/messenger/DcContext;->isConfigured()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    .line 429
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 430
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 431
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWebrtcConfigOk(Lcom/b44t/messenger/DcContext;)Z
    .locals 1

    const-string v0, "webrtc_instance"

    .line 404
    invoke-virtual {p0, v0}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$showInvalidUnencryptedDialog$3(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "#howtoe2ee"

    .line 482
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openHelp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showInvalidUnencryptedDialog$4(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 483
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lorg/thoughtcrime/securesms/qr/QrActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$showProtectionEnabledDialog$2(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "#e2eeguarantee"

    .line 473
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openHelp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showVerificationBrokenDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "#nocryptanymore"

    .line 463
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openHelp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showVerificationBrokenDialog$1(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 464
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lorg/thoughtcrime/securesms/qr/QrActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openForViewOrShare(Landroid/content/Context;ILjava/lang/String;)V
    .locals 10

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "/"

    const-string v2, "content://com.b44t.messenger.attachments/"

    .line 279
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v3

    .line 281
    instance-of v4, p0, Landroid/app/Activity;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const-string p1, "openForViewOrShare() expects an Activity object"

    .line 285
    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 289
    :cond_0
    invoke-virtual {v3, p1}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFilemime()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 293
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    new-array p1, v5, [Ljava/lang/Object;

    aput-object v4, p1, v7

    const p2, 0x7f120165

    .line 295
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 300
    :cond_1
    invoke-virtual {v3}, Lcom/b44t/messenger/DcContext;->getBlobdir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 302
    sget-object v3, Lorg/thoughtcrime/securesms/connect/DcHelper;->sharedFiles:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 304
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    const-string v1, "com.b44t.messenger.fileprovider"

    .line 305
    invoke-static {p0, v1, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 307
    :cond_3
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 311
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 312
    invoke-static {v4, v6}, Lorg/thoughtcrime/securesms/connect/DcHelper;->checkMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 313
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    move-object p2, p0

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 318
    :cond_4
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 320
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 321
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const p1, 0x7f1200b9

    .line 323
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const v0, 0x7f1202c0

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v7

    aput-object v6, p2, v5

    const-string v0, "%s (%s)"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 327
    sget-object p0, Lorg/thoughtcrime/securesms/connect/DcHelper;->TAG:Ljava/lang/String;

    const-string p2, "opening of external activity failed."

    invoke-static {p0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static openHelp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/LocalHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string v1, "section_extra"

    .line 491
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendToChat(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.SEND"

    .line 333
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_title"

    if-eqz p1, :cond_0

    .line 336
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->create(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 337
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    .line 338
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, p2, v2

    const p3, 0x7f1203c6

    .line 339
    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    const-string p2, "android.intent.extra.TEXT"

    .line 343
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_1

    const p1, 0x7f1203c8

    .line 345
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p0

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/b44t/messenger/DcContext;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setStockTranslations(Landroid/content/Context;)V
    .locals 4

    .line 148
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const v1, 0x7f1200ae

    .line 150
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203c5

    .line 151
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200fe

    .line 152
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120432

    .line 153
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1201a0

    .line 154
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120423

    .line 155
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120066

    .line 156
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120164

    .line 157
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120174

    .line 158
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12011c

    .line 159
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203f1

    .line 160
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203f4

    .line 161
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203f3

    .line 162
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200cb

    .line 163
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200c9

    .line 164
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200ca

    .line 165
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200a3

    .line 166
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12006b

    .line 167
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12006a

    .line 168
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1201da

    .line 169
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1201d3

    .line 170
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203e8

    .line 171
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200eb

    .line 172
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203af

    .line 173
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200ec

    .line 174
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200ee

    .line 175
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203f6

    .line 176
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203f5

    .line 177
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203f2

    .line 178
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12042b

    .line 179
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12042c

    .line 180
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200c1

    .line 181
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200ef

    .line 182
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200f2

    .line 183
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203a4

    .line 184
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200f0

    .line 185
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12016f

    .line 186
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200f1

    .line 187
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1202b6

    .line 188
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200fc

    .line 189
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1201a8

    .line 190
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1202e6

    .line 191
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203ea

    .line 192
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200c4

    .line 193
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200c5

    .line 194
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200c7

    .line 195
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203ca

    .line 196
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1201bf

    .line 197
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120138

    .line 198
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1202c8

    .line 199
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120261

    .line 200
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x72

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120093

    .line 201
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1202e7

    .line 202
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203bd

    .line 203
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203bc

    .line 204
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12038e

    .line 205
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120199

    .line 207
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120198

    .line 208
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120192

    .line 209
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120191

    .line 210
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120040

    .line 211
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12003f

    .line 212
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203a2

    .line 213
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203a1

    .line 214
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x83

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120196

    .line 215
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120195

    .line 216
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x85

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120194

    .line 217
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x86

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120193

    .line 218
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1201d5

    .line 219
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x88

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1201d4

    .line 220
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x89

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12012c

    .line 221
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8a

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12012b

    .line 222
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8b

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120132

    .line 223
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8c

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120131

    .line 224
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8d

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120126

    .line 225
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8e

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120125

    .line 226
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8f

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120124

    .line 227
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x90

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120123

    .line 228
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x91

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120122

    .line 229
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120121

    .line 230
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x93

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120128

    .line 231
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x94

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120127

    .line 232
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x95

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120130

    .line 233
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12012f

    .line 234
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x97

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12012e

    .line 235
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x98

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12012d

    .line 236
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x99

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12012a

    .line 237
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9a

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120129

    .line 238
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9b

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120134

    .line 239
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9c

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120133

    .line 240
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9d

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120391

    .line 245
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200c6

    .line 246
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120046

    .line 247
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7a

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120047

    .line 248
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1202a8

    .line 249
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1202af

    .line 250
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa3

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200b4

    .line 254
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xaa

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200b2

    .line 255
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xab

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200aa

    .line 257
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f12022b

    .line 258
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xad

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1201b7

    .line 259
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xae

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120399

    .line 260
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f120398

    .line 261
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb1

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203be

    .line 262
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbe

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1203bf

    .line 263
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbf

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    const v1, 0x7f1200c8

    .line 264
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p0}, Lcom/b44t/messenger/DcContext;->setStockTranslation(ILjava/lang/String;)V

    return-void
.end method

.method public static showInvalidUnencryptedDialog(Landroid/content/Context;)V
    .locals 3

    .line 480
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201b6

    .line 481
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1201c5

    .line 482
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    const p0, 0x7f12038d

    .line 483
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1202d8

    const/4 v1, 0x0

    .line 484
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 485
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 486
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static showProtectionEnabledDialog(Landroid/content/Context;)V
    .locals 2

    .line 471
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200b3

    .line 472
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1201c5

    .line 473
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1202d8

    const/4 v1, 0x0

    .line 474
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 475
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 476
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static showVerificationBrokenDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 461
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f1200b1

    .line 462
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1201c5

    .line 463
    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const p0, 0x7f12038d

    .line 464
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f1202d8

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 466
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 467
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "application/vnd.android.package-archive"

    .line 355
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "package:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
