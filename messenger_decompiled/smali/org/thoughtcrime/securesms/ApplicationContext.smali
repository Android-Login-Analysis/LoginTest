.class public Lorg/thoughtcrime/securesms/ApplicationContext;
.super Landroidx/multidex/MultiDexApplication;
.source "ApplicationContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationContext"

.field public static dcAccounts:Lcom/b44t/messenger/DcAccounts;


# instance fields
.field public dcContext:Lcom/b44t/messenger/DcContext;

.field public dcLocationManager:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

.field private debugOnAvailableCount:I

.field private debugOnBlockedStatusChangedCount:I

.field private debugOnCapabilitiesChangedCount:I

.field private debugOnLinkPropertiesChangedCount:I

.field public eventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

.field private jobManager:Lorg/thoughtcrime/securesms/jobmanager/JobManager;

.field public notificationCenter:Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

.field public rpc:Lcom/b44t/messenger/rpc/Rpc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method static synthetic access$008(Lorg/thoughtcrime/securesms/ApplicationContext;)I
    .locals 2

    .line 56
    iget v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->debugOnAvailableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->debugOnAvailableCount:I

    return v0
.end method

.method static synthetic access$108(Lorg/thoughtcrime/securesms/ApplicationContext;)I
    .locals 2

    .line 56
    iget v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->debugOnBlockedStatusChangedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->debugOnBlockedStatusChangedCount:I

    return v0
.end method

.method static synthetic access$208(Lorg/thoughtcrime/securesms/ApplicationContext;)I
    .locals 2

    .line 56
    iget v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->debugOnCapabilitiesChangedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->debugOnCapabilitiesChangedCount:I

    return v0
.end method

.method static synthetic access$308(Lorg/thoughtcrime/securesms/ApplicationContext;)I
    .locals 2

    .line 56
    iget v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->debugOnLinkPropertiesChangedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->debugOnLinkPropertiesChangedCount:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;
    .locals 0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/ApplicationContext;

    return-object p0
.end method

.method private initializeJobManager()V
    .locals 2

    .line 254
    new-instance v0, Lorg/thoughtcrime/securesms/jobmanager/JobManager;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/jobmanager/JobManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->jobManager:Lorg/thoughtcrime/securesms/jobmanager/JobManager;

    return-void
.end method

.method private initializeLogging()V
    .locals 1

    .line 250
    new-instance v0, Lorg/thoughtcrime/securesms/util/AndroidSignalProtocolLogger;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/AndroidSignalProtocolLogger;-><init>()V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/SignalProtocolLoggerProvider;->setProvider(Lorg/thoughtcrime/securesms/util/SignalProtocolLogger;)V

    return-void
.end method

.method private initializeRandomNumberFix()V
    .locals 0

    .line 246
    invoke-static {}, Lorg/thoughtcrime/securesms/crypto/PRNGFixes;->apply()V

    return-void
.end method


# virtual methods
.method public getJobManager()Lorg/thoughtcrime/securesms/jobmanager/JobManager;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->jobManager:Lorg/thoughtcrime/securesms/jobmanager/JobManager;

    return-object v0
.end method

.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-ApplicationContext()V
    .locals 0

    .line 90
    invoke-static {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    return-void
.end method

.method synthetic lambda$onCreate$1$org-thoughtcrime-securesms-ApplicationContext()V
    .locals 3

    .line 121
    sget-object v0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getEventEmitter()Lcom/b44t/messenger/DcEventEmitter;

    move-result-object v0

    .line 123
    :goto_0
    invoke-virtual {v0}, Lcom/b44t/messenger/DcEventEmitter;->getNextEvent()Lcom/b44t/messenger/DcEvent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "DeltaChat"

    const-string v1, "shutting down event handler"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->eventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    invoke-virtual {v2, v1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->handleEvent(Lcom/b44t/messenger/DcEvent;)J

    goto :goto_0
.end method

.method public onCreate()V
    .locals 12

    const-string v0, ", path: "

    .line 78
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    const-string v1, "DeltaChat"

    const-string v2, "++++++++++++++++++ ApplicationContext.onCreate() ++++++++++++++++++"

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/thoughtcrime/securesms/ApplicationContext$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/ApplicationContext$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ApplicationContext;)V

    const-string v3, "InitEmojiProviderThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 92
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "native-utils"

    .line 94
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/b44t/messenger/DcAccounts;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "accounts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/b44t/messenger/DcAccounts;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    .line 97
    new-instance v1, Lcom/b44t/messenger/rpc/Rpc;

    sget-object v3, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcAccounts;->getJsonrpcInstance()Lcom/b44t/messenger/DcJsonrpcInstance;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/b44t/messenger/rpc/Rpc;-><init>(Lcom/b44t/messenger/DcJsonrpcInstance;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    .line 98
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->migrateToDcAccounts(Lorg/thoughtcrime/securesms/ApplicationContext;)V

    .line 99
    sget-object v1, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcAccounts;->getAll()[I

    move-result-object v1

    .line 100
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget v6, v1, v5

    .line 101
    sget-object v7, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v7, v6}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object v7

    .line 102
    invoke-virtual {v7}, Lcom/b44t/messenger/DcContext;->isOpen()Z

    move-result v8

    if-nez v8, :cond_1

    .line 104
    :try_start_0
    invoke-static {p0, v6}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;->getOrCreateDatabaseSecret(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    move-result-object v8

    .line 105
    invoke-virtual {v8}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/b44t/messenger/DcContext;->open(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 106
    sget-object v8, Lorg/thoughtcrime/securesms/ApplicationContext;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully opened account "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/b44t/messenger/DcContext;->getBlobdir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :cond_0
    sget-object v8, Lorg/thoughtcrime/securesms/ApplicationContext;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error opening account "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/b44t/messenger/DcContext;->getBlobdir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    .line 109
    sget-object v9, Lorg/thoughtcrime/securesms/ApplicationContext;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to open account "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/b44t/messenger/DcContext;->getBlobdir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 114
    :cond_2
    array-length v0, v1

    if-nez v0, :cond_3

    .line 115
    sget-object v0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->addAccount()I

    .line 117
    :cond_3
    sget-object v0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 118
    new-instance v0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->notificationCenter:Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    .line 119
    new-instance v0, Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->eventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lorg/thoughtcrime/securesms/ApplicationContext$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/thoughtcrime/securesms/ApplicationContext$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ApplicationContext;)V

    const-string v5, "eventThread"

    invoke-direct {v0, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 132
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/Rpc;->start()V

    const-string v0, "pref_chat_background"

    const-string v3, ""

    .line 135
    invoke-static {p0, v0, v3}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 137
    sget-object v6, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v6}, Lcom/b44t/messenger/DcAccounts;->getAll()[I

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    aget v9, v6, v8

    .line 138
    invoke-static {p0, v9, v5}, Lorg/thoughtcrime/securesms/util/Prefs;->setBackgroundImagePath(Landroid/content/Context;ILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 140
    :cond_4
    invoke-static {p0, v0, v3}, Lorg/thoughtcrime/securesms/util/Prefs;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_5
    array-length v0, v1

    :goto_3
    if-ge v4, v0, :cond_6

    aget v3, v1, v4

    .line 145
    sget-object v5, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v5, v3}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object v3

    const-string v5, "verified_one_on_one_chats"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Lcom/b44t/messenger/DcContext;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 149
    :cond_6
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->setStockTranslations(Landroid/content/Context;)V

    .line 151
    sget-object v0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->startIo()V

    .line 153
    new-instance v0, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/connect/ForegroundDetector;-><init>(Lorg/thoughtcrime/securesms/ApplicationContext;)V

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_7

    const-string v0, "connectivity"

    .line 157
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    new-instance v1, Lorg/thoughtcrime/securesms/ApplicationContext$1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ApplicationContext$1;-><init>(Lorg/thoughtcrime/securesms/ApplicationContext;)V

    invoke-static {v0, v1}, Landroidx/work/impl/utils/NetworkApi24$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 182
    :cond_7
    new-instance v0, Lorg/thoughtcrime/securesms/connect/NetworkStateReceiver;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/connect/NetworkStateReceiver;-><init>()V

    .line 183
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/KeepAliveService;->maybeStartSelf(Landroid/content/Context;)V

    .line 187
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->initializeRandomNumberFix()V

    .line 188
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->initializeLogging()V

    .line 189
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->initializeJobManager()V

    .line 190
    invoke-static {p0}, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/InChatSounds;

    .line 192
    new-instance v0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcLocationManager:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    .line 194
    :try_start_1
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getSelectedLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->setContextLocale(Landroid/content/Context;Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    :goto_4
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->setDefaultDayNightMode(Landroid/content/Context;)V

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v1, Lorg/thoughtcrime/securesms/ApplicationContext$2;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ApplicationContext$2;-><init>(Lorg/thoughtcrime/securesms/ApplicationContext;)V

    invoke-virtual {p0, v1, v0}, Lorg/thoughtcrime/securesms/ApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 214
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    .line 216
    new-instance v1, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v4, Lorg/thoughtcrime/securesms/connect/FetchWorker;

    const-wide/32 v5, 0xdbba0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v8, 0x493e0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    .line 222
    invoke-virtual {v1, v0}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 223
    invoke-virtual {v0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 224
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    const-string v3, "FetchWorker"

    sget-object v4, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {v1, v3, v4, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 228
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 237
    sget-object v0, Lorg/thoughtcrime/securesms/ApplicationContext;->TAG:Ljava/lang/String;

    const-string v1, "FCM disabled at build time"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
