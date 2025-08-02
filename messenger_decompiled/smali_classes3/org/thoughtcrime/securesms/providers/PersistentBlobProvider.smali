.class public Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;
.super Ljava/lang/Object;
.source "PersistentBlobProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "org.thoughtcrime.securesms"

.field private static final BLOB_EXTENSION:Ljava/lang/String; = "blob"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXPECTED_PATH_NEW:Ljava/lang/String; = "capture-new/*/*/*/*/#"

.field public static final EXPECTED_PATH_OLD:Ljava/lang/String; = "capture/*/*/#"

.field private static final FILENAME_PATH_SEGMENT:I = 0x2

.field private static final FILESIZE_PATH_SEGMENT:I = 0x3

.field private static final MATCHER:Landroid/content/UriMatcher;

.field private static final MATCH_NEW:I = 0x2

.field private static final MATCH_OLD:I = 0x1

.field private static final MIMETYPE_PATH_SEGMENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PersistentBlobProvider"

.field private static final URI_STRING:Ljava/lang/String; = "content://org.thoughtcrime.securesms/capture-new"

.field private static volatile instance:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://org.thoughtcrime.securesms/capture-new"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    new-instance v0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$1;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$1;-><init>(I)V

    sput-object v0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->MATCHER:Landroid/content/UriMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private create(Landroid/content/Context;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 0

    .line 94
    invoke-direct {p0, p1, p3, p4, p2}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->persistToDisk(Landroid/content/Context;JLjava/io/InputStream;)V

    .line 95
    sget-object p1, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 98
    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 101
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getCacheFile(Landroid/content/Context;J)Ljava/io/File;
    .locals 3

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "capture-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".blob"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 193
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "blob"

    :goto_0
    return-object p0
.end method

.method private static getExternalDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 209
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "no external files directory"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getFile(Landroid/content/Context;J)Ljava/io/File;
    .locals 2

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getLegacyFile(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getCacheFile(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getModernCacheFile(Landroid/content/Context;J)Ljava/io/File;

    move-result-object p1

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    .line 148
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method public static getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 172
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isAuthority(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 173
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isExternalBlobUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 174
    :cond_1
    sget-object p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    return-object v1

    .line 176
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getFileSize(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/Long;
    .locals 2

    .line 180
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isAuthority(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 181
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isExternalBlobUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 182
    :cond_1
    sget-object p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    return-object v1

    .line 185
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 187
    sget-object p1, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;
    .locals 2

    .line 53
    sget-object v0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->instance:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->instance:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;-><init>()V

    sput-object v1, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->instance:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->instance:Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    return-object v0
.end method

.method private getLegacyFile(Landroid/content/Context;J)Ljava/io/File;
    .locals 3

    .line 153
    new-instance v0, Ljava/io/File;

    const-string v1, "captures"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".blob"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 165
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isAuthority(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isExternalBlobUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 167
    invoke-static {p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getMimeTypeFromExtension(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private static getMimeTypeFromExtension(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 198
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "application/octet-stream"

    :goto_0
    return-object p0
.end method

.method private getModernCacheFile(Landroid/content/Context;J)Ljava/io/File;
    .locals 3

    .line 161
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "capture-m-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".blob"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isAuthority(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    .line 215
    sget-object v0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    .line 216
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isExternalBlobUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private static isExternalBlobUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    .line 221
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getExternalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private persistToDisk(Landroid/content/Context;JLjava/io/InputStream;)V
    .locals 8

    .line 107
    iget-object v0, p0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;Landroid/content/Context;JLjava/io/InputStream;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 8

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->create(Landroid/content/Context;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public create(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 75
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p2, p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->create(Landroid/content/Context;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public createForExternal(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getExternalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/FileProviderUtil;->getUriFor(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2

    .line 123
    sget-object v0, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 130
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isExternalBlobUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 126
    :cond_1
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getFile(Landroid/content/Context;J)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public getStream(Landroid/content/Context;J)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getFile(Landroid/content/Context;J)Ljava/io/File;

    move-result-object p1

    .line 139
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p2
.end method

.method synthetic lambda$persistToDisk$0$org-thoughtcrime-securesms-providers-PersistentBlobProvider(Landroid/content/Context;JLjava/io/InputStream;)V
    .locals 1

    .line 109
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getFile(Landroid/content/Context;J)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    invoke-static {p4, v0}, Lorg/thoughtcrime/securesms/util/Util;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    sget-object p2, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
