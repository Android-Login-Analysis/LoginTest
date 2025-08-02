.class public Lcom/b44t/messenger/rpc/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private final blob:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;

.field private final mimetype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/b44t/messenger/rpc/HttpResponse;->blob:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/b44t/messenger/rpc/HttpResponse;->mimetype:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/b44t/messenger/rpc/HttpResponse;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBlob()[B
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/b44t/messenger/rpc/HttpResponse;->blob:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    .line 23
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/b44t/messenger/rpc/HttpResponse;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/b44t/messenger/rpc/HttpResponse;->mimetype:Ljava/lang/String;

    return-object v0
.end method
