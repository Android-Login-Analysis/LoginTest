.class Lcom/b44t/messenger/rpc/Rpc$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "Rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b44t/messenger/rpc/Rpc;->parseVcard(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/b44t/messenger/rpc/VcardContact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b44t/messenger/rpc/Rpc;


# direct methods
.method constructor <init>(Lcom/b44t/messenger/rpc/Rpc;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/b44t/messenger/rpc/Rpc$2;->this$0:Lcom/b44t/messenger/rpc/Rpc;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
