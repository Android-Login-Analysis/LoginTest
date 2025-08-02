.class Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;
.super Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/permissions/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentPermissionObject"
.end annotation


# instance fields
.field private final fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;-><init>(Lorg/thoughtcrime/securesms/permissions/Permissions$1;)V

    .line 344
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public varargs hasAll([Ljava/lang/String;)Z
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->hasAll(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs requestPermissions(I[Ljava/lang/String;)V
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;->fragment:Landroidx/fragment/app/Fragment;

    invoke-static {v0, p1, p2}, Lorg/thoughtcrime/securesms/permissions/Permissions;->access$400(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method

.method public shouldShouldPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$FragmentPermissionObject;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
