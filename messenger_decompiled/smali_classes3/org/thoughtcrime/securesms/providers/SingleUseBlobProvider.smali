.class public Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;
.super Ljava/lang/Object;
.source "SingleUseBlobProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "org.thoughtcrime.securesms"

.field public static final PATH:Ljava/lang/String; = "memory/*/#"

.field private static final instance:Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;->instance:Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;->cache:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;
    .locals 1

    .line 21
    sget-object v0, Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;->instance:Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getStream(J)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ID not found: "

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;->cache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 28
    iget-object v2, p0, Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;->cache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 30
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 31
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
