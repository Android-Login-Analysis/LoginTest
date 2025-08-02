.class public Lorg/thoughtcrime/securesms/notifications/InChatSounds;
.super Ljava/lang/Object;
.source "InChatSounds.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InChatSounds"

.field private static volatile instance:Lorg/thoughtcrime/securesms/notifications/InChatSounds;


# instance fields
.field private soundIn:I

.field private soundOut:I

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundPool:Landroid/media/SoundPool;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundIn:I

    .line 16
    iput v0, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundOut:I

    .line 31
    :try_start_0
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundPool:Landroid/media/SoundPool;

    const v0, 0x7f11000b

    .line 32
    invoke-virtual {v1, p1, v0, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundIn:I

    .line 33
    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundPool:Landroid/media/SoundPool;

    const v1, 0x7f11000c

    invoke-virtual {v0, p1, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundOut:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    sget-object v0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->TAG:Ljava/lang/String;

    const-string v1, "cannot initialize sounds"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/InChatSounds;
    .locals 2

    .line 19
    sget-object v0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->instance:Lorg/thoughtcrime/securesms/notifications/InChatSounds;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->instance:Lorg/thoughtcrime/securesms/notifications/InChatSounds;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lorg/thoughtcrime/securesms/notifications/InChatSounds;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/notifications/InChatSounds;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->instance:Lorg/thoughtcrime/securesms/notifications/InChatSounds;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 26
    :cond_1
    :goto_0
    sget-object p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->instance:Lorg/thoughtcrime/securesms/notifications/InChatSounds;

    return-object p0
.end method


# virtual methods
.method public playIncomingSound()V
    .locals 7

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundIn:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    sget-object v1, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->TAG:Ljava/lang/String;

    const-string v2, "cannot play incoming sound"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public playSendSound()V
    .locals 7

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->soundOut:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lorg/thoughtcrime/securesms/notifications/InChatSounds;->TAG:Ljava/lang/String;

    const-string v2, "cannot play send sound"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
