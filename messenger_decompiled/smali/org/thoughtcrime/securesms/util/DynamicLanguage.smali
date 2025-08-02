.class public Lorg/thoughtcrime/securesms/util/DynamicLanguage;
.super Ljava/lang/Object;
.source "DynamicLanguage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/util/DynamicLanguage$OverridePendingTransition;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "zz"

.field private static final TAG:Ljava/lang/String; = "DynamicLanguage"


# instance fields
.field private currentLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivityLocale(Landroid/app/Activity;)Ljava/util/Locale;
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method private static getDefaultLocale()Ljava/util/Locale;
    .locals 3

    .line 82
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->TAG:Ljava/lang/String;

    const-string v2, "could not determine the system locale."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static getLayoutDirection(Landroid/content/Context;)I
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/google/common/base/Optional$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSelectedLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 3

    .line 90
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 92
    aget-object v1, p0, v0

    const-string/jumbo v2, "zz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getDefaultLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 95
    new-instance v1, Ljava/util/Locale;

    aget-object v0, p0, v0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v1, v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 97
    :cond_1
    new-instance v1, Ljava/util/Locale;

    aget-object p0, p0, v0

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static setContextLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 63
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 66
    invoke-static {v0, p1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 68
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentLocale()Ljava/util/Locale;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->currentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    .line 29
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getSelectedLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->currentLocale:Ljava/util/Locale;

    .line 30
    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->setContextLocale(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    .line 34
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getSelectedLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 37
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage$OverridePendingTransition;->invoke(Landroid/app/Activity;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage$OverridePendingTransition;->invoke(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public updateServiceLocale(Landroid/app/Service;)V
    .locals 1

    .line 44
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getSelectedLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->currentLocale:Ljava/util/Locale;

    .line 45
    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->setContextLocale(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method
