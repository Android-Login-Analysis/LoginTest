.class public Lorg/thoughtcrime/securesms/mms/PartAuthority;
.super Ljava/lang/Object;
.source "PartAuthority.java"


# static fields
.field private static final PERSISTENT_ROW:I = 0x3

.field private static final SINGLE_USE_ROW:I = 0x4

.field private static final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lorg/thoughtcrime/securesms/mms/PartAuthority;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "org.thoughtcrime.securesms"

    const-string v2, "capture/*/*/#"

    const/4 v3, 0x3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "capture-new/*/*/*/*/#"

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "memory/*/#"

    const/4 v3, 0x4

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttachmentContentType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 70
    sget-object v0, Lorg/thoughtcrime/securesms/mms/PartAuthority;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAttachmentFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Lorg/thoughtcrime/securesms/mms/PartAuthority;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAttachmentSize(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/Long;
    .locals 2

    .line 58
    sget-object v0, Lorg/thoughtcrime/securesms/mms/PartAuthority;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    sget-object v0, Lorg/thoughtcrime/securesms/mms/PartAuthority;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;

    move-result-object p0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/providers/SingleUseBlobProvider;->getStream(J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 36
    :cond_1
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getStream(Landroid/content/Context;J)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static isLocalUri(Landroid/net/Uri;)Z
    .locals 1

    .line 82
    sget-object v0, Lorg/thoughtcrime/securesms/mms/PartAuthority;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
