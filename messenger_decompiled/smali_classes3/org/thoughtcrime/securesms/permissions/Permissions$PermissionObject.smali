.class abstract Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;
.super Ljava/lang/Object;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/permissions/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PermissionObject"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/permissions/Permissions$1;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getContext()Landroid/content/Context;
.end method

.method getWindowWidth()I
    .locals 2

    .line 301
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 303
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 306
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method varargs abstract hasAll([Ljava/lang/String;)Z
.end method

.method varargs abstract requestPermissions(I[Ljava/lang/String;)V
.end method

.method abstract shouldShouldPermissionRationale(Ljava/lang/String;)Z
.end method
