.class Lcom/b44t/messenger/util/concurrent/SettableFuture$1;
.super Ljava/lang/Object;
.source "SettableFuture.java"

# interfaces
.implements Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b44t/messenger/util/concurrent/SettableFuture;->deferTo(Lcom/b44t/messenger/util/concurrent/ListenableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b44t/messenger/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/b44t/messenger/util/concurrent/SettableFuture;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture$1;->this$0:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/concurrent/ExecutionException;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture$1;->this$0:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/b44t/messenger/util/concurrent/SettableFuture$1;->this$0:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
