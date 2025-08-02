.class final Lcom/annimon/stream/function/IntPredicate$Util$5;
.super Ljava/lang/Object;
.source "IntPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/IntPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IntPredicate$Util;->safe(Lcom/annimon/stream/function/ThrowableIntPredicate;Z)Lcom/annimon/stream/function/IntPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:Z

.field final synthetic val$throwablePredicate:Lcom/annimon/stream/function/ThrowableIntPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableIntPredicate;Z)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/annimon/stream/function/IntPredicate$Util$5;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowableIntPredicate;

    iput-boolean p2, p0, Lcom/annimon/stream/function/IntPredicate$Util$5;->val$resultIfFailed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(I)Z
    .locals 1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/IntPredicate$Util$5;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowableIntPredicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ThrowableIntPredicate;->test(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 119
    :catchall_0
    iget-boolean p1, p0, Lcom/annimon/stream/function/IntPredicate$Util$5;->val$resultIfFailed:Z

    return p1
.end method
