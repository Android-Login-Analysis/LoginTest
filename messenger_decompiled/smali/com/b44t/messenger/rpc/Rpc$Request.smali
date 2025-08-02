.class Lcom/b44t/messenger/rpc/Rpc$Request;
.super Ljava/lang/Object;
.source "Rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b44t/messenger/rpc/Rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field public final id:I

.field private final jsonrpc:Ljava/lang/String;

.field public final method:Ljava/lang/String;

.field public final params:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.0"

    .line 142
    iput-object v0, p0, Lcom/b44t/messenger/rpc/Rpc$Request;->jsonrpc:Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/b44t/messenger/rpc/Rpc$Request;->method:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/b44t/messenger/rpc/Rpc$Request;->params:[Ljava/lang/Object;

    .line 150
    iput p3, p0, Lcom/b44t/messenger/rpc/Rpc$Request;->id:I

    return-void
.end method
