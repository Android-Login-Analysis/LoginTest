.class Lde/cketti/safecontentresolver/SafeContentResolverApi14;
.super Lde/cketti/safecontentresolver/SafeContentResolver;
.source "SafeContentResolverApi14.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lde/cketti/safecontentresolver/SafeContentResolver;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Lde/cketti/safecontentresolver/Os;->init(Landroid/content/Context;)V

    return-void
.end method

.method private extractSystemFileDescriptor(Ljava/io/FileDescriptor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 48
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 58
    :catch_0
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "Couldn\'t read system file descriptor"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :catch_1
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "Couldn\'t find field that holds system file descriptor"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected getFileUidOrThrow(Ljava/io/FileDescriptor;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-direct {p0, p1}, Lde/cketti/safecontentresolver/SafeContentResolverApi14;->extractSystemFileDescriptor(Ljava/io/FileDescriptor;)I

    move-result p1

    .line 39
    invoke-static {p1}, Lde/cketti/safecontentresolver/Os;->fstat(I)I

    move-result p1
    :try_end_0
    .catch Lde/cketti/safecontentresolver/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 41
    :goto_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
