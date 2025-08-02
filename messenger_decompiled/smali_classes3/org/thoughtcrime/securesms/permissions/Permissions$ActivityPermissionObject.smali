.class Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;
.super Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/permissions/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityPermissionObject"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 314
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;-><init>(Lorg/thoughtcrime/securesms/permissions/Permissions$1;)V

    .line 315
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public varargs hasAll([Ljava/lang/String;)Z
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->hasAll(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs requestPermissions(I[Ljava/lang/String;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;->activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lorg/thoughtcrime/securesms/permissions/Permissions;->access$300(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method

.method public shouldShouldPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$ActivityPermissionObject;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
