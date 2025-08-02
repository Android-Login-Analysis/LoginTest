.class public abstract Lde/cketti/safecontentresolver/SafeContentResolver;
.super Ljava/lang/Object;
.source "SafeContentResolver.java"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final disallowedProviders:Lde/cketti/safecontentresolver/DisallowedProviders;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lde/cketti/safecontentresolver/SafeContentResolver;->contentResolver:Landroid/content/ContentResolver;

    .line 99
    new-instance v0, Lde/cketti/safecontentresolver/DisallowedProviders;

    invoke-direct {v0, p1}, Lde/cketti/safecontentresolver/DisallowedProviders;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/cketti/safecontentresolver/SafeContentResolver;->disallowedProviders:Lde/cketti/safecontentresolver/DisallowedProviders;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lde/cketti/safecontentresolver/SafeContentResolver;
    .locals 1

    if-eqz p0, :cond_0

    .line 94
    new-instance v0, Lde/cketti/safecontentresolver/SafeContentResolverApi21;

    invoke-direct {v0, p0}, Lde/cketti/safecontentresolver/SafeContentResolverApi21;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Argument \'context\' must not be null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected abstract getFileUidOrThrow(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 125
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lde/cketti/safecontentresolver/SafeContentResolver;->disallowedProviders:Lde/cketti/safecontentresolver/DisallowedProviders;

    invoke-virtual {v2, v1}, Lde/cketti/safecontentresolver/DisallowedProviders;->isDisallowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "content URI is owned by the application itself. Content provider is not explicitly allowed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v1, "file"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lde/cketti/safecontentresolver/SafeContentResolver;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 138
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 139
    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lde/cketti/safecontentresolver/SafeContentResolver;->getFileUidOrThrow(Ljava/io/FileDescriptor;)I

    move-result p1

    .line 143
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 147
    new-instance p1, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 149
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 151
    :catch_0
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "Unable to create stream"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "File is owned by the application itself"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument \'uri\' must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
