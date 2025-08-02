.class final Lcom/annimon/stream/function/IntConsumer$Util$1;
.super Ljava/lang/Object;
.source "IntConsumer.java"

# interfaces
.implements Lcom/annimon/stream/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IntConsumer$Util;->andThen(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/function/IntConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c1:Lcom/annimon/stream/function/IntConsumer;

.field final synthetic val$c2:Lcom/annimon/stream/function/IntConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/IntConsumer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/annimon/stream/function/IntConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/IntConsumer;

    iput-object p2, p0, Lcom/annimon/stream/function/IntConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/IntConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/annimon/stream/function/IntConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/IntConsumer;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 42
    iget-object v0, p0, Lcom/annimon/stream/function/IntConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/IntConsumer;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    return-void
.end method
