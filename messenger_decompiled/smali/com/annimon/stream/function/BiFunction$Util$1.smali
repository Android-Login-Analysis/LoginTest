.class final Lcom/annimon/stream/function/BiFunction$Util$1;
.super Ljava/lang/Object;
.source "BiFunction.java"

# interfaces
.implements Lcom/annimon/stream/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/BiFunction$Util;->andThen(Lcom/annimon/stream/function/BiFunction;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/BiFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiFunction<",
        "TT;TU;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f1:Lcom/annimon/stream/function/BiFunction;

.field final synthetic val$f2:Lcom/annimon/stream/function/Function;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BiFunction;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/annimon/stream/function/BiFunction$Util$1;->val$f2:Lcom/annimon/stream/function/Function;

    iput-object p2, p0, Lcom/annimon/stream/function/BiFunction$Util$1;->val$f1:Lcom/annimon/stream/function/BiFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)TV;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/annimon/stream/function/BiFunction$Util$1;->val$f2:Lcom/annimon/stream/function/Function;

    iget-object v1, p0, Lcom/annimon/stream/function/BiFunction$Util$1;->val$f1:Lcom/annimon/stream/function/BiFunction;

    invoke-interface {v1, p1, p2}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
