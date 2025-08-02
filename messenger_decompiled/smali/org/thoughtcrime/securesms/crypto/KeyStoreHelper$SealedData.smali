.class public Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;
.super Ljava/lang/Object;
.source "KeyStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SealedData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData$ByteArrayDeserializer;,
        Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData$ByteArraySerializer;
    }
.end annotation


# instance fields
.field private data:[B
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData$ByteArrayDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData$ByteArraySerializer;
    .end annotation
.end field

.field private iv:[B
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData$ByteArrayDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData$ByteArraySerializer;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>([B[B)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;->iv:[B

    .line 166
    iput-object p2, p0, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;->data:[B

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;)[B
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;->iv:[B

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;)[B
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;->data:[B

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;
    .locals 1

    .line 182
    :try_start_0
    const-class v0, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/crypto/KeyStoreHelper$SealedData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 184
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public serialize()Ljava/lang/String;
    .locals 2

    .line 174
    :try_start_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
