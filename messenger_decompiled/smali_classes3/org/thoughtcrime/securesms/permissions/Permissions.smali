.class public Lorg/thoughtcrime/securesms/permissions/Permissions;
.super Ljava/lang/Object;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;,
        Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;,
        Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;,
        Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;,
        Lorg/thoughtcrime/securesms/permissions/Permissions$SettingsDialogListener;
    }
.end annotation


# static fields
.field private static final OUTSTANDING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lorg/thoughtcrime/securesms/util/LRUCache;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/LRUCache;-><init>(I)V

    sput-object v0, Lorg/thoughtcrime/securesms/permissions/Permissions;->OUTSTANDING:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 36
    sget-object v0, Lorg/thoughtcrime/securesms/permissions/Permissions;->OUTSTANDING:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->filterNotGranted(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lorg/thoughtcrime/securesms/permissions/Permissions;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lorg/thoughtcrime/securesms/permissions/Permissions;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method

.method private static varargs filterNotGranted(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 238
    invoke-static {p1}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/permissions/Permissions$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p0

    .line 240
    invoke-virtual {p0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 241
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static galleryPermissions()[Ljava/lang/String;
    .locals 4

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    aput-object v1, v0, v3

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getApplicationSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 288
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static varargs hasAll(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 2

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 252
    invoke-static {p1}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/permissions/Permissions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->allMatch(Lcom/annimon/stream/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static varargs hasAny(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 2

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 246
    invoke-static {p1}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/permissions/Permissions$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->anyMatch(Lcom/annimon/stream/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$filterNotGranted$0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 239
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$hasAll$2(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 252
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$hasAny$1(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 246
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    .line 261
    new-instance v0, Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static onRequestPermissionsResult(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[I)V
    .locals 1

    .line 257
    new-instance v0, Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;I[Ljava/lang/String;[I)V

    return-void
.end method

.method private static onRequestPermissionsResult(Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;I[Ljava/lang/String;[I)V
    .locals 3

    .line 267
    sget-object v0, Lorg/thoughtcrime/securesms/permissions/Permissions;->OUTSTANDING:Ljava/util/Map;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 275
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 276
    aget v2, p3, v1

    if-eqz v2, :cond_1

    .line 277
    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;->shouldShouldPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p1, p2, p3, v0}, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->onResult([Ljava/lang/String;[I[Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 269
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static varargs requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 0

    .line 230
    invoke-static {p0, p2}, Lorg/thoughtcrime/securesms/permissions/Permissions;->filterNotGranted(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private static varargs requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V
    .locals 1

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/thoughtcrime/securesms/permissions/Permissions;->filterNotGranted(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 2

    .line 53
    new-instance v0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    new-instance v1, Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;-><init>(Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;)V

    return-object v0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 2

    .line 57
    new-instance v0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    new-instance v1, Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;-><init>(Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;)V

    return-object v0
.end method
