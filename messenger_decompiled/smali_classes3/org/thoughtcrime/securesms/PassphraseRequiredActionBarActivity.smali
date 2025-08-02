.class public abstract Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.super Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.source "PassphraseRequiredActionBarActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PassphraseRequiredActionBarActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowInLockedMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 15
    sget-object v0, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->allowInLockedMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 18
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0, p1, v1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onCreate(Landroid/os/Bundle;Z)V

    return-void

    .line 23
    :cond_0
    invoke-static {}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->isForegroundTaskStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->finish()V

    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/thoughtcrime/securesms/WelcomeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->finish()V

    goto :goto_0

    .line 38
    :cond_2
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 42
    invoke-virtual {p0, p1, v1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onCreate(Landroid/os/Bundle;Z)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 0

    return-void
.end method
