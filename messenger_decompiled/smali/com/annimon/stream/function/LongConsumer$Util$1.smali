.class final Lcom/annimon/stream/function/LongConsumer$Util$1;
.super Ljava/lang/Object;
.source "LongConsumer.java"

# interfaces
.implements Lcom/annimon/stream/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongConsumer$Util;->andThen(Lcom/annimon/stream/function/LongConsumer;Lcom/annimon/stream/function/LongConsumer;)Lcom/annimon/stream/function/LongConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c1:Lcom/annimon/stream/function/LongConsumer;

.field final synthetic val$c2:Lcom/annimon/stream/function/LongConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/LongConsumer;Lcom/annimon/stream/function/LongConsumer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/annimon/stream/function/LongConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/LongConsumer;

    iput-object p2, p0, Lcom/annimon/stream/function/LongConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/LongConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/annimon/stream/function/LongConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    .line 38
    iget-object v0, p0, Lcom/annimon/stream/function/LongConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    return-void
.end method
