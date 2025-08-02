.class public final Lde/cketti/safecontentresolver/SafeContentResolverCompat;
.super Ljava/lang/Object;
.source "SafeContentResolverCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lde/cketti/safecontentresolver/SafeContentResolver;
    .locals 2

    if-eqz p0, :cond_1

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 54
    new-instance v0, Lde/cketti/safecontentresolver/SafeContentResolverApi14;

    invoke-direct {v0, p0}, Lde/cketti/safecontentresolver/SafeContentResolverApi14;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lde/cketti/safecontentresolver/SafeContentResolverApi21;

    invoke-direct {v0, p0}, Lde/cketti/safecontentresolver/SafeContentResolverApi21;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Argument \'context\' must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
