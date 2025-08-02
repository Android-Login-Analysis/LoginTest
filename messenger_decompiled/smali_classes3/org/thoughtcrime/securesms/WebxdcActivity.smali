.class public Lorg/thoughtcrime/securesms/WebxdcActivity;
.super Lorg/thoughtcrime/securesms/WebViewActivity;
.source "WebxdcActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;
    }
.end annotation


# static fields
.field private static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field private static final EXTRA_APP_MSG_ID:Ljava/lang/String; = "appMessageId"

.field private static final EXTRA_HIDE_ACTION_BAR:Ljava/lang/String; = "hideActionBar"

.field private static final REQUEST_CODE_FILE_PICKER:I = 0xc8e2

.field private static final TAG:Ljava/lang/String; = "WebxdcActivity"


# instance fields
.field private baseURL:Ljava/lang/String;

.field private dcAppMsg:Lcom/b44t/messenger/DcMsg;

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private hideActionBar:Z

.field private internetAccess:Z

.field private rpc:Lcom/b44t/messenger/rpc/Rpc;

.field private sourceCodeUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;-><init>()V

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->sourceCodeUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->internetAccess:Z

    .line 74
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->hideActionBar:Z

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/WebxdcActivity;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/WebxdcActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcContext;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lorg/thoughtcrime/securesms/WebxdcActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcMsg;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    return-object p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/rpc/Rpc;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    return-object p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/WebxdcActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->leaveRealtimeChannel()V

    return-void
.end method

.method public static addToHomeScreen(Landroid/app/Activity;I)V
    .locals 8

    const-string v0, "icon"

    const-string v1, "xdc-"

    .line 397
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    .line 399
    :try_start_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v3

    .line 400
    invoke-virtual {v3, p1}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v4

    .line 401
    invoke-virtual {v4}, Lcom/b44t/messenger/DcMsg;->getWebxdcInfo()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "document"

    .line 403
    invoke-static {v5, v6}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    .line 404
    invoke-static {v5, v7}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 405
    invoke-static {v5, v0}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/b44t/messenger/DcMsg;->getWebxdcBlob(Ljava/lang/String;)[B

    move-result-object v4

    .line 406
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 407
    invoke-static {v5, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 408
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    new-instance v4, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v6, v7

    :cond_0
    invoke-virtual {v4, v6}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v1

    .line 412
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v0

    .line 413
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getWebxdcIntentWithParentStack(Landroid/content/Context;I)[Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntents([Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    const v0, 0x7f1202dd

    const/4 v1, 0x0

    .line 416
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    .line 417
    invoke-static {p0, p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ErrAddToHomescreen: requestPinShortcut() failed"

    .line 418
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrAddToHomescreen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private callJavaScriptFunction(Ljava/lang/String;)V
    .locals 5

    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 352
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->internetAccess:Z

    const/4 v1, 0x0

    const-string v2, ";"

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "window."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "document.getElementById(\'frame\').contentWindow."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static getWebxdcIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 3

    .line 115
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 116
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.action.VIEW"

    .line 117
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "accountId"

    .line 118
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "appMessageId"

    .line 119
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "hideActionBar"

    .line 120
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method

.method private static getWebxdcIntentWithParentStack(Landroid/content/Context;I)[Landroid/content/Intent;
    .locals 3

    .line 125
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v0

    const-string v2, "chat_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 131
    invoke-static {p0, p1, v1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getWebxdcIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object p1

    .line 133
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    .line 134
    invoke-virtual {p0, v0}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    .line 135
    invoke-virtual {p0, p1}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private leaveRealtimeChannel()V
    .locals 3

    .line 451
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    .line 452
    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v1

    .line 454
    :try_start_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/b44t/messenger/rpc/Rpc;->leaveWebxdcRealtime(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/RpcException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static openMaps(Landroid/content/Context;I)V
    .locals 6

    .line 77
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->initWebxdcIntegration(I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "webxdc/maps.xdc"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "maps"

    const-string v5, ".xdc"

    .line 82
    invoke-static {v0, v4, v5}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getBlobdirFile(Lcom/b44t/messenger/DcContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5}, Lorg/thoughtcrime/securesms/util/Util;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 84
    invoke-virtual {v0, v4}, Lcom/b44t/messenger/DcContext;->setWebxdcIntegration(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->initWebxdcIntegration(I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_0

    const-string p1, "Cannot get maps.xdc, see log for details."

    .line 90
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 94
    :cond_0
    invoke-static {p0, v1, v2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->openWebxdcActivity(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static openWebxdcActivity(Landroid/content/Context;IZ)V
    .locals 3

    .line 102
    invoke-static {}, Lorg/thoughtcrime/securesms/util/Util;->isClickedRecently()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 104
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isDeveloperModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {v2}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Z)V

    .line 107
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getWebxdcIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "At least Android 5.0 (Lollipop) required for Webxdc."

    .line 109
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static openWebxdcActivity(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->openWebxdcActivity(Landroid/content/Context;IZ)V

    return-void
.end method

.method private setScreenMode(Landroid/content/res/Configuration;)V
    .locals 2

    .line 263
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 264
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 265
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 267
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->hideActionBar:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_2

    .line 268
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateTitleAndMenu(Lorg/json/JSONObject;Lcom/b44t/messenger/DcChat;)V
    .locals 5

    const-string v0, "document"

    .line 386
    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 387
    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_code_url"

    .line 388
    invoke-static {p1, v2}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2013 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    iget-object p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->sourceCodeUrl:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 391
    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->sourceCodeUrl:Ljava/lang/String;

    .line 392
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 5

    .line 362
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x848

    if-ne v0, v1, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 364
    sget-object p1, Lorg/thoughtcrime/securesms/WebxdcActivity;->TAG:Ljava/lang/String;

    const-string v0, "handling status update event"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "__webxdcUpdate()"

    .line 365
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->callJavaScriptFunction(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x866

    if-ne v0, v1, :cond_2

    .line 366
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 367
    sget-object v0, Lorg/thoughtcrime/securesms/WebxdcActivity;->TAG:Ljava/lang/String;

    const-string v1, "handling realtime data event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Blob()[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "__webxdcRealtimeData(["

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->callJavaScriptFunction(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_3

    .line 373
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Int()I

    move-result v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 374
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Int()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    .line 375
    new-instance p1, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/WebxdcActivity;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected interceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10

    const-string v0, "unknown mime type for "

    const-string v1, "\""

    .line 289
    sget-object v2, Lorg/thoughtcrime/securesms/WebxdcActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "interceptRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UTF-8"

    if-eqz p1, :cond_c

    .line 295
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/webxdc.js"

    .line 296
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "text/javascript"

    if-eqz v5, :cond_0

    .line 297
    :try_start_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 298
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v6, v3, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_4

    :cond_0
    const-string v5, "/webxdc_bootstrap324567869.html"

    .line 299
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "text/html"

    if-eqz v5, :cond_1

    .line 300
    :try_start_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 301
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v7, v3, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_4

    :cond_1
    const-string v5, "/sandboxed_iframe_rtcpeerconnection_check_5965668501706.html"

    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 303
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 304
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v7, v3, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_4

    .line 306
    :cond_2
    iget-object v5, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v5, v4}, Lcom/b44t/messenger/DcMsg;->getWebxdcBlob(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x0

    if-nez v5, :cond_4

    .line 308
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->internetAccess:Z

    if-eqz p1, :cond_3

    return-object v7

    .line 311
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_4
    invoke-static {v4}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    .line 316
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v8, 0xd49

    const/4 v9, 0x1

    if-eq v4, v8, :cond_6

    const v8, 0x3792a4

    if-eq v4, v8, :cond_5

    goto :goto_0

    :cond_5
    const-string v4, "wasm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const-string v4, "js"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_a

    if-eq v1, v9, :cond_8

    const-string v6, "application/octet-stream"

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const-string v6, "application/wasm"

    goto :goto_2

    :cond_9
    move-object v6, v4

    :cond_a
    :goto_2
    const-string p1, "text/"

    .line 322
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    move-object v7, v3

    .line 323
    :cond_b
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 324
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v6, v7, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    .line 293
    :cond_c
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "no url specified"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Webxdc Request Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 329
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/plain"

    invoke-direct {p1, v1, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v0, p1

    .line 332
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_d

    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->internetAccess:Z

    if-nez p1, :cond_d

    .line 333
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Security-Policy"

    const-string v2, "default-src \'self\'; style-src \'self\' \'unsafe-inline\' blob: ; font-src \'self\' data: blob: ; script-src \'self\' \'unsafe-inline\' \'unsafe-eval\' blob: ; connect-src \'self\' data: blob: ; img-src \'self\' data: blob: ; media-src \'self\' data: blob: ;webrtc \'block\' ; "

    .line 334
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-DNS-Prefetch-Control"

    const-string v2, "off"

    .line 344
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {v0, p1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceResponse;Ljava/util/Map;)V

    :cond_d
    return-object v0
.end method

.method synthetic lambda$handleEvent$2$org-thoughtcrime-securesms-WebxdcActivity(Lorg/json/JSONObject;Lcom/b44t/messenger/DcChat;)V
    .locals 0

    .line 379
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->updateTitleAndMenu(Lorg/json/JSONObject;Lcom/b44t/messenger/DcChat;)V

    return-void
.end method

.method synthetic lambda$handleEvent$3$org-thoughtcrime-securesms-WebxdcActivity()V
    .locals 3

    .line 376
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getWebxdcInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    .line 378
    new-instance v2, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, v1}, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/WebxdcActivity;Lorg/json/JSONObject;Lcom/b44t/messenger/DcChat;)V

    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-WebxdcActivity(Lorg/json/JSONObject;Lcom/b44t/messenger/DcChat;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->updateTitleAndMenu(Lorg/json/JSONObject;Lcom/b44t/messenger/DcChat;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$org-thoughtcrime-securesms-WebxdcActivity(Lorg/json/JSONObject;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 216
    new-instance v1, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, v0}, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/WebxdcActivity;Lorg/json/JSONObject;Lcom/b44t/messenger/DcChat;)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const v0, 0xc8e2

    if-ne p1, v0, :cond_3

    .line 427
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    .line 431
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    .line 432
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_2

    .line 433
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 435
    new-array v3, v0, [Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 437
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v1

    .line 441
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v3

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 444
    :goto_2
    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 445
    iput-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 447
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/WebViewActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 254
    sget-object v0, Lorg/thoughtcrime/securesms/WebxdcActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 257
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->setScreenMode(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 3

    .line 141
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/WebViewActivity;->onCreate(Landroid/os/Bundle;Z)V

    .line 142
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    .line 144
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "hideActionBar"

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->hideActionBar:Z

    .line 149
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->setScreenMode(Landroid/content/res/Configuration;)V

    .line 151
    iget-object p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/thoughtcrime/securesms/WebxdcActivity$1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/WebxdcActivity$1;-><init>(Lorg/thoughtcrime/securesms/WebxdcActivity;)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 168
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p2

    const/16 v1, 0x848

    .line 169
    invoke-virtual {p2, v1, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v1, 0x7d0

    .line 170
    invoke-virtual {p2, v1, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 v1, 0x866

    .line 171
    invoke-virtual {p2, v1, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const-string p2, "appMessageId"

    .line 173
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "accountId"

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 175
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 176
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 177
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchAccount(Landroid/content/Context;I)V

    .line 178
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 181
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1, p2}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    .line 182
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOk()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const-string p1, "Webxdc does no longer exist."

    .line 183
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 184
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->finish()V

    return-void

    .line 192
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "https://acc"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-msg"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".localhost"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->baseURL:Ljava/lang/String;

    .line 194
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getWebxdcInfo()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "internet_access"

    .line 195
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->internetAccess:Z

    xor-int/2addr p2, v1

    .line 197
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->toggleFakeProxy(Z)V

    .line 199
    iget-object p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 200
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 201
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 202
    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->internetAccess:Z

    xor-int/2addr v2, v1

    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 203
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 204
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 205
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 206
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 207
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 208
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 209
    iget-object p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->webView:Landroid/webkit/WebView;

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->internetAccess:Z

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 210
    iget-object p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;-><init>(Lorg/thoughtcrime/securesms/WebxdcActivity;)V

    const-string v1, "InternalJSApi"

    invoke-virtual {p2, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->baseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->internetAccess:Z

    if-eqz v1, :cond_2

    const-string v1, "/index.html"

    goto :goto_0

    :cond_2
    const-string v1, "/webxdc_bootstrap324567869.html"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 214
    new-instance p2, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/WebxdcActivity;Lorg/json/JSONObject;)V

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 225
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->leaveRealtimeChannel()V

    .line 226
    invoke-super {p0}, Lorg/thoughtcrime/securesms/WebViewActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 240
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901ee

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f09035b

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 246
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->sourceCodeUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 243
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->dcAppMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->addToHomeScreen(Landroid/app/Activity;I)V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 232
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 233
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09035b

    .line 234
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->sourceCodeUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v1
.end method

.method protected openOnlineUrl(Ljava/lang/String;)Z
    .locals 3

    .line 280
    sget-object v0, Lorg/thoughtcrime/securesms/WebxdcActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openOnlineUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mailto:"

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "openpgp4fpr:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity;->internetAccess:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 282
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->openOnlineUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
