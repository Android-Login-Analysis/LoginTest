.class Lde/cketti/safecontentresolver/Os;
.super Ljava/lang/Object;
.source "Os.java"


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "os-compat"

.field private static context:Landroid/content/Context; = null

.field private static libraryNeedsLoading:Z = true

.field private static loadFailedException:Ljava/lang/UnsupportedOperationException;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fstat(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/cketti/safecontentresolver/ErrnoException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 45
    const-class v0, Lde/cketti/safecontentresolver/Os;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lde/cketti/safecontentresolver/Os;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 50
    sget-boolean v1, Lde/cketti/safecontentresolver/Os;->libraryNeedsLoading:Z

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Lde/cketti/safecontentresolver/Os;->loadLibrary()V

    goto :goto_0

    .line 52
    :cond_0
    sget-object v1, Lde/cketti/safecontentresolver/Os;->loadFailedException:Ljava/lang/UnsupportedOperationException;

    if-nez v1, :cond_1

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {p0}, Lde/cketti/safecontentresolver/Os;->nativeFstat(I)I

    move-result p0

    return p0

    .line 53
    :cond_1
    :try_start_1
    throw v1

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Call Os.init(Context) before attempting to call Os.fstat()"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lde/cketti/safecontentresolver/Os;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 39
    :try_start_0
    sget-object v1, Lde/cketti/safecontentresolver/Os;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lde/cketti/safecontentresolver/Os;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 35
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'context\' must not be null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static loadLibrary()V
    .locals 3

    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lde/cketti/safecontentresolver/Os;->libraryNeedsLoading:Z

    .line 63
    :try_start_0
    sget-object v0, Lde/cketti/safecontentresolver/Os;->context:Landroid/content/Context;

    const-string v1, "os-compat"

    invoke-static {v0, v1}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/getkeepsafe/relinker/MissingLibraryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 65
    :goto_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to load native library os-compat"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lde/cketti/safecontentresolver/Os;->loadFailedException:Ljava/lang/UnsupportedOperationException;

    .line 66
    throw v1
.end method

.method private static native nativeFstat(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/cketti/safecontentresolver/ErrnoException;
        }
    .end annotation
.end method
