.class public final Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;
.super Ljava/lang/Object;
.source "DatabaseSecretProvider.java"


# static fields
.field private static final instances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAndStoreDatabaseSecret(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;
    .locals 3

    .line 77
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 79
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 81
    new-instance v0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;-><init>([B)V

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 84
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->asBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper;->seal([B)Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setDatabaseEncryptedSecret(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setDatabaseUnencryptedSecret(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-object v0
.end method

.method private static getEncryptedDatabaseSecret(Ljava/lang/String;)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;
    .locals 2

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 71
    invoke-static {p0}, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;->fromString(Ljava/lang/String;)Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;

    move-result-object p0

    .line 72
    new-instance v0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper;->unseal(Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;-><init>([B)V

    return-object v0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "OS downgrade not supported. KeyStore sealed data exists on platform < M!"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static getOrCreate(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;
    .locals 2

    .line 39
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getDatabaseUnencryptedSecret(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getDatabaseEncryptedSecret(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;->getUnencryptedDatabaseSecret(Landroid/content/Context;Ljava/lang/String;I)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    .line 43
    invoke-static {v1}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;->getEncryptedDatabaseSecret(Ljava/lang/String;)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    move-result-object p0

    return-object p0

    .line 44
    :cond_1
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;->createAndStoreDatabaseSecret(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    move-result-object p0

    return-object p0
.end method

.method public static getOrCreateDatabaseSecret(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;
    .locals 3

    .line 24
    sget-object v0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 25
    const-class v1, Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;

    monitor-enter v1

    .line 26
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;->getOrCreate(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 32
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    return-object p0
.end method

.method private static getUnencryptedDatabaseSecret(Landroid/content/Context;Ljava/lang/String;I)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;
    .locals 2

    .line 50
    :try_start_0
    new-instance v0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;-><init>(Ljava/lang/String;)V

    .line 52
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge p1, v1, :cond_0

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->asBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper;->seal([B)Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;->serialize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/thoughtcrime/securesms/util/Prefs;->setDatabaseEncryptedSecret(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 58
    invoke-static {p0, p1, p2}, Lorg/thoughtcrime/securesms/util/Prefs;->setDatabaseUnencryptedSecret(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 63
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
