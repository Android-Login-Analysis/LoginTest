.class final Lde/cketti/safecontentresolver/SafeContentResolverApi21;
.super Lde/cketti/safecontentresolver/SafeContentResolver;
.source "SafeContentResolverApi21.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lde/cketti/safecontentresolver/SafeContentResolver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getFileUidOrThrow(Ljava/io/FileDescriptor;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-static {p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/system/StructStat;)I

    move-result p1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
