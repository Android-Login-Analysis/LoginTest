.class final Lcom/annimon/stream/function/LongPredicate$Util$5;
.super Ljava/lang/Object;
.source "LongPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/LongPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongPredicate$Util;->safe(Lcom/annimon/stream/function/ThrowableLongPredicate;Z)Lcom/annimon/stream/function/LongPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:Z

.field final synthetic val$throwablePredicate:Lcom/annimon/stream/function/ThrowableLongPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableLongPredicate;Z)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowableLongPredicate;

    iput-boolean p2, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$resultIfFailed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(J)Z
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowableLongPredicate;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/ThrowableLongPredicate;->test(J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 122
    :catchall_0
    iget-boolean p1, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$resultIfFailed:Z

    return p1
.end method
