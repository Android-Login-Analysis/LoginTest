.class final Lcom/annimon/stream/function/BooleanConsumer$Util$1;
.super Ljava/lang/Object;
.source "BooleanConsumer.java"

# interfaces
.implements Lcom/annimon/stream/function/BooleanConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/BooleanConsumer$Util;->andThen(Lcom/annimon/stream/function/BooleanConsumer;Lcom/annimon/stream/function/BooleanConsumer;)Lcom/annimon/stream/function/BooleanConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c1:Lcom/annimon/stream/function/BooleanConsumer;

.field final synthetic val$c2:Lcom/annimon/stream/function/BooleanConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BooleanConsumer;Lcom/annimon/stream/function/BooleanConsumer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/annimon/stream/function/BooleanConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/BooleanConsumer;

    iput-object p2, p0, Lcom/annimon/stream/function/BooleanConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/BooleanConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Z)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/annimon/stream/function/BooleanConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/BooleanConsumer;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/BooleanConsumer;->accept(Z)V

    .line 38
    iget-object v0, p0, Lcom/annimon/stream/function/BooleanConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/BooleanConsumer;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/BooleanConsumer;->accept(Z)V

    return-void
.end method
