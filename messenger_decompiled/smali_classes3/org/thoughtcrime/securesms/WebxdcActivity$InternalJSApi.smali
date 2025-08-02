.class Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;
.super Ljava/lang/Object;
.source "WebxdcActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/WebxdcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalJSApi"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/WebxdcActivity;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusUpdates(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 495
    invoke-static {}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStatusUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$100(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$300(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/b44t/messenger/DcContext;->getWebxdcStatusUpdates(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public leaveRealtimeChannel()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 544
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$500(Lorg/thoughtcrime/securesms/WebxdcActivity;)V

    return-void
.end method

.method public selfAddr()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$100(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selfName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 469
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$100(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const-string v1, "displayname"

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->selfAddr()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public sendRealtimeAdvertisement()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 532
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$100(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    .line 533
    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$300(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v1

    .line 535
    :try_start_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$400(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/b44t/messenger/rpc/Rpc;->sendWebxdcRealtimeAdvertisement(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 537
    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/RpcException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendRealtimeData(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 550
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$100(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    .line 551
    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$300(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v1

    .line 553
    :try_start_0
    const-class v2, [Ljava/lang/Integer;

    invoke-static {p1, v2}, Lorg/thoughtcrime/securesms/util/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    .line 554
    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$400(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p1}, Lcom/b44t/messenger/rpc/Rpc;->sendWebxdcRealtimeData(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 556
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendStatusUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 479
    invoke-static {}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendStatusUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$100(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$300(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/b44t/messenger/DcContext;->sendWebxdcStatusUpdate(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 481
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$100(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$300(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p1

    .line 482
    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    .line 483
    invoke-virtual {p1}, Lcom/b44t/messenger/DcChat;->isContactRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    const v1, 0x7f12003b

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$100(Lorg/thoughtcrime/securesms/WebxdcActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->getLastError()Ljava/lang/String;

    move-result-object p1

    .line 482
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1

    :cond_1
    return p2
.end method

.method public sendToChat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "text"

    const-string v1, "base64"

    .line 502
    invoke-static {}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendToChat"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v1, "name"

    .line 511
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object p1, v3

    move-object v1, p1

    .line 513
    :goto_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 514
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 517
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "provided file is invalid, you need to set both name and base64 content"

    return-object p1

    .line 521
    :cond_2
    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$InternalJSApi;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    const-string v4, "application/octet-stream"

    invoke-static {v2, p1, v4, v1, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->sendToChat(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 524
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 525
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
