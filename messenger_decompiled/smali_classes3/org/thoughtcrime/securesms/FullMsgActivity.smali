.class public Lorg/thoughtcrime/securesms/FullMsgActivity;
.super Lorg/thoughtcrime/securesms/WebViewActivity;
.source "FullMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;
    }
.end annotation


# static fields
.field public static final BLOCK_LOADING_REMOTE:Ljava/lang/String; = "block_loading_remote"

.field public static final MSG_ID_EXTRA:Ljava/lang/String; = "msg_id"


# instance fields
.field private blockLoadingRemote:Z

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private loadRemoteContent:Z

.field private msgId:I

.field private rpc:Lcom/b44t/messenger/rpc/Rpc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadRemoteContent:Z

    return-void
.end method

.method static synthetic lambda$loadHtmlAsync$0(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 6

    .line 89
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/FullMsgActivity;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file://index.html"

    const-string v3, "text/html"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$loadHtmlAsync$1(Ljava/lang/ref/WeakReference;)V
    .locals 3

    .line 83
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/FullMsgActivity;

    .line 84
    iget-object v1, v0, Lorg/thoughtcrime/securesms/FullMsgActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v2, v0, Lorg/thoughtcrime/securesms/FullMsgActivity;->msgId:I

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getMsgHtml(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/FullMsgActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static loadHtmlAsync(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/thoughtcrime/securesms/FullMsgActivity;",
            ">;)V"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onChangeLoadRemoteContent(Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;)V
    .locals 4

    .line 158
    sget-object v0, Lorg/thoughtcrime/securesms/FullMsgActivity$1;->$SwitchMap$org$thoughtcrime$securesms$FullMsgActivity$LoadRemoteContent:[I

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "pref_always_load_remote_content"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadRemoteContent:Z

    .line 173
    invoke-static {p0, v0, v2}, Lorg/thoughtcrime/securesms/util/Prefs;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 166
    :cond_1
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadRemoteContent:Z

    .line 167
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->blockLoadingRemote:Z

    if-nez p1, :cond_3

    .line 168
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 160
    :cond_2
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadRemoteContent:Z

    .line 161
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->blockLoadingRemote:Z

    if-nez p1, :cond_3

    .line 162
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 176
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadRemoteContent:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 177
    iget-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method


# virtual methods
.method protected interceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadRemoteContent:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/b44t/messenger/rpc/Rpc;->getHttpResponse(ILjava/lang/String;)Lcom/b44t/messenger/rpc/HttpResponse;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/b44t/messenger/rpc/HttpResponse;->getMimetype()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    .line 195
    :cond_0
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Lcom/b44t/messenger/rpc/HttpResponse;->getEncoding()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/b44t/messenger/rpc/HttpResponse;->getBlob()[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 188
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "no url specified"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "loading remote content disabled"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    new-instance v1, Landroid/webkit/WebResourceResponse;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "text/plain"

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_0
    return-object v1
.end method

.method synthetic lambda$onOptionsItemSelected$2$org-thoughtcrime-securesms-FullMsgActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 146
    sget-object p1, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->ALWAYS:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/FullMsgActivity;->onChangeLoadRemoteContent(Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$3$org-thoughtcrime-securesms-FullMsgActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 148
    sget-object p1, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->NEVER:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/FullMsgActivity;->onChangeLoadRemoteContent(Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$4$org-thoughtcrime-securesms-FullMsgActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 149
    sget-object p1, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->ONCE:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/FullMsgActivity;->onChangeLoadRemoteContent(Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 2

    .line 47
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/WebViewActivity;->onCreate(Landroid/os/Bundle;Z)V

    .line 49
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/FullMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "block_loading_remote"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->blockLoadingRemote:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 50
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->getAlwaysLoadRemoteContent(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadRemoteContent:Z

    .line 51
    iget-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadRemoteContent:Z

    xor-int/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 56
    iget-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 57
    iget-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 65
    iget-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    iget-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object p2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 67
    iget-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 68
    iget-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 70
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 71
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    .line 72
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/FullMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "msg_id"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->msgId:I

    .line 73
    iget-object p2, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getSubject()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const p1, 0x7f1200a8

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/FullMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 75
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/FullMsgActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadHtmlAsync(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 118
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901b1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 121
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1201d0

    .line 122
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1201d1

    .line 123
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->getCheckmarkEmoji(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->blockLoadingRemote:Z

    const-string v2, ""

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->getAlwaysLoadRemoteContent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 139
    :cond_1
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->loadRemoteContent:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v1, v2

    move-object v2, v0

    move-object v0, v1

    .line 145
    :goto_0
    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->blockLoadingRemote:Z

    if-nez v3, :cond_3

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f12004d

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/FullMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/FullMsgActivity;)V

    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 148
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/FullMsgActivity;->blockLoadingRemote:Z

    if-eqz v2, :cond_4

    const v2, 0x7f1202bf

    goto :goto_1

    :cond_4
    const v2, 0x7f1202b9

    :goto_1
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/FullMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/FullMsgActivity;)V

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1202dc

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/FullMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/FullMsgActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 103
    invoke-super {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;->onPause()V

    .line 104
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/FullMsgActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f01001e

    const v1, 0x7f010032

    .line 105
    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/FullMsgActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onPreCreate()V
    .locals 1

    .line 41
    invoke-super {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;->onPreCreate()V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/FullMsgActivity;->toggleFakeProxy(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 112
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/FullMsgActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
