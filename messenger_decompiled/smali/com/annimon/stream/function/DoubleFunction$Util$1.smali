.class final Lcom/annimon/stream/function/DoubleFunction$Util$1;
.super Ljava/lang/Object;
.source "DoubleFunction.java"

# interfaces
.implements Lcom/annimon/stream/function/DoubleFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/DoubleFunction$Util;->safe(Lcom/annimon/stream/function/ThrowableDoubleFunction;Ljava/lang/Object;)Lcom/annimon/stream/function/DoubleFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/DoubleFunction<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:Ljava/lang/Object;

.field final synthetic val$throwableFunction:Lcom/annimon/stream/function/ThrowableDoubleFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableDoubleFunction;Ljava/lang/Object;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/annimon/stream/function/DoubleFunction$Util$1;->val$throwableFunction:Lcom/annimon/stream/function/ThrowableDoubleFunction;

    iput-object p2, p0, Lcom/annimon/stream/function/DoubleFunction$Util$1;->val$resultIfFailed:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(D)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TR;"
        }
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/DoubleFunction$Util$1;->val$throwableFunction:Lcom/annimon/stream/function/ThrowableDoubleFunction;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/ThrowableDoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 61
    :catchall_0
    iget-object p1, p0, Lcom/annimon/stream/function/DoubleFunction$Util$1;->val$resultIfFailed:Ljava/lang/Object;

    return-object p1
.end method
