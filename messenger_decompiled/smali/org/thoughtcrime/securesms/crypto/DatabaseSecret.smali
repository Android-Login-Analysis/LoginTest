.class public Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;
.super Ljava/lang/Object;
.source "DatabaseSecret.java"


# instance fields
.field private final encoded:Ljava/lang/String;

.field private final key:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Hex;->fromStringCondensed(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->key:[B

    .line 22
    iput-object p1, p0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->encoded:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->key:[B

    .line 17
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Hex;->toStringCondensed([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->encoded:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->key:[B

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->encoded:Ljava/lang/String;

    return-object v0
.end method
