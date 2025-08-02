.class public Lorg/thoughtcrime/securesms/WebViewActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "WebViewActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroid/webkit/WebView$FindListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewActivity"


# instance fields
.field private lastQuery:Ljava/lang/String;

.field private lastToast:Landroid/widget/Toast;

.field private searchMenu:Landroid/view/Menu;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->searchMenu:Landroid/view/Menu;

    const-string v1, ""

    .line 196
    iput-object v1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastQuery:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/WebViewActivity;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->searchMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic access$102(Lorg/thoughtcrime/securesms/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic lambda$toggleFakeProxy$0()V
    .locals 2

    .line 46
    sget-object v0, Lorg/thoughtcrime/securesms/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "Set WebView proxy."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$toggleFakeProxy$1()V
    .locals 2

    .line 48
    sget-object v0, Lorg/thoughtcrime/securesms/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "Cleared WebView proxy."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 283
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f1202c1

    const/4 v0, 0x1

    .line 285
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private updateResultCounter(II)V
    .locals 4

    .line 200
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->searchMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    const v1, 0x7f09020c

    .line 201
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v3

    .line 203
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "%d/%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 204
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 206
    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected interceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 0

    const p1, 0x7f0c010e

    .line 57
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f0903df

    .line 63
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 64
    new-instance p2, Lorg/thoughtcrime/securesms/WebViewActivity$1;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/WebViewActivity$1;-><init>(Lorg/thoughtcrime/securesms/WebViewActivity;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 112
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_1

    .line 119
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/webkit/WebSettings;Z)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 145
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onDestroy()V

    .line 146
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public onFindResultReceived(IIZ)V
    .locals 0

    if-eqz p3, :cond_3

    if-lez p2, :cond_0

    .line 233
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/WebViewActivity;->updateResultCounter(II)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 236
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/WebViewActivity;->updateResultCounter(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 238
    iget-object p3, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastQuery:Ljava/lang/String;

    aput-object p3, p1, p2

    const p3, 0x7f1203b8

    invoke-virtual {p0, p3, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 239
    iget-object p3, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastToast:Landroid/widget/Toast;

    if-eqz p3, :cond_2

    .line 240
    invoke-virtual {p3}, Landroid/widget/Toast;->cancel()V

    .line 242
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastToast:Landroid/widget/Toast;

    .line 243
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-direct {p0, p2, p2}, Lorg/thoughtcrime/securesms/WebViewActivity;->updateResultCounter(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 255
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    return v1

    .line 261
    :sswitch_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->findNext(Z)V

    :goto_0
    return v0

    .line 268
    :sswitch_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 269
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    const v2, 0x3b9aca00

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_1

    .line 271
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->findNext(Z)V

    :goto_1
    return v0

    .line 258
    :sswitch_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;->finish()V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f09020d -> :sswitch_1
        0x7f09020e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .line 133
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPause()V

    .line 134
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 151
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 152
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e001a

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09020f

    const/4 v1, 0x1

    .line 157
    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 158
    new-instance v2, Lorg/thoughtcrime/securesms/WebViewActivity$2;

    invoke-direct {v2, p0, p1, v0}, Lorg/thoughtcrime/securesms/WebViewActivity$2;-><init>(Lorg/thoughtcrime/securesms/WebViewActivity;Landroid/view/Menu;Landroid/view/MenuItem;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 173
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 174
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    const v2, 0x7f1203b3

    .line 175
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    const v2, 0x7f09030d

    .line 179
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v2, 0x0

    .line 182
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    sget-object v2, Lorg/thoughtcrime/securesms/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "cannot set up web-view-search: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    return v1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 219
    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastQuery:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->lastToast:Landroid/widget/Toast;

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 139
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onResume()V

    .line 140
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method protected openOnlineUrl(Ljava/lang/String;)Z
    .locals 0

    .line 290
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected setForceDark()V
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    const-string v0, "FORCE_DARK"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 127
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 126
    :goto_0
    invoke-static {v0, v1}, Landroidx/webkit/WebSettingsCompat;->setForceDark(Landroid/webkit/WebSettings;I)V

    :cond_1
    return-void
.end method

.method protected toggleFakeProxy(Z)V
    .locals 3

    const-string v0, "PROXY_OVERRIDE"

    .line 39
    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 42
    new-instance p1, Landroidx/webkit/ProxyConfig$Builder;

    invoke-direct {p1}, Landroidx/webkit/ProxyConfig$Builder;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig$Builder;->removeImplicitRules()Landroidx/webkit/ProxyConfig$Builder;

    move-result-object p1

    const-string v0, "0.0.0.0"

    .line 44
    invoke-virtual {p1, v0}, Landroidx/webkit/ProxyConfig$Builder;->addProxyRule(Ljava/lang/String;)Landroidx/webkit/ProxyConfig$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig$Builder;->build()Landroidx/webkit/ProxyConfig;

    move-result-object p1

    .line 46
    invoke-static {}, Landroidx/webkit/ProxyController;->getInstance()Landroidx/webkit/ProxyController;

    move-result-object v0

    new-instance v1, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/thoughtcrime/securesms/WebViewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/thoughtcrime/securesms/WebViewActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Landroidx/webkit/ProxyController;->setProxyOverride(Landroidx/webkit/ProxyConfig;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 48
    :cond_0
    invoke-static {}, Landroidx/webkit/ProxyController;->getInstance()Landroidx/webkit/ProxyController;

    move-result-object p1

    new-instance v0, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lorg/thoughtcrime/securesms/WebViewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/WebViewActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/webkit/ProxyController;->clearProxyOverride(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 51
    :cond_1
    sget-object v0, Lorg/thoughtcrime/securesms/WebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string p1, "set"

    goto :goto_0

    :cond_2
    const-string p1, "clear"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WebView proxy."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
