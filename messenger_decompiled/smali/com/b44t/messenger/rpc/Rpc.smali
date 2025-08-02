.class public Lcom/b44t/messenger/rpc/Rpc;
.super Ljava/lang/Object;
.source "Rpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b44t/messenger/rpc/Rpc$Response;,
        Lcom/b44t/messenger/rpc/Rpc$Request;
    }
.end annotation


# instance fields
.field private final dcJsonrpcInstance:Lcom/b44t/messenger/DcJsonrpcInstance;

.field private final gson:Lcom/google/gson/Gson;

.field private final requestFutures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/b44t/messenger/util/concurrent/SettableFuture<",
            "Lcom/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private requestId:I


# direct methods
.method public constructor <init>(Lcom/b44t/messenger/DcJsonrpcInstance;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/b44t/messenger/rpc/Rpc;->requestFutures:Ljava/util/Map;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/b44t/messenger/rpc/Rpc;->requestId:I

    .line 20
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    .line 23
    iput-object p1, p0, Lcom/b44t/messenger/rpc/Rpc;->dcJsonrpcInstance:Lcom/b44t/messenger/DcJsonrpcInstance;

    return-void
.end method

.method private processResponse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Rpc;->dcJsonrpcInstance:Lcom/b44t/messenger/DcJsonrpcInstance;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcJsonrpcInstance;->getNextResponse()Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/b44t/messenger/rpc/Rpc$Response;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b44t/messenger/rpc/Rpc$Response;

    .line 30
    iget v2, v1, Lcom/b44t/messenger/rpc/Rpc$Response;->id:I

    if-nez v2, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/b44t/messenger/rpc/Rpc;->requestFutures:Ljava/util/Map;

    iget v3, v1, Lcom/b44t/messenger/rpc/Rpc$Response;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    if-nez v2, :cond_1

    return-void

    .line 39
    :cond_1
    iget-object v3, v1, Lcom/b44t/messenger/rpc/Rpc$Response;->error:Lcom/google/gson/JsonElement;

    if-eqz v3, :cond_2

    .line 40
    new-instance v0, Lcom/b44t/messenger/rpc/RpcException;

    iget-object v1, v1, Lcom/b44t/messenger/rpc/Rpc$Response;->error:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b44t/messenger/rpc/RpcException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 41
    :cond_2
    iget-object v3, v1, Lcom/b44t/messenger/rpc/Rpc$Response;->result:Lcom/google/gson/JsonElement;

    if-eqz v3, :cond_3

    .line 42
    iget-object v0, v1, Lcom/b44t/messenger/rpc/Rpc$Response;->result:Lcom/google/gson/JsonElement;

    invoke-virtual {v2, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_3
    new-instance v1, Lcom/b44t/messenger/rpc/RpcException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got JSON-RPC response without result or error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/b44t/messenger/rpc/RpcException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addAccount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "add_account"

    invoke-virtual {p0, v2, v1}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/b44t/messenger/util/concurrent/SettableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/b44t/messenger/util/concurrent/SettableFuture<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget v0, p0, Lcom/b44t/messenger/rpc/Rpc;->requestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b44t/messenger/rpc/Rpc;->requestId:I

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v1, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/b44t/messenger/rpc/Rpc$Request;

    invoke-direct {v2, p1, p2, v0}, Lcom/b44t/messenger/rpc/Rpc$Request;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {p2}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/b44t/messenger/rpc/Rpc;->requestFutures:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Rpc;->dcJsonrpcInstance:Lcom/b44t/messenger/DcJsonrpcInstance;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcJsonrpcInstance;->request(Ljava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 64
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public draftSelfReport(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "draft_self_report"

    invoke-virtual {p0, p1, v0}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    return p1
.end method

.method public getHttpResponse(ILjava/lang/String;)Lcom/b44t/messenger/rpc/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "get_http_response"

    invoke-virtual {p0, p1, v1}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class p2, Lcom/b44t/messenger/rpc/HttpResponse;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b44t/messenger/rpc/HttpResponse;

    return-object p1
.end method

.method public getMsgReactions(II)Lcom/b44t/messenger/rpc/Reactions;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "get_message_reactions"

    invoke-virtual {p0, p1, v1}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class p2, Lcom/b44t/messenger/rpc/Reactions;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b44t/messenger/rpc/Reactions;

    return-object p1
.end method

.method public varargs getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    .line 74
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/b44t/messenger/rpc/Rpc;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/b44t/messenger/util/concurrent/SettableFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Lcom/b44t/messenger/rpc/RpcException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/b44t/messenger/rpc/RpcException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/b44t/messenger/rpc/RpcException;

    throw p1
.end method

.method public getSystemInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/b44t/messenger/rpc/Rpc$1;

    invoke-direct {v0, p0}, Lcom/b44t/messenger/rpc/Rpc$1;-><init>(Lcom/b44t/messenger/rpc/Rpc;)V

    .line 96
    iget-object v1, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "get_system_info"

    invoke-virtual {p0, v3, v2}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public importVcard(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/b44t/messenger/rpc/Rpc$3;

    invoke-direct {v0, p0}, Lcom/b44t/messenger/rpc/Rpc$3;-><init>(Lcom/b44t/messenger/rpc/Rpc;)V

    .line 110
    iget-object v1, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "import_vcard"

    invoke-virtual {p0, p1, v2}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method synthetic lambda$start$0$com-b44t-messenger-rpc-Rpc()V
    .locals 1

    .line 52
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/b44t/messenger/rpc/Rpc;->processResponse()V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public leaveWebxdcRealtime(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "leave_webxdc_realtime"

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    return-void
.end method

.method public varargs makeVcard(I[I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "make_vcard"

    invoke-virtual {p0, p1, v1}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public parseVcard(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/b44t/messenger/rpc/VcardContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/b44t/messenger/rpc/Rpc$2;

    invoke-direct {v0, p0}, Lcom/b44t/messenger/rpc/Rpc$2;-><init>(Lcom/b44t/messenger/rpc/Rpc;)V

    .line 101
    iget-object v1, p0, Lcom/b44t/messenger/rpc/Rpc;->gson:Lcom/google/gson/Gson;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "parse_vcard"

    invoke-virtual {p0, p1, v2}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public varargs sendReaction(II[Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "send_reaction"

    invoke-virtual {p0, p1, v0}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    return p1
.end method

.method public sendWebxdcRealtimeAdvertisement(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "send_webxdc_realtime_advertisement"

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    return-void
.end method

.method public sendWebxdcRealtimeData(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "send_webxdc_realtime_data"

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    return-void
.end method

.method public start()V
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b44t/messenger/rpc/Rpc$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/b44t/messenger/rpc/Rpc$$ExternalSyntheticLambda0;-><init>(Lcom/b44t/messenger/rpc/Rpc;)V

    const-string v2, "jsonrpcThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startIO()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start_io_for_all_accounts"

    .line 87
    invoke-virtual {p0, v1, v0}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    return-void
.end method

.method public stopIO()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b44t/messenger/rpc/RpcException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stop_io_for_all_accounts"

    .line 91
    invoke-virtual {p0, v1, v0}, Lcom/b44t/messenger/rpc/Rpc;->getResult(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    return-void
.end method
