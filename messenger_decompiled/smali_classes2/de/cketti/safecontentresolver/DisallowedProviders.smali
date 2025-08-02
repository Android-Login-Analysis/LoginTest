.class Lde/cketti/safecontentresolver/DisallowedProviders;
.super Ljava/lang/Object;
.source "DisallowedProviders.java"


# static fields
.field private static final META_DATA_KEY_ALLOW_INTERNAL_ACCESS:Ljava/lang/String; = "de.cketti.safecontentresolver.ALLOW_INTERNAL_ACCESS"


# instance fields
.field private final context:Landroid/content/Context;

.field private disallowedAuthorities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lde/cketti/safecontentresolver/DisallowedProviders;->context:Landroid/content/Context;

    return-void
.end method

.method private findDisallowedContentProviderAuthorities()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lde/cketti/safecontentresolver/DisallowedProviders;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lde/cketti/safecontentresolver/DisallowedProviders;->getProviderInfo(Landroid/content/Context;)[Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 60
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 61
    invoke-direct {p0, v4}, Lde/cketti/safecontentresolver/DisallowedProviders;->isContentProviderAllowed(Landroid/content/pm/ProviderInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getProviderInfo(Landroid/content/Context;)[Landroid/content/pm/ProviderInfo;
    .locals 2

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x88

    .line 74
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 77
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private isContentProviderAllowed(Landroid/content/pm/ProviderInfo;)Z
    .locals 2

    .line 85
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "de.cketti.safecontentresolver.ALLOW_INTERNAL_ACCESS"

    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method declared-synchronized isDisallowed(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lde/cketti/safecontentresolver/DisallowedProviders;->disallowedAuthorities:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0}, Lde/cketti/safecontentresolver/DisallowedProviders;->findDisallowedContentProviderAuthorities()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lde/cketti/safecontentresolver/DisallowedProviders;->disallowedAuthorities:Ljava/util/Set;

    .line 53
    :cond_0
    iget-object v0, p0, Lde/cketti/safecontentresolver/DisallowedProviders;->disallowedAuthorities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
