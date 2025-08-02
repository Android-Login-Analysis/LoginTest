.class public Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
.super Ljava/lang/Object;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/permissions/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionsBuilder"
.end annotation


# instance fields
.field private allGrantedListener:Ljava/lang/Runnable;

.field private alwaysGranted:Z

.field private anyDeniedListener:Ljava/lang/Runnable;

.field private anyPermanentlyDeniedListener:Ljava/lang/Runnable;

.field private anyResultListener:Ljava/lang/Runnable;

.field private condition:Z

.field private ifNecesary:Z

.field private final permissionObject:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;

.field private rationalDialogHeader:[I

.field private rationaleDialogMessage:Ljava/lang/String;

.field private requestedPermissions:[Ljava/lang/String;

.field private someDeniedListener:Lcom/annimon/stream/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private someGrantedListener:Lcom/annimon/stream/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private somePermanentlyDeniedListener:Lcom/annimon/stream/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->condition:Z

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGranted:Z

    .line 86
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->permissionObject:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;

    return-void
.end method

.method private executeNoPermissionsRequest(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V
    .locals 5

    .line 215
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 216
    invoke-virtual {p1, v4, v3}, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->addMapping(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->permissionObject:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->access$100(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Lcom/annimon/stream/Stream;->mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/IntStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/annimon/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 221
    array-length v2, v0

    new-array v2, v2, [Z

    .line 222
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 224
    invoke-virtual {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->onResult([Ljava/lang/String;[I[Z)V

    return-void
.end method

.method private executePermissionsRequest(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V
    .locals 6

    .line 201
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const v1, 0xff9a

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    .line 203
    invoke-static {}, Lorg/thoughtcrime/securesms/permissions/Permissions;->access$000()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 204
    :try_start_0
    invoke-static {}, Lorg/thoughtcrime/securesms/permissions/Permissions;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 208
    iget-object v5, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->permissionObject:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;

    invoke-virtual {v5, v4}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;->shouldShouldPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->addMapping(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->permissionObject:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;->requestPermissions(I[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 205
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private executePermissionsRequestWithRationale(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V
    .locals 4

    .line 192
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->permissionObject:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->rationaleDialogMessage:Ljava/lang/String;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->rationalDialogHeader:[I

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/permissions/RationaleDialog;->createFor(Landroid/content/Context;Ljava/lang/String;[I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V

    const v2, 0x7f1202f1

    .line 193
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V

    const p1, 0x7f1202c6

    .line 194
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->permissionObject:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;

    .line 197
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;->getWindowWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private executePreGrantedPermissionsRequest(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->requestedPermissions:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 185
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v0

    new-array v2, v2, [Z

    invoke-virtual {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->onResult([Ljava/lang/String;[I[Z)V

    return-void
.end method

.method static synthetic lambda$executeNoPermissionsRequest$2(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public alwaysGrantOnSdk30()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 2

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGranted:Z

    :cond_0
    return-object p0
.end method

.method public alwaysGrantOnSdk33()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 2

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGranted:Z

    :cond_0
    return-object p0
.end method

.method public execute()V
    .locals 9

    .line 166
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGranted:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->allGrantedListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 171
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->allGrantedListener:Ljava/lang/Runnable;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->anyDeniedListener:Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->anyPermanentlyDeniedListener:Ljava/lang/Runnable;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->anyResultListener:Ljava/lang/Runnable;

    iget-object v6, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->someGrantedListener:Lcom/annimon/stream/function/Consumer;

    iget-object v7, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->someDeniedListener:Lcom/annimon/stream/function/Consumer;

    iget-object v8, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->somePermanentlyDeniedListener:Lcom/annimon/stream/function/Consumer;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/annimon/stream/function/Consumer;Lcom/annimon/stream/function/Consumer;Lcom/annimon/stream/function/Consumer;)V

    .line 174
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecesary:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->permissionObject:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;->hasAll([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->condition:Z

    if-nez v1, :cond_2

    .line 175
    :cond_1
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->executePreGrantedPermissionsRequest(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->rationaleDialogMessage:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->rationalDialogHeader:[I

    if-eqz v1, :cond_3

    .line 177
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->executePermissionsRequestWithRationale(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V

    goto :goto_0

    .line 179
    :cond_3
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->executePermissionsRequest(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V

    :goto_0
    return-void
.end method

.method public ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecesary:Z

    return-object p0
.end method

.method public ifNecessary(Z)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecesary:Z

    .line 101
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->condition:Z

    return-object p0
.end method

.method synthetic lambda$executePermissionsRequestWithRationale$0$org-thoughtcrime-securesms-permissions-Permissions$PermissionsBuilder(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->executePermissionsRequest(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V

    return-void
.end method

.method synthetic lambda$executePermissionsRequestWithRationale$1$org-thoughtcrime-securesms-permissions-Permissions$PermissionsBuilder(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->executeNoPermissionsRequest(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V

    return-void
.end method

.method public onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->allGrantedListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public onAnyDenied(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->anyDeniedListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public onAnyPermanentlyDenied(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->anyPermanentlyDeniedListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public onAnyResult(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->anyResultListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public onSomeDenied(Lcom/annimon/stream/function/Consumer;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->someDeniedListener:Lcom/annimon/stream/function/Consumer;

    return-object p0
.end method

.method public onSomeGranted(Lcom/annimon/stream/function/Consumer;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->someGrantedListener:Lcom/annimon/stream/function/Consumer;

    return-object p0
.end method

.method public onSomePermanentlyDenied(Lcom/annimon/stream/function/Consumer;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->somePermanentlyDeniedListener:Lcom/annimon/stream/function/Consumer;

    return-object p0
.end method

.method public varargs request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->requestedPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method public withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 2

    .line 126
    new-instance v0, Lorg/thoughtcrime/securesms/permissions/Permissions$SettingsDialogListener;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->permissionObject:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$SettingsDialogListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAnyPermanentlyDenied(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withRationaleDialog(Ljava/lang/String;[I)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;
    .locals 0

    .line 120
    iput-object p2, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->rationalDialogHeader:[I

    .line 121
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->rationaleDialogMessage:Ljava/lang/String;

    return-object p0
.end method
