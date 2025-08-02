.class public Lorg/thoughtcrime/securesms/util/DynamicTheme;
.super Ljava/lang/Object;
.source "DynamicTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/util/DynamicTheme$OverridePendingTransition;
    }
.end annotation


# static fields
.field public static final DARK:Ljava/lang/String; = "dark"

.field public static final LIGHT:Ljava/lang/String; = "light"

.field public static final SYSTEM:Ljava/lang/String; = "system"


# instance fields
.field private currentTheme:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckmarkEmoji(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isDarkTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "\u2705"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "\u2714\ufe0f"

    :goto_0
    return-object p0
.end method

.method private getSelectedTheme(Landroid/app/Activity;)I
    .locals 0

    .line 67
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->getDarkThemeStyle()I

    move-result p1

    return p1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->getLightThemeStyle()I

    move-result p1

    return p1
.end method

.method public static isDarkTheme(Landroid/content/Context;)Z
    .locals 2

    .line 90
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->getTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "system"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->systemThemeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isSystemInDarkTheme(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "dark"

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isSystemInDarkTheme(Landroid/content/Context;)Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setDefaultDayNightMode(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->getTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "system"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    .line 55
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isDarkTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 57
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 59
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :goto_0
    return-void
.end method

.method static systemThemeAvailable()Z
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getDarkThemeStyle()I
    .locals 1

    const v0, 0x7f13025f

    return v0
.end method

.method protected getLightThemeStyle()I
    .locals 1

    const v0, 0x7f130263

    return v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->getSelectedTheme(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/util/DynamicTheme;->currentTheme:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    .line 41
    iget v0, p0, Lorg/thoughtcrime/securesms/util/DynamicTheme;->currentTheme:I

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->getSelectedTheme(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 44
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicTheme$OverridePendingTransition;->invoke(Landroid/app/Activity;)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicTheme$OverridePendingTransition;->invoke(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
