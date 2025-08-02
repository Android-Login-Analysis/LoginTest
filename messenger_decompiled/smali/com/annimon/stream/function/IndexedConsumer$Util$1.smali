.class final Lcom/annimon/stream/function/IndexedConsumer$Util$1;
.super Ljava/lang/Object;
.source "IndexedConsumer.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedConsumer$Util;->wrap(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/IndexedConsumer;
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
.field final synthetic val$consumer:Lcom/annimon/stream/function/Consumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Consumer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$1;->val$consumer:Lcom/annimon/stream/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$1;->val$consumer:Lcom/annimon/stream/function/Consumer;

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
