.class final Lcom/annimon/stream/function/IndexedConsumer$Util$2;
.super Ljava/lang/Object;
.source "IndexedConsumer.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedConsumer$Util;->accept(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/IndexedConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedConsumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c1:Lcom/annimon/stream/function/IntConsumer;

.field final synthetic val$c2:Lcom/annimon/stream/function/Consumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/Consumer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c1:Lcom/annimon/stream/function/IntConsumer;

    iput-object p2, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c2:Lcom/annimon/stream/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c1:Lcom/annimon/stream/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c2:Lcom/annimon/stream/function/Consumer;

    if-eqz p1, :cond_1

    .line 72
    invoke-interface {p1, p2}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
