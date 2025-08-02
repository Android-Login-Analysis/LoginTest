.class final Lcom/annimon/stream/function/Predicate$Util$6;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Predicate$Util;->safe(Lcom/annimon/stream/function/ThrowablePredicate;Z)Lcom/annimon/stream/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:Z

.field final synthetic val$throwablePredicate:Lcom/annimon/stream/function/ThrowablePredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowablePredicate;Z)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/annimon/stream/function/Predicate$Util$6;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowablePredicate;

    iput-boolean p2, p0, Lcom/annimon/stream/function/Predicate$Util$6;->val$resultIfFailed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$6;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowablePredicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ThrowablePredicate;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 139
    :catchall_0
    iget-boolean p1, p0, Lcom/annimon/stream/function/Predicate$Util$6;->val$resultIfFailed:Z

    return p1
.end method
