.class public Lorg/thoughtcrime/securesms/ConnectivityActivity;
.super Lorg/thoughtcrime/securesms/WebViewActivity;
.source "ConnectivityActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;-><init>()V

    return-void
.end method

.method private refresh()V
    .locals 9

    .line 38
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getConnectivityHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "</style>"

    const-string v2, " html { color-scheme: dark light; }</style>"

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 40
    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConnectivityActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConnectivityActivity;->refresh()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/WebViewActivity;->onCreate(Landroid/os/Bundle;Z)V

    .line 18
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConnectivityActivity;->setForceDark()V

    .line 19
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConnectivityActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const p2, 0x7f1200c3

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 20
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConnectivityActivity;->refresh()V

    .line 22
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 p2, 0x834

    invoke-virtual {p1, p2, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 27
    invoke-super {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;->onDestroy()V

    .line 28
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
