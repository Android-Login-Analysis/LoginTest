.class final Lcom/annimon/stream/function/IndexedPredicate$Util$1;
.super Ljava/lang/Object;
.source "IndexedPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedPredicate$Util;->wrap(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/IndexedPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedPredicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/annimon/stream/function/Predicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Predicate;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedPredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(ILjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedPredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/Predicate;

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
