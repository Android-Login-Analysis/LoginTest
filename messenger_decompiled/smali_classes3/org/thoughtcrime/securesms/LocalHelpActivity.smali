.class public Lorg/thoughtcrime/securesms/LocalHelpActivity;
.super Lorg/thoughtcrime/securesms/WebViewActivity;
.source "LocalHelpActivity.java"


# static fields
.field public static final SECTION_EXTRA:Ljava/lang/String; = "section_extra"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;-><init>()V

    return-void
.end method

.method private assetExists(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 94
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method


# virtual methods
.method protected allowInLockedMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/thoughtcrime/securesms/LocalHelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/LocalHelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-super {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 6

    const-string v0, "_"

    const-string v1, "LANG"

    .line 20
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/WebViewActivity;->onCreate(Landroid/os/Bundle;Z)V

    .line 21
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->setForceDark()V

    .line 22
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const p2, 0x7f120243

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "section_extra"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "help/LANG/help.html"

    const-string v2, "en"

    .line 28
    :try_start_0
    iget-object v3, p0, Lorg/thoughtcrime/securesms/LocalHelpActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->assetExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    goto :goto_1

    .line 33
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->assetExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 36
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->assetExists(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :goto_0
    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/LocalHelpActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file:///android_asset/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    return v0

    :sswitch_0
    const-string p1, "https://github.com/deltachat/deltachat-android/issues"

    .line 72
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->openOnlineUrl(Ljava/lang/String;)Z

    return v1

    :sswitch_1
    const-string p1, "https://delta.chat/gdpr"

    .line 66
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->openOnlineUrl(Ljava/lang/String;)Z

    return v1

    .line 60
    :sswitch_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/LocalHelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    return v1

    :sswitch_3
    const-string p1, "https://delta.chat"

    .line 63
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->openOnlineUrl(Ljava/lang/String;)Z

    return v1

    :sswitch_4
    const-string p1, "https://github.com/deltachat/deltachat-android"

    .line 69
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->openOnlineUrl(Ljava/lang/String;)Z

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900be -> :sswitch_4
        0x7f0901a6 -> :sswitch_3
        0x7f0901b9 -> :sswitch_2
        0x7f0902a2 -> :sswitch_1
        0x7f0902dc -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 51
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/LocalHelpActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
