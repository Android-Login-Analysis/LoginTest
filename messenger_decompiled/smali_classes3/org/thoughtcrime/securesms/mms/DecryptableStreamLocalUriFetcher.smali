.class Lorg/thoughtcrime/securesms/mms/DecryptableStreamLocalUriFetcher;
.super Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
.source "DecryptableStreamLocalUriFetcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DecryptableStreamLocalUriFetcher"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 22
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamLocalUriFetcher;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 28
    :try_start_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamLocalUriFetcher;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 30
    sget-object p2, Lorg/thoughtcrime/securesms/mms/DecryptableStreamLocalUriFetcher;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "PartAuthority couldn\'t load Uri resource."

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamLocalUriFetcher;->loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
