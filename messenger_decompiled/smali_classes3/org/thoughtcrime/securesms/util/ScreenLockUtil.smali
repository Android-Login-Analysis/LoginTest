.class public Lorg/thoughtcrime/securesms/util/ScreenLockUtil;
.super Ljava/lang/Object;
.source "ScreenLockUtil.java"


# static fields
.field public static final REQUEST_CODE_CONFIRM_CREDENTIALS:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyScreenLock(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "keyguard"

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lorg/thoughtcrime/securesms/util/ScreenLockUtil;->isScreenLockAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isScreenLockAvailable()Z
    .locals 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
