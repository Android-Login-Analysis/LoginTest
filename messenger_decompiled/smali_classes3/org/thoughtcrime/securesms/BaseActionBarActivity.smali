.class public abstract Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActionBarActivity.java"


# static fields
.field public static final LOCALE_EXTRA:Ljava/lang/String; = "locale_extra"

.field private static final TAG:Ljava/lang/String; = "BaseActionBarActivity"


# instance fields
.field protected final dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

.field protected dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 30
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    .line 31
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicTheme;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    return-void
.end method

.method private forceOverflowMenu()V
    .locals 4

    const-string v0, "Failed to force overflow menu."

    .line 87
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 88
    const-class v2, Landroid/view/ViewConfiguration;

    const-string v3, "sHasPermanentMenuKey"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    sget-object v1, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :catch_1
    sget-object v1, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private initializeScreenshotSecurity()V
    .locals 2

    .line 77
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isScreenSecurityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected initFragment(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(ITT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method protected initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(ITT;",
            "Ljava/util/Locale;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method protected initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(ITT;",
            "Ljava/util/Locale;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "locale_extra"

    .line 135
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p4, :cond_0

    .line 138
    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 141
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 143
    invoke-virtual {p3, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object p2
.end method

.method public makeSearchMenuVisible(Landroid/view/Menu;Landroid/view/MenuItem;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 102
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 103
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f09020e

    if-eq v3, v4, :cond_3

    const v4, 0x7f09020d

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const v4, 0x7f09020c

    if-ne v3, v4, :cond_1

    .line 107
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_1
    if-ne v2, p2, :cond_2

    goto :goto_2

    :cond_2
    xor-int/lit8 v3, p3, 0x1

    .line 111
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    invoke-interface {v2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->onCreate(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPreCreate()V

    .line 41
    invoke-static {}, Lorg/thoughtcrime/securesms/BaseActivity;->isMenuWorkaroundRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->forceOverflowMenu()V

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 64
    invoke-static {}, Lorg/thoughtcrime/securesms/BaseActivity;->isMenuWorkaroundRequired()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 69
    invoke-static {}, Lorg/thoughtcrime/securesms/BaseActivity;->isMenuWorkaroundRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->openOptionsMenu()V

    const/4 p1, 0x1

    return p1

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPreCreate()V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->onCreate(Landroid/app/Activity;)V

    .line 35
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->onCreate(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 50
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->initializeScreenshotSecurity()V

    .line 51
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->onResume(Landroid/app/Activity;)V

    .line 52
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->onResume(Landroid/app/Activity;)V

    return-void
.end method
