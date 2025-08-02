.class Lcom/b44t/messenger/rpc/Rpc$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "Rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b44t/messenger/rpc/Rpc;->getSystemInfo()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b44t/messenger/rpc/Rpc;


# direct methods
.method constructor <init>(Lcom/b44t/messenger/rpc/Rpc;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/b44t/messenger/rpc/Rpc$1;->this$0:Lcom/b44t/messenger/rpc/Rpc;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
